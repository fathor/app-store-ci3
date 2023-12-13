<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends CI_Controller {

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
		$this->load->view('category');
		$this->load->view('template/footer');
	}

	function getType(){
		$q = $this->db->query('SELECT * FROM `mst_type`');
		$date = "<option value=''>All</option>";
		foreach ($q->result() as $key) {
			$date .= "<option value='".$key->type_code."'>".$key->type_name." (".$key->type_code.")</option>";
		}
		echo $date;
	}

	public function load_data(){
		$query = $this->db->query("SELECT a.*,type_name FROM mst_category a INNER JOIN mst_type b ON a.type_code =b.type_code ORDER BY category_code ASC");	
		$data = array();
		foreach ($query->result() as $hasil) {
			$row = array();
			$row [] = $hasil->type_name.' - ('.$hasil->type_code.')';
			$row [] = $hasil->category_code;
			$row [] = $hasil->category_name;
			$row [] = 
			'<a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="hapus('."'".$hasil->id."'".')"><i class="glyphicon glyphicon-trash"></i></a>
			<a class="btn btn-sm btn-primary" href="javascript:void(0)" title="edit" onclick="getData('."'".$hasil->id."'".')"><i class="glyphicon glyphicon-pencil"></i></a>';
			$data[] = $row;
		}
		echo json_encode(array("data"=>$data));

	}

	function set_code($id){
		$sql= $this->db->query('SELECT MAX(category_code) code FROM  mst_category WHERE type_code="'.$id.'" LIMIT 1')->row();
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
		$category_code = $this->set_code($this->input->post('type_code'));

		$data = array(
			'type_code' =>$this->input->post('type_code'),
			'category_code' =>$category_code,
			'category_name' => $this->input->post('category_name'),
			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s")
		);
		$this->db->insert('mst_category', $data);

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
				$this->db->select('a.*,type_name');
				$this->db->from('mst_category a');
				$this->db->join('mst_type b', 'a.type_code = b.type_code');
				$this->db->where('a.id', $id);
				$data = $this->db->get()->row_array();
			}
		}

		echo json_encode($data);
	}
	public function updateData() {
		$id = $this->input->post('id');
		$mst_category = $this->db->query("SELECT * FROM mst_category WHERE id = '$id'")->row();
		if ($this->input->post('type_code') == $mst_category->type_code) {
			$category_code = $mst_category->category_code;
		}else{
			$category_code = $this->set_code($this->input->post('type_code'));
		}

		$data = array(
			'type_code' =>$this->input->post('type_code'),
			'category_code' =>$category_code,
			'category_name' => $this->input->post('category_name')
		);

		$this->db->where('id', $id);
		$this->db->update('mst_category',$data);

		if($this->db->affected_rows()){
            echo json_encode(array("status"=>TRUE));
		}else{
            echo json_encode(array("status"=>TRUE));
		}
	}
	public function delete($id){
		$query = $this->db->query("DELETE FROM mst_category WHERE id='$id'");
		echo json_encode(array('status' => true));
	}
}
