<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Thrid_party extends CI_Controller {

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
		$this->load->view('thrid_party');
		$this->load->view('template/footer');
	}

	public function load_data(){
		$query = $this->db->query(" SELECT *FROM mst_thrid_party ")->result();
		
		$data = array();
		foreach ($query as $hasil) {
			$row = array();
			$row [] = $hasil->id;
			$row [] = $hasil->thrid_party_name;
			$row [] = $hasil->address;
			$row [] = $hasil->email;
			$row [] = $hasil->number_tlp;
			$row [] = $hasil->number_id;
			if ($hasil->type == 'customer') {
				$row[] = "<span class='label label-info'>".$hasil->type."</span>";
			}else{
				$row[] = "<span class='label label-primary'>".$hasil->type."</span>";

			}
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
			'thrid_party_name' => $this->input->post('thrid_party_name'), 
			'number_id' => $this->input->post('number_id'),
			'number_tlp' => $this->input->post('number_tlp'),
			'address' => $this->input->post('address'),
			'email' => $this->input->post('email'),
			'type' => $this->input->post('type'),
			'status' =>'Aktif',
			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s")
		);
		$this->db->insert('mst_thrid_party',$data);

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
				$this->db->where('id', $id);
				$data = $this->db->get('mst_thrid_party')->row_array();
			}
		}

		echo json_encode($data);
	}
	public function updateData() {

		$data = array(
			'thrid_party_name' => $this->input->post('thrid_party_name'),
			'number_id' => $this->input->post('number_id'),
			'number_tlp' => $this->input->post('number_tlp'),
			'email' => $this->input->post('email'),
			'address' => $this->input->post('address'),
			'type' => $this->input->post('type')
		);

		$this->db->where('id', $this->input->post('id'));
		$this->db->update('mst_thrid_party',$data);

		if($this->db->affected_rows()){
            echo json_encode(array("status"=>TRUE));
		}else{
            echo json_encode(array("status"=>TRUE));
		}
	}
	public function delete($id){
		$query = $this->db->query("DELETE from mst_thrid_party where id='$id'");
		echo json_encode(array('status' => true));
	}
}
