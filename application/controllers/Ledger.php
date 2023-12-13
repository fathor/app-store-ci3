<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ledger extends CI_Controller {

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
		$this->load->view('ledger');
		$this->load->view('template/footer');
	}

	function getAccount(){
		$q = $this->db->query('SELECT * FROM `mst_account`');
		$date = "<option value=''>Pilih</option>";
		foreach ($q->result() as $key) {
			$date .= "<option value='".$key->account_code."'>".$key->account_name." (".$key->account_code." )</option>";
		}
		echo $date;
	}

	function getBalanceEarly(){
		$first_date = $this->input->post('first_date');
		$last_date = $this->input->post('last_date');
		$account = $this->input->post('filter_account_code');

		$monthSaldo = date('Y-m',strtotime($first_date.'-1 months'));
		$getBalance = $this->db->query("SELECT *,CONCAT(`year`,'-',`month`) PERIODE FROM `closing_saldo` WHERE account_code='$account' AND CONCAT(`year`,'-',`month`) <= '$monthSaldo' ORDER BY year DESC, month DESC LIMIT 1")->row();

		$dt_first = date('Y-m-d', strtotime($getBalance->year.'-'.$getBalance->month.'-01'. ' + 1 months'));
		$dt_last = date('Y-m-d', strtotime($first_date. ' - 1 days'));

		$balanceEarly = 0;
		if ($getBalance) {
			$balanceEarly += $getBalance->assets +  $getBalance->liability;
			$balanceTrx = $this->db->query("SELECT SUM(a.debet) AS debet, SUM(a.kredit) AS kredit FROM transaction a WHERE DEBET + KREDIT !=0 AND account_code = '".$account."' AND date BETWEEN '".$dt_first."'AND '".$dt_last."' AND ST='Aktif' GROUP BY ntrans")->result();
			foreach ($balanceTrx as $bl) {
				$balanceEarly += (round($bl->debet,2)-round($bl->kredit,2));
			}
		}
		$data['balanceEarly'] = number_format($balanceEarly);
		echo json_encode($data);
	}

	function getBalanceEnd(){
		$first_date = $this->input->post('first_date');
		$last_date = $this->input->post('last_date');
		$account = $this->input->post('filter_account_code');

		$monthSaldo = date('Y-m',strtotime($first_date.'-1 months'));
		$getBalance = $this->db->query("SELECT *,CONCAT(`year`,'-',`month`) PERIODE FROM `closing_saldo` WHERE account_code='$account' AND CONCAT(`year`,'-',`month`) <= '$monthSaldo' ORDER BY year DESC, month DESC LIMIT 1")->row();

		$dt_first = date('Y-m-d', strtotime($getBalance->year.'-'.$getBalance->month.'-01'. ' + 1 months'));
		$dt_last = date('Y-m-d', strtotime($first_date. ' - 1 days'));

		$balanceEarly = 0;
		if ($getBalance) {
			$balanceEarly += $getBalance->assets +  $getBalance->liability;
			$balanceTrx = $this->db->query("SELECT SUM(a.debet) AS debet, SUM(a.kredit) AS kredit FROM transaction a WHERE DEBET + KREDIT !=0 AND account_code = '".$account."' AND date BETWEEN '".$dt_first."'AND '".$dt_last."' AND ST='Aktif' GROUP BY ntrans")->result();
			foreach ($balanceTrx as $bl) {
				$balanceEarly += (round($bl->debet,2)-round($bl->kredit,2));
			}
		}

		$transaction = $this->db->query(" 
			SELECT SUM(debet) db, SUM(kredit) kd FROM `transaction` a 
			WHERE st='Aktif' AND `date`  BETWEEN '$first_date' AND '$last_date' AND account_code ='$account' ")->row();

		$balanceEnd = $balanceEarly + $transaction->db - $transaction->kd;

		$data['balanceEnd'] = number_format($balanceEnd);
		echo json_encode($data);
	}

	public function load_data(){
		$first_date = $this->input->post('filter_first_date');
		$last_date = $this->input->post('filter_last_date');
		$account = $this->input->post('filter_account_code');
		$where = '';
		if ($account) {
			$where .= 'AND a.account_code= "'.$this->input->post('filter_account_code').'"';
		}else{
			$where .= 'AND a.account_code= "0000"';
		}
		$query = $this->db->query(" 
			SELECT a.*,account_name FROM `transaction` a
			JOIN mst_account b ON a.account_code = b.account_code
			WHERE st='Aktif' AND a.date  BETWEEN '$first_date' AND '$last_date' $where 
			ORDER BY a.date ASC")->result();

		$monthSaldo = date('Y-m',strtotime($first_date.'-1 months'));
		$getBalance = $this->db->query("SELECT *,CONCAT(`year`,'-',`month`) PERIODE FROM `closing_saldo` WHERE account_code='$account' AND CONCAT(`year`,'-',`month`) <= '$monthSaldo' ORDER BY year DESC, month DESC LIMIT 1")->row();

		$dt_first = date('Y-m-d', strtotime($getBalance->year.'-'.$getBalance->month.'-01'. ' + 1 months'));
		$dt_last = date('Y-m-d', strtotime($first_date. ' - 1 days'));

		$balanceEarly = 0;
		if ($getBalance) {
			$balanceEarly += $getBalance->assets +  $getBalance->liability;
			$balanceTrx = $this->db->query("SELECT SUM(a.debet) AS debet, SUM(a.kredit) AS kredit FROM transaction a WHERE DEBET + KREDIT !=0 AND account_code = '".$account."' AND date BETWEEN '".$dt_first."'AND '".$dt_last."' AND ST='Aktif' GROUP BY ntrans")->result();
			foreach ($balanceTrx as $bl) {
				$balanceEarly += (round($bl->debet,2)-round($bl->kredit,2));
			}
		}
		
		$data = array();
		$no=1;
		$currentBalance= $balanceEarly;
		foreach ($query as $hasil) {
			if ($hasil->account_code == '10101') {
				$currentBalance = ($hasil->debet <= 0 ? -1*$hasil->kredit:$hasil->debet) + $currentBalance;
			}else{
				$currentBalance = ($hasil->kredit <= 0 ? -1*$hasil->debet:$hasil->kredit) + $currentBalance;
			}
			$row = array();
			$row [] = $no++;
			$row [] = $hasil->ntrans;
			$row [] = $hasil->date;
			$row [] = $hasil->account_name.' ('.$hasil->account_code.')';
			$row [] = $hasil->note;
			$row [] = number_format($hasil->debet);
			$row [] = number_format($hasil->kredit);
			$row [] = number_format($currentBalance);

			$data[] = $row;
		}
		echo json_encode(array("data"=>$data));

	}
	
}
