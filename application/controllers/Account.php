<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Account extends CI_Controller {

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
		$this->load->view('account');
		$this->load->view('template/footer');
	}

	function getCategory(){
		$q = $this->db->query('SELECT * FROM `mst_category` ORDER BY category_code ASC');
		$date = "<option value=''>All</option>";
		foreach ($q->result() as $key) {
			$date .= "<option value='".$key->category_code."'>".$key->category_name." (".$key->category_code.")</option>";
		}
		echo $date;
	}

	public function load_data(){
		$query = $this->db->query("SELECT a.*,category_name FROM mst_account a INNER JOIN mst_category b ON a.category_code =b.category_code ORDER BY type_code,a.category_code,account_code ASC");	
		$data = array();
		foreach ($query->result() as $hasil) {
			$row = array();
			$row [] = $hasil->category_name.' - ('.$hasil->category_code.')';
			$row [] = $hasil->account_code;
			$row [] = $hasil->account_name;
			$row [] = 
			'<a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="hapus('."'".$hasil->id."'".')"><i class="glyphicon glyphicon-trash"></i></a>
			<a class="btn btn-sm btn-primary" href="javascript:void(0)" title="edit" onclick="getData('."'".$hasil->id."'".')"><i class="glyphicon glyphicon-pencil"></i></a>';
			$data[] = $row;
		}
		echo json_encode(array("data"=>$data));

	}

	function set_code($id){
		$sql= $this->db->query('SELECT MAX(account_code) code FROM  mst_account WHERE category_code="'.$id.'" LIMIT 1')->row();
		if($sql){
			if($sql->code != null){
				$data = $sql->code + 1;
			} else {
				$data =$id.'01';
			}
		}else{
			$data =$id.'01';
		}
		return $data;
	}

	function add_data(){
		$account_code = $this->set_code($this->input->post('category_code'));

		$data = array(
			'category_code' =>$this->input->post('category_code'),
			'account_code' =>$account_code,
			'account_name' => $this->input->post('account_name'),
			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s")
		);
		$this->db->insert('mst_account', $data);

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
				$this->db->select('a.*,category_name');
				$this->db->from('mst_account a');
				$this->db->join('mst_category b', 'a.category_code = b.category_code');
				$this->db->where('a.id', $id);
				$data = $this->db->get()->row_array();
			}
		}

		echo json_encode($data);
	}
	public function updateData() {
		$id = $this->input->post('id');
		$mst_account = $this->db->query("SELECT * FROM mst_account WHERE id = '$id'")->row();
		if ($this->input->post('category_code') == $mst_account->category_code) {
			$account_code = $mst_account->account_code;
		}else{
			$account_code = $this->set_code($this->input->post('category_code'));
		}

		$data = array(
			'category_code' =>$this->input->post('category_code'),
			'account_code' =>$account_code,
			'account_name' => $this->input->post('account_name'),
		);

		$this->db->where('id', $id);
		$this->db->update('mst_account',$data);

		if($this->db->affected_rows()){
            echo json_encode(array("status"=>TRUE));
		}else{
            echo json_encode(array("status"=>TRUE));
		}
	}
	public function delete($id){
		$query = $this->db->query("DELETE FROM mst_account WHERE id='$id'");
		echo json_encode(array('status' => true));
	}
}
