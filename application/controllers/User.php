<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

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
		$this->load->view('user');
		$this->load->view('template/footer');
	}

	function getRegistration(){
		$q = $this->db->query('SELECT * FROM mst_registration ORDER BY id');
		$date = "<option value=''>All</option>";
		foreach ($q->result() as $key) {
			$date .= "<option value='".$key->id."'>".$key->name_store."</option>";
		}
		echo $date;
	}

	public function load_data(){
		$query = $this->db->query(" SELECT a.*, name_store FROM mst_user a JOIN mst_registration b ON a.id_reg = b.id")->result();
		
		$data = array();
		foreach ($query as $hasil) {
			$row = array();
			$row [] = $hasil->id;
			$row [] = $hasil->name_user;
			$row [] = $hasil->username;
			$row [] = $hasil->password;
			$row [] = $hasil->name_store;
			$row [] = $hasil->loginTime;
			if ($hasil->status == 'Aktif') {
				$row[] = "<span class='label label-info'>".$hasil->status."</span>";
			}else{
				$row[] = "<span class='label label-danger'>".$hasil->status."</span>";

			}
			$row [] = 
			'<a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="hapus('."'".$hasil->id."'".')"><i class="glyphicon glyphicon-trash"></i></a>
			<a class="btn btn-sm btn-primary" href="javascript:void(0)" title="edit" onclick="getData('."'".$hasil->id."'".')"><i class="glyphicon glyphicon-pencil"></i></a>';
			$data[] = $row;
		}
		echo json_encode(array("data"=>$data));

	}

	function add_data(){
		$data = array(
			'name_user' => $this->input->post('name_user'), 
			'username' => $this->input->post('username'), 
			'password' => $this->input->post('password'),
			'id_reg' => $this->input->post('id_reg'),
			'status' =>'Aktif',
			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s")
		);
		$this->db->insert('mst_user',$data);

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
				$this->db->from('mst_user a');
				$this->db->join('mst_registration b', 'a.id_reg = b.id');
				$this->db->where('a.id', $id);
				$data = $this->db->get()->row_array();
			}
		}

		echo json_encode($data);
	}
	public function updateData() {

		$data = array(
			'name_user' => $this->input->post('name_user'), 
			'username' => $this->input->post('username'), 
			'password' => $this->input->post('password'),
			'id_reg' => $this->input->post('id_reg')
		);

		$this->db->where('id', $this->input->post('id'));
		$this->db->update('mst_user',$data);

		if($this->db->affected_rows()){
            echo json_encode(array("status"=>TRUE));
		}else{
            echo json_encode(array("status"=>TRUE));
		}
	}
	public function delete($id){
		$query = $this->db->query("DELETE from mst_user where id='$id'");
		echo json_encode(array('status' => true));
	}
}
