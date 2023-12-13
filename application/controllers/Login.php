<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	function __construct(){
		parent::__construct();
		
	}
	public function index()
	{
		if($this->session->userdata('status') == "login"){
			redirect(base_url("home"));
		}else{
			$this->load->view('login');
			$this->load->view('template/footer');
		}
	}

	function cek_login(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$where = array(
			'username' => $username,
			'password' => ($password)
		);
		$sql = $this->db->query('SELECT a.*,b.id id_reg, name_store FROM mst_user a
			JOIN mst_registration b ON a.id_reg = b.id
			WHERE username="'.$username.'" AND password ="'.$password.'" ')->row();
		if($sql){
			$data_session = array(
				'id_reg' => $sql->id_reg,
				'id_user' => $sql->id,
				'name_user' => $sql->name_user,
				'name_store' => $sql->name_store,
				'status' => "login"
			);
			$this->session->set_userdata($data_session);
			$this->db->where('id', $sql->id)->set('loginTime', date("Y-m-d G:i:s"))->update('mst_user');
            echo json_encode(array("status" => TRUE));
		}else{
            echo json_encode(array("status" => FALSE,"msg"=> "Username / Password Salah !")); die();
		}
	}

	function logout(){
		$this->session->sess_destroy();
		redirect(base_url('login'));
	}
}
