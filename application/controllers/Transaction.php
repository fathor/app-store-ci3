<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transaction extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->library('form_validation');

		if($this->session->userdata('status') != "login"){
			redirect(base_url("login"));
		}
	}
	public function index()
	{
		$data['ntrans']='';
		$sql = $this->db->query("SELECT * FROM transaction WHERE st='Draft' AND source='Jurnal Umum' AND createBy ='".$this->session->userdata('id_user')."'")->row();
		if ($sql) {
			$data['ntrans'] = $sql->ntrans;
		}

		$session['id_reg'] = $this->session->userdata('id_reg');
		$session['id_user'] = $this->session->userdata('id_user');
		$session['name_user'] = $this->session->userdata('name_user');
		$session['name_store'] = $this->session->userdata('name_store');

		$this->load->view('template/header');
		$this->load->view('template/sidebar');
		$this->load->view('transaction',$data);
		$this->load->view('template/footer');
	}

	function getAccount(){
		$sql = $this->db->query("SELECT * FROM mst_account");
		$data="<option value=''>- Pilih -</option>";
		foreach ($sql->result() as $row) {
			$data.="<option value='".$row->account_code."'>".$row->account_code.'-'.$row->account_name."</option>";
		}
		echo $data;
	}

	function ref1(){
		$sql = $this->db->query("SELECT * FROM mst_location");
		$data="<option value=''>- Pilih -</option>";
		foreach ($sql->result() as $row) {
			$data.="<option value='".$row->id."'>".$row->id.'-'.$row->unit_name."</option>";
		}
		echo $data;
	}

	function ref2(){
		$sql = $this->db->query("SELECT * FROM mst_product");
		$data="<option value=''>- Pilih -</option>";
		foreach ($sql->result() as $row) {
			$data.="<option value='".$row->id."'>".$row->id.'-'.$row->product_name."</option>";
		}
		echo $data;
	}

	function ref3(){
		$sql = $this->db->query("SELECT * FROM mst_thrid_party");
		$data="<option value=''>- Pilih -</option>";
		foreach ($sql->result() as $row) {
			$data.="<option value='".$row->id."'>".$row->id.'-'.$row->thrid_party_name."</option>";
		}
		echo $data;
	}



	public function load_data(){
		$createBy = $this->session->userdata('id_user');
		$ntrans = $this->input->post('ntrans');
		$query = $this->db->query("
				SELECT a.*,b.account_name
				FROM `transaction` a
				JOIN mst_account b ON a.account_code = b.account_code
				WHERE `source` = 'Jurnal Umum'
				AND `st` = 'Draft'
				AND `a`.`createBy` = '".$this->session->userdata('id_user')."'");	
		$data = array();
		foreach ($query->result() as $hasil) {
			$row = array();
			$row [] = "<input type='checkbox' name='data[]' id='data[]' value='".$hasil->id."'>";
			$row [] = $hasil->account_name.' ('.$hasil->account_code.')';
			$row [] = $hasil->ref_1;
			$row [] = $hasil->ref_2;
			$row [] = $hasil->ref_3;
			$row [] = $hasil->ref_4;
			$row [] = number_format($hasil->debet);
			$row [] = number_format($hasil->kredit);
			$row [] = 
			'<a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_data('."'".$hasil->id."'".')"><i class="glyphicon glyphicon-trash"></i></a>';
			$data[] = $row;
		}
		echo json_encode(array("data"=>$data));
	}

	function addDebet(){
		$data = array(
			'date' => date('Y-m-d'),
			'source' =>'Jurnal Umum',
			'ntrans' => null,
			'account_code' => $this->input->post('account'),
			'debet' => $this->input->post('amount'),
			'kredit' => 0,
			'ref_1' => $this->input->post('ref1'),
			'ref_2' => $this->input->post('ref2'),
			'ref_3' => $this->input->post('ref3'),
			'ref_4' => $this->input->post('ref4'),
			'note' => null,
			'st' =>'Draft',
			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s"),
			'updateBy' => $this->session->userdata('id_user'),
			'updateTime' => date("Y-m-d G:i:s"),
			'timeStamp' => date("Y-m-d G:i:s")
		);

		$this->db->insert('transaction',$data);

		if($this->db->affected_rows()){
			echo json_encode(array('status' => true));
		}else{
			echo json_encode(array("status" => false));
		}
	}

	function addKredit(){
		$data = array(
			'date' => date('Y-m-d'),
			'source' =>'Jurnal Umum',
			'ntrans' => null,
			'account_code' => $this->input->post('account'),
			'debet' => 0,
			'kredit' =>$this->input->post('amount'),
			'ref_1' => $this->input->post('ref1'),
			'ref_2' => $this->input->post('ref2'),
			'ref_3' => $this->input->post('ref3'),
			'ref_4' => $this->input->post('ref4'),
			'note' => null,
			'st' =>'Draft',
			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s"),
			'updateBy' => $this->session->userdata('id_user'),
			'updateTime' => date("Y-m-d G:i:s"),
			'timeStamp' => date("Y-m-d G:i:s")
		);

		$this->db->insert('transaction',$data);

		if($this->db->affected_rows()){
			echo json_encode(array('status' => true));
		}else{
			echo json_encode(array("status" => false));
		}
	}

	public function delete($id){
		$query = $this->db->query("DELETE from transaction where id='$id'");
		echo json_encode(array('status' => true));
	}

	function generateNtrans(){
		$id_user = $this->session->userdata('id_user');
		$this->db->query("UPDATE ntrans SET ntrans=LAST_INSERT_ID(ntrans+1)");
		$query=$this->db->query("SELECT ntrans FROM ntrans")->row();
		$ntrans = "JU/".$query->ntrans."/".$id_user;
		$data = array('ntrans' => $ntrans);
		return $data;
	}

	function posting(){
		$ntrans = $this->generateNtrans();
		$data = array_slice(explode('&',str_replace('data%5B%5D=','',$this->input->POST('data'))),1);
		foreach ($data as $id) {
			$update = array(
				'ntrans' => $ntrans['ntrans'],
				'date' => $this->input->post('date'),
				'st' => 'Aktif',
				'note' => $this->input->post('note')
			);
			$this->db->where('id',$id)->update('transaction',$update);
		}
		if($this->db->affected_rows()){
			echo json_encode(array('status' => true));
		}else{
			echo json_encode(array('status' => false));
		}
	}

}
