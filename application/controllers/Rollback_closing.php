<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rollback_closing extends CI_Controller {

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
		$this->load->view('rollback_closing');
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
		$year = $this->input->post('year');
		$sql = $this->db
		->select('*,count(*) rekap')
		->where('year',$year)
		->group_by('month')
		->order_by('month','ASC')
		->get("closing_report")->result();

		$btn = $this->db
		->select('*')
		->where('year',$year)
		->order_by('month','DESC')
		->limit('1')
		->get("closing_report")->row();

		$data = array();
		$no = 1;
		foreach ($sql as $hasil) {
			
			$row = array();
			$row [] = $no++;
			$row [] = $hasil->rekap;
			$row [] = $this->getNameMonth($hasil->month);
			$row [] = $hasil->year;
			if ($hasil->month == $btn->month) {
				$row [] = '<a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Close" onclick="rollback('."'".$hasil->month."'".')"><i class="glyphicon glyphicon-remove"></i></a>';
			}else{
				$row [] = '[Aktif]';
			}
			$data[] = $row;
		}
		echo json_encode(array("data"=>$data));

	}

	function rollback(){
		$x = $this->input->post('month');
		$y = $this->input->post('year');

		$this->db->where('month',$x);
		$this->db->where('year',$y);
		$this->db->delete('closing_report');

		$this->db->where('month',$x);
		$this->db->where('year',$y);
		$this->db->delete('closing_saldo');

		$this->db->where('month',$x);
		$this->db->where('year',$y);
		$this->db->update('closing_period',array("st"=>0));

		$history = array(
			'date_closing' => date('Y-m-d H:i:s'),
			'note'       => 'Rollback laporan keuangan periode '.$x.' - '.$y.'',
			'entry_user' => $this->session->userdata('id_user'),
			'entry_date' => date('Y-m-d H:i:s')
		);
		$this->db->insert('closing_history',$history);

		if($this->db->affected_rows()){
			echo json_encode(array('status' => TRUE));
		}else{
			echo json_encode(array("status" => false,'msg'=>'Rollback CLosing Gagal !'));
		}
	}
}
