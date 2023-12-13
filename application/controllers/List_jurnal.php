<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class List_jurnal extends CI_Controller {

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
		$this->load->view('list_jurnal');
		$this->load->view('template/footer');
	}

	function getSource(){
		$q = $this->db->query('SELECT * FROM `transaction` GROUP BY source');
		$date = "<option value=''>Pilih</option>";
		foreach ($q->result() as $key) {
			$date .= "<option value='".$key->source."'>".$key->source."</option>";
		}
		echo $date;
	}

	function getAccount(){
		$q = $this->db->query('SELECT * FROM `mst_account`');
		$date = "<option value=''>Pilih</option>";
		foreach ($q->result() as $key) {
			$date .= "<option value='".$key->account_code."'>".$key->account_name." (".$key->account_code." )</option>";
		}
		echo $date;
	}

	public function load_data(){
		$first_date = $this->input->post('filter_first_date');
		$last_date = $this->input->post('filter_last_date');
		$where = '';
		if ($this->input->post('filter_source')) {
			$where .= 'AND source= "'.$this->input->post('filter_source').'"';
		}
		if ($this->input->post('filter_account_code')) {
			$where .= 'AND a.account_code= "'.$this->input->post('filter_account_code').'"';
		}
		$query = $this->db->query(" 
			SELECT a.*,account_name FROM `transaction` a
			JOIN mst_account b ON a.account_code = b.account_code
			WHERE st='Aktif' AND a.date  BETWEEN '$first_date' AND '$last_date' $where 
			ORDER BY a.date ASC")->result();
		
		$data = array();
		$no=1;
		foreach ($query as $hasil) {
			$row = array();
			$row [] = $no++;
			$row [] = $hasil->ntrans;
			$row [] = $hasil->date;
			$row [] = $hasil->account_code;
			$row [] = $hasil->account_name;
			$row [] = $hasil->note;
			$row [] = number_format($hasil->debet);
			$row [] = number_format($hasil->kredit);

			$data[] = $row;
		}
		echo json_encode(array("data"=>$data));

	}
	
}
