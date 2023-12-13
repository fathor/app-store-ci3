<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Period_closing extends CI_Controller {

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
		$this->load->view('period_closing');
		$this->load->view('template/footer');
	}

	function getYear(){
		$sql = $this->db->query("SELECT DATE_FORMAT(NOW(), '%Y') - 1 YEAR UNION SELECT DATE_FORMAT(NOW(), '%Y') YEAR")->result();
		$data="<option value=''>- Pilih -</option>";
		foreach ($sql as $row) {
			$data.="<option value='".$row->YEAR."'>".$row->YEAR."</option>";
		}
		echo $data;
	}

	function getNameMonth($month){
		switch ($month){
			case 1: 
			return "01 - Jan";
			break;
			case 2:
			return "02 - Feb";
			break;
			case 3:
			return "03 - Mar";
			break;
			case 4:
			return "04 - Apr";
			break;
			case 5:
			return "05 - May";
			break;
			case 6:
			return "06 - Jun";
			break;
			case 7:
			return "07 - Jul";
			break;
			case 8:
			return "08 - Aug";
			break;
			case 9:
			return "09 - Sept";
			break;
			case 10:
			return "10 - Oct";
			break;
			case 11:
			return "11 - Nov";
			break;
			case 12:
			return "12 - Dec";
			break;
		}
	}

	public function load_table_data(){
		$sql = $this->db
		->select("*")
		->where('year',$this->input->post('year'))
		->order_by('month','ASC')
		->get("closing_period")->result();
		$data = array();
		foreach ($sql as $hasil) {
			$row = array();
			$row [] = $this->getNameMonth($hasil->month);
			$row [] = $hasil->year;
			if ($hasil->st == 0) {
				$row [] ="Open";
				$row [] = 
				'<a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Close" onclick="close_period('."'".$hasil->id."'".')"><i class="glyphicon glyphicon-remove"></i></a>';
			}else{
				$row [] ="Close";
				$row [] = 
				'<a class="btn btn-sm btn-success" href="javascript:void(0)" title="Open" onclick="open_period('."'".$hasil->id."'".')"><i class="glyphicon glyphicon-ok"></i></a>';
			}

			$data[] = $row;
		}
		echo json_encode(array("data"=>$data));

	}

	function open_period($id){
		$sql = $this->db->get_where('closing_period', array('id' => $id))->row();
		$cek = $this->db
		->select("*")
		->where('year',$sql->year)
		->where('month',$sql->month)
		->limit('1')
		->get("closing_report")->result();
		if (!$cek) {
			$this->db->set('st', '0');
			$this->db->where('id', $id);
			$this->db->update('closing_period'); 
			echo json_encode(array("status" => TRUE));
		}else{
			echo json_encode(array("status" => FALSE,"msg"=>'Gagal !, Periode Telah Terbentuk Laporan !'));
		}
	}
	function close_period($id){
		$this->db->set('st', '1');
		$this->db->where('id', $id);
		$this->db->update('closing_period');

		if($this->db->affected_rows()){
			echo json_encode(array('status' => TRUE));
		}else{
			echo json_encode(array("status" => false,'msg'=>'Tidak Ada Update Data !'));
		}
	}
}
