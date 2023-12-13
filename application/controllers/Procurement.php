<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Procurement extends CI_Controller {

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
		$this->load->view('procurement');
		$this->load->view('template/footer');
	}

	function getProduct(){
		$q = $this->db->query('SELECT * FROM `mst_product`');
		$date = "<option value=''>All</option>";
		foreach ($q->result() as $key) {
			$date .= "<option value='".$key->id."'>".$key->product_name."</option>";
		}
		echo $date;
	}

	function getLocation(){
		$q = $this->db->query('SELECT * FROM `mst_location`');
		$date = "<option value=''>All</option>";
		foreach ($q->result() as $key) {
			$date .= "<option value='".$key->id."'>".$key->unit_name."</option>";
		}
		echo $date;
	}

	function getThrid_party(){
		$q = $this->db->query('SELECT * FROM `mst_thrid_party`');
		$date = "<option value=''>All</option>";
		foreach ($q->result() as $key) {
			$date .= "<option value='".$key->id."'>".$key->thrid_party_name."</option>";
		}
		echo $date;
	}

	function getTotal($first_date='',$last_date='',$product=''){
		$where = '';
		if ($product != '') {
			$where .= 'AND product_id= "'.$product.'"';
		}
		$query = $this->db->query(" SELECT * FROM dt_procurement WHERE `date`  BETWEEN '$first_date' AND '$last_date' $where ")->result();
		$total=0;
		foreach ($query as $a) {
			$total += ($a->qty * $a->unit_price);
		}
		echo number_format($total);
	}

	public function load_data(){
		$first_date = $this->input->post('filter_first_date');
		$last_date = $this->input->post('filter_last_date');
		$where = '';
		if ($this->input->post('filter_product')) {
			$where .= 'AND product_id= "'.$this->input->post('filter_product').'"';
		}
		$query = $this->db->query(" 
			SELECT a.*,product_name,unit_name,thrid_party_name 
			FROM dt_procurement a
			LEFT JOIN mst_product b ON a.product_id = b.id
			LEFT JOIN mst_location c ON a.location_id = c.id
			LEFT JOIN mst_thrid_party d ON a.thrid_party_id = d.id
			WHERE `date`  BETWEEN '$first_date' AND '$last_date' $where ")->result();
		
		$data = array();
		$no=1;
		foreach ($query as $hasil) {
			$row = array();
			$row [] = $no++;
			$row [] = $hasil->product_name;
			$row [] = $hasil->thrid_party_name;
			$row [] = $hasil->unit_name;
			$row [] = $hasil->date;
			$row [] = number_format($hasil->qty);
			$row [] = number_format($hasil->unit_price);
			$row [] = number_format($hasil->unit_price * $hasil->qty);

			if ($hasil->status == 'Draft') {
				$row[] = "<span class='label label-info'>".$hasil->status."</span>";
			}else{
				$row[] = "<span class='label label-primary'>".$hasil->status."</span>";

			}

			if ($hasil->status == 'Draft') {
				$row [] = 
				'<a class="btn btn-sm btn-success" href="javascript:void(0)" title="Generate Transaksi" onclick="generateTransaction('."'".$hasil->id."'".')"><i class="glyphicon glyphicon-ok"></i></a>
				<a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_data('."'".$hasil->id."'".')"><i class="glyphicon glyphicon-trash"></i></a>
				<a class="btn btn-sm btn-primary" href="javascript:void(0)" title="edit" onclick="getData('."'".$hasil->id."'".')"><i class="glyphicon glyphicon-pencil"></i></a>';
			}else{
				$row[] = "<span class='label label-primary'>".$hasil->status."</span>";

			}
			$data[] = $row;
		}
		echo json_encode(array("data"=>$data));

	}
	function generateNtrans(){
		$id_user = $this->session->userdata('id_user');
		$this->db->query("UPDATE ntrans SET ntrans=LAST_INSERT_ID(ntrans+1)");
		$query=$this->db->query("SELECT ntrans FROM ntrans")->row();
		$ntrans = "IN/".$query->ntrans."/".$id_user;
		$data = array('ntrans' => $ntrans);
		return $data;
	}

	function add_data(){
		$data = array(
			'thrid_party_id' => $this->input->post('thrid_party_id'), 
			'product_id' => $this->input->post('product_id'),
			'location_id' => $this->input->post('location_id'),
			'no_trx' => null,
			'date' => $this->input->post('date'),
			'qty' => $this->input->post('qty'),
			'unit_price' => $this->input->post('unit_price'),
			'status' => 'Draft',
			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s")
		);
		$this->db->insert('dt_procurement',$data);

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
				$this->db->from('dt_procurement a');
				$this->db->join('mst_thrid_party b', 'a.thrid_party_id = b.id');
				$this->db->join('mst_product c', 'a.product_id = c.id');
				$this->db->join('mst_location d', 'a.location_id = d.id');
				$this->db->where('a.id', $id);
				$data = $this->db->get()->row_array();
			}
		}

		echo json_encode($data);
	}
	public function updateData() {

		$data = array(
			'thrid_party_id' => $this->input->post('thrid_party_id'), 
			'product_id' => $this->input->post('product_id'),
			'location_id' => $this->input->post('location_id'),
			'no_trx' => null,
			'date' => $this->input->post('date'),
			'qty' => $this->input->post('qty'),
			'unit_price' => $this->input->post('unit_price')
		);

		$this->db->where('id', $this->input->post('id'));
		$this->db->update('dt_procurement',$data);

		if($this->db->affected_rows()){
            echo json_encode(array("status"=>TRUE));
		}else{
            echo json_encode(array("status"=>TRUE));
		}
	}
	public function delete($id){
		$query = $this->db->query("DELETE from dt_procurement where id='$id'");
		echo json_encode(array('status' => true));
	}
	public function generateTransaction($id){
		$ntrans = $this->generateNtrans();
		$dt_procurement = $this->db->select('*')->from('dt_procurement')->where('id',$id)->get()->row();
		$accDebet = $this->db->select('*')->from('mst_product')->where('id',$dt_procurement->product_id)->get()->row();

		$this->db->set('status', 'Aktif')->set('no_trx', $ntrans['ntrans'])
		->where('id', $id)->update('dt_procurement');
		$trx_debet = array(
			'date' => $dt_procurement->date,
			'source' =>'Procurement',
			'ntrans' =>$ntrans['ntrans'],
			'account_code' =>$accDebet->account_stock,
			'debet' => $dt_procurement->qty * $dt_procurement->unit_price,
			'kredit' =>0,
			'ref_1' =>$dt_procurement->location_id,
			'ref_2' =>$dt_procurement->product_id,
			'ref_3' =>$dt_procurement->thrid_party_id,
			'ref_4' =>$id,
			'note' =>'Pembelian Product '.$accDebet->product_name.'',
			'st' =>'Aktif',

			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s"),
			'updateBy' => $this->session->userdata('id_user'),
			'updateTime' => date("Y-m-d G:i:s"),
			'timeStamp' => date("Y-m-d G:i:s")
		);
		$trx_kredit = array(
			'date' => $dt_procurement->date,
			'source' =>'Procurement',
			'ntrans' =>$ntrans['ntrans'],
			'account_code' =>'10101',
			'debet' => 0,
			'kredit' => $dt_procurement->qty * $dt_procurement->unit_price,
			'ref_1' =>$dt_procurement->location_id,
			'ref_2' =>$dt_procurement->product_id,
			'ref_3' =>$dt_procurement->thrid_party_id,
			'ref_4' =>$id,
			'note' =>'Pembelian Product '.$accDebet->product_name.'',
			'st' =>'Aktif',

			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s"),
			'updateBy' => $this->session->userdata('id_user'),
			'updateTime' => date("Y-m-d G:i:s"),
			'timeStamp' => date("Y-m-d G:i:s")
		);
		$this->db->insert('transaction',$trx_debet);
		$this->db->insert('transaction',$trx_kredit);

		$dt_stock = array(
			'product_id' => $dt_procurement->product_id,
			'location_id' => $dt_procurement->location_id,
			'referensi' => 'Procurement',
			'date' => $dt_procurement->date,
			'qty_in' => $dt_procurement->qty,
			'qty_out' => 0,
			'status' => 'Open',
			'amount' => $dt_procurement->unit_price,
			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s")
		);
		$this->db->insert('dt_stock',$dt_stock);
		$insert_id = $this->db->insert_id();

		$dt_history_stock = array(
			'stock_id' => $insert_id,
			'referensi' => 'Procurement',
			'date' => $dt_procurement->date,
			'qty_in' => $dt_procurement->qty,
			'qty_out' => 0,
			'amount' => $dt_procurement->unit_price,
			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s")
		);
		$this->db->insert('dt_history_stock',$dt_history_stock);

		if($this->db->affected_rows()){
            echo json_encode(array("status"=>TRUE));
		}else{
            echo json_encode(array("status"=>TRUE));
		}

	}
}
