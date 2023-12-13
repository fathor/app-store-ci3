<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Closing extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->library('form_validation');

		if($this->session->userdata('status') != "login"){
			redirect(base_url("login"));
		}
	}
	public function index()
	{
		$session['id_reg'] = $this->session->userdata('id_reg');
		$session['id_user'] = $this->session->userdata('id_user');
		$session['name_user'] = $this->session->userdata('name_user');
		$session['name_store'] = $this->session->userdata('name_store');

		$this->load->view('template/header');
		$this->load->view('template/sidebar');
		$this->load->view('closing');
		$this->load->view('template/footer');
	}

	public function load_table_data(){
		$data = array();
		$sql  ="SELECT * FROM closing_tmp";
		$query = $this->db->query($sql)->result();
		$data = array();
		foreach ($query as $hasil) {
			$row = array();
			$row [] = $hasil->account_code;
			$row [] = $hasil->account_name;
			$row [] = number_format($hasil->debet);
			$row [] = number_format($hasil->kredit);
			$row [] = number_format($hasil->debet1);
			$row [] = number_format($hasil->kredit1);
			$row [] = number_format($hasil->debet2);
			$row [] = number_format($hasil->kredit2);
			$row [] = number_format($hasil->cost);
			$row [] = number_format($hasil->revenue);
			$row [] = number_format($hasil->aktiva);
			$row [] = number_format($hasil->pasiva);
			$data[] = $row;
		}
		echo json_encode(array("data"=>$data));
	}
	function proses(){
		$period1 = $this->db->query('SELECT * FROM closing_period WHERE st = 1 ORDER BY id DESC LIMIT 1')->row();
		$l_m = $period1->month;
		$l_y = $period1->year;

		$period2 = $this->db->query('SELECT * FROM closing_period WHERE st = 0 ORDER BY id  ASC LIMIT 1')->row();
		$p_m = $period2->month;
		$p_y = $period2->year;
		$p_tgl = $p_m.'-'.$p_y;


		$this->db->query("DELETE FROM closing_tmp ");
		$this->db->query("
			INSERT INTO closing_tmp (account_code,account_name,debet,kredit,debet1,kredit1,month,year)
			SELECT
				a.account_code,
				a.account_name,
				COALESCE(b.assets,0) DEBET,
				COALESCE(b.liability,0) KREDIT,
				COALESCE(c.D ,0) DEBET1,
				COALESCE(c.K ,0) KREDIT1,
				'$p_m' AS month,
				'$p_y' AS year
				FROM mst_account a
				LEFT JOIN (SELECT account_code,assets,liability FROM closing_saldo WHERE month='$l_m' AND year='$l_y')b ON b.account_code = a.account_code
				LEFT JOIN 
				(
					SELECT SUM(debet) D,SUM(kredit) K,account_code
					FROM`transaction`
					WHERE ST = 'AKTIF' AND MONTH(date) = '$p_m' AND YEAR(date) = '$p_y' GROUP BY account_code
				) c ON c.account_code = a.account_code"
		);

		$this->db->query("UPDATE closing_tmp SET debet2=(debet+debet1-kredit1) WHERE (account_code LIKE '1%' OR account_code LIKE '5%' OR account_code LIKE '6%') ");
		$this->db->query("UPDATE closing_tmp SET kredit2=(kredit+kredit1-debet1) WHERE (account_code LIKE '2%' OR account_code LIKE '3%' OR account_code LIKE '4%') ");


		$this->db->query("UPDATE closing_tmp SET cost=debet2 WHERE (account_code LIKE '5%' OR account_code LIKE '6%') ");
		$this->db->query("UPDATE closing_tmp SET revenue=kredit2 WHERE (account_code LIKE '4%') ");
		$this->db->query("UPDATE closing_tmp SET aktiva=debet2 WHERE (account_code LIKE '1%') ");
		$this->db->query("UPDATE closing_tmp SET pasiva=kredit2 WHERE (account_code LIKE '2%' OR account_code LIKE '3%') ");


		$hitung_lr =$this->db->query("SELECT SUM(revenue-cost) AS LABARUGI FROM closing_tmp")->row();
		$labarugi = $hitung_lr->LABARUGI;
		$b = $this->db->get('closing_lr')->row();
		$c =$this->db->query("SELECT * FROM closing_tmp WHERE account_code='".$b->account_code."'")->num_rows();
		$this->db->query("UPDATE closing_tmp SET pasiva=pasiva+'$labarugi' WHERE account_code='".$b->account_code."'");
	}

	function close_book(){
		$period2 = $this->db->query('SELECT * FROM closing_period WHERE st = 0 ORDER BY ID  ASC LIMIT 1')->row();
		$p_m = $period2->month;
		$p_y = $period2->year;

		$data = $this->db->get('closing_tmp')->result();
		$this->db->query("DELETE FROM closing_saldo WHERE month = '".$p_m."' AND year = '".$p_y."'");

		if ($p_m == '12') {
			$debet ='aktiva';
			$kredit ='pasiva';
		}else{
			$debet ='debet2';
			$kredit ='kredit2';
		}
		$this->db->query("
			INSERT INTO closing_saldo (account_code,assets,liability,month,year)
			SELECT
				account_code,
				COALESCE($debet,0) assets,
				COALESCE($kredit,0) liability,
				'$p_m' AS month,
				'$p_y' AS year
			FROM closing_tmp");

		foreach ($data as $d) {
			$report = array(
				"account_code" => $d->account_code,
				"assets"       => $d->aktiva,
				"cost"       => $d->cost,
				"liability"      => $d->pasiva,
				"revenue"      => $d->revenue,
				"month"        => $p_m,
				"year"         => $p_y
			);
			$this->db->insert('closing_report',$report);
		}
		$history = array(
			'date_closing' => date('Y-m-d H:i:s'),
			'note'       => 'Closing laporan keuangan periode '.$p_m.' - '.$p_y.'',
			'entry_user' => $this->session->userdata('id_user'),
			'entry_date' => date('Y-m-d H:i:s')
		);
		$this->db->insert('closing_history',$history);
		
		$this->db->where('month',$p_m);
		$this->db->where('year',$p_y);
		$this->db->update('closing_period',array("st"=>1));

		if($this->db->affected_rows()){
			echo json_encode(array("status"=>true));
		}else{
			echo json_encode(array("status"=>true));
		}
	}
}
