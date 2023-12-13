<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends CI_Controller {

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
		$this->load->view('product');
		$this->load->view('template/footer');
	}

	function getCategory(){
		$q = $this->db->query('SELECT * FROM `mst_category_product`');
		$date = "<option value=''>All</option>";
		foreach ($q->result() as $key) {
			$date .= "<option value='".$key->id."'>".$key->category_name."</option>";
		}
		echo $date;
	}

	function getAccReceived(){
		$q = $this->db->query('SELECT * FROM `mst_account` WHERE account_code LIKE "401%" ');
		$date = "<option value=''>All</option>";
		foreach ($q->result() as $key) {
			$date .= "<option value='".$key->account_code."'>".$key->account_name." (".$key->account_code." )</option>";
		}
		echo $date;
	}

	function getAccCogs(){
		$q = $this->db->query('SELECT * FROM `mst_account` WHERE account_code LIKE "501%"');
		$date = "<option value=''>All</option>";
		foreach ($q->result() as $key) {
			$date .= "<option value='".$key->account_code."'>".$key->account_name." (".$key->account_code." )</option>";
		}
		echo $date;
	}
	function getAccInventory(){
		$q = $this->db->query('SELECT * FROM `mst_account` WHERE account_code LIKE "102%"');
		$date = "<option value=''>All</option>";
		foreach ($q->result() as $key) {
			$date .= "<option value='".$key->account_code."'>".$key->account_name." (".$key->account_code." )</option>";
		}
		echo $date;
	}

	public function load_data(){
		$query = $this->db->query("
			SELECT a.*,category_name,c.account_name AccStock,d.account_name AccReceived, e.account_name AccCogs
			FROM mst_product a 
			INNER JOIN mst_category_product b ON a.category_id =b.id
			INNER JOIN mst_account c ON a.account_stock =c.account_code
			INNER JOIN mst_account d ON a.account_received =d.account_code
			INNER JOIN mst_account e ON a.account_cogs =e.account_code
			ORDER BY id DESC");	
		$data = array();
		$no=1;
		foreach ($query->result() as $hasil) {
			$row = array();
			$row [] = $no++;
			$row [] = $hasil->category_name;
			$row [] = $hasil->product_name;
			$row [] = $hasil->AccStock;
			$row [] = $hasil->AccReceived;
			$row [] = $hasil->AccCogs;
			$row [] = 
			'<a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="hapus('."'".$hasil->id."'".')"><i class="glyphicon glyphicon-trash"></i></a>
			<a class="btn btn-sm btn-primary" href="javascript:void(0)" title="edit" onclick="getData('."'".$hasil->id."'".')"><i class="glyphicon glyphicon-pencil"></i></a>';
			$data[] = $row;
		}
		echo json_encode(array("data"=>$data));

	}


	function add_data(){
		$data = array(
			'category_id' =>$this->input->post('category_id'),
			'product_name' => $this->input->post('product_name'),
			'account_received' => $this->input->post('account_received'),
			'account_cogs' => $this->input->post('account_cogs'),
			'account_stock' => $this->input->post('account_stock'),
			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s")
		);
		$this->db->insert('mst_product', $data);

		if($this->db->affected_rows()){
    		echo json_encode(array('status' => true));
    	}else{
    		echo json_encode(array("status" => false));
    	}
	}

	public function getData($id = '') {
		$data = '';
		if($this->input->is_ajax_request()) {
			if($id) {
				$this->db->select('a.*');
				$this->db->from('mst_product a');
				$this->db->join('mst_category_product b', 'a.category_id = b.id');
				$this->db->where('a.id', $id);
				$data = $this->db->get()->row_array();
			}
		}

		echo json_encode($data);
	}
	public function updateData() {
		$data = array(
			'category_id' =>$this->input->post('category_id'),
			'product_name' => $this->input->post('product_name'),
			'account_received' => $this->input->post('account_received'),
			'account_cogs' => $this->input->post('account_cogs'),
			'account_stock' => $this->input->post('account_stock')
		);

		$this->db->where('id', $this->input->post('id'));
		$this->db->update('mst_product',$data);

		if($this->db->affected_rows()){
            echo json_encode(array("status"=>TRUE));
		}else{
            echo json_encode(array("status"=>TRUE));
		}
	}
	public function delete($id){
		$query = $this->db->query("DELETE FROM mst_product WHERE id='$id'");
		echo json_encode(array('status' => true));
	}
}
