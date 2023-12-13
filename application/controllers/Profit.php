<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profit extends CI_Controller {

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
		$this->load->view('profit');
		$this->load->view('template/footer');
	}

	function getProduct(){
		$q = $this->db->query('SELECT * FROM `mst_product`');
		$data = "<option value=''>-pilih-</option>";
		foreach ($q->result() as $key) {
			$data .= "<option value='".$key->id."'>".$key->product_name."</option>";
		}
		echo $data;
	}

	function getLocation(){
		$q = $this->db->query('SELECT * FROM `mst_location`');
		$data = "<option value=''>-pilih-</option>";
		foreach ($q->result() as $key) {
			$data .= "<option value='".$key->id."'>".$key->unit_name."</option>";
		}
		echo $data;
	}

	function getTotal(){
		$first_date = $this->input->post('first_date');
		$last_date = $this->input->post('last_date');
		$product = $this->input->post('product');
		$location = $this->input->post('location');
		$where='';
		if ($product != '') {
			$where .= 'AND b.product_id= "'.$product.'"';
		}
		if ($location != '') {
			$where .= 'AND b.location_id= "'.$location.'"';
		}
		$query = $this->db->query("
			SELECT a.*,b.*,product_name,unit_name FROM dt_sales a
			LEFT JOIN dt_stock b ON a.stock_id = b.id
			LEFT JOIN mst_product c ON b.product_id = c.id
			LEFT JOIN mst_location d ON b.location_id = d.id
			WHERE a.date  BETWEEN '$first_date' AND '$last_date' $where")->result();

		$total=0;
		foreach ($query as $a) {
			$total += (($a->amount_sales * $a->qty)-($a->amount * $a->qty));
		}
		$data['total'] = number_format($total);
		echo json_encode($data);
	}

	public function load_data(){
		$first_date = $this->input->post('filter_first_date');
		$last_date = $this->input->post('filter_last_date');
		$where = '';
		if ($this->input->post('filter_product')) {
			$where .= 'AND b.product_id= "'.$this->input->post('filter_product').'"';
		}
		if ($this->input->post('filter_location')) {
			$where .= 'AND b.location_id= "'.$this->input->post('filter_location').'"';
		}
		$query = $this->db->query(" 
			SELECT a.*,b.*,product_name,unit_name FROM dt_sales a
			LEFT JOIN dt_stock b ON a.stock_id = b.id
			LEFT JOIN mst_product c ON b.product_id = c.id
			LEFT JOIN mst_location d ON b.location_id = d.id
			WHERE a.date  BETWEEN '$first_date' AND '$last_date' $where ")->result();
		
		$data = array();
		$no=1;
		foreach ($query as $hasil) {
			$row = array();
			$row [] = $no++;
			$row [] = $hasil->product_name;
			$row [] = $hasil->unit_name;
			$row [] = number_format($hasil->amount);
			$row [] = number_format($hasil->amount_sales);
			$row [] = number_format($hasil->qty);
			$row [] = number_format($hasil->amount_sales * $hasil->qty);
			$row [] = number_format(($hasil->amount_sales * $hasil->qty)-($hasil->amount * $hasil->qty));

			$data[] = $row;
		}
		echo json_encode(array("data"=>$data));

	}
	
}
