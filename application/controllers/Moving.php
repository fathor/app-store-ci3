<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Moving extends CI_Controller {

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
		$this->load->view('moving');
		$this->load->view('template/footer');
	}

	function getStockProduct($location=''){
		$q = $this->db->query("
			SELECT b.* FROM `dt_stock` a 
			JOIN mst_product b ON a.product_id = b.id 
			WHERE a.status = 'Open' AND location_id ='$location' GROUP BY b.id");
		$data = "<option value=''>-pilih-</option>";
		foreach ($q->result() as $key) {
			$data .= "<option value='".$key->id."'>".$key->product_name."</option>";
		}
		echo $data;
	}

	function getStockProductUpdate($location='',$product=''){
		$x = $this->db->query("
			SELECT b.* FROM `dt_stock` a 
			JOIN mst_product b ON a.product_id = b.id 
			WHERE product_id ='$product' GROUP BY b.id")->row();
		$q = $this->db->query("
			SELECT b.* FROM `dt_stock` a 
			JOIN mst_product b ON a.product_id = b.id 
			WHERE a.status = 'Open' AND location_id ='$location' GROUP BY b.id")->result();
        $data="<option selected value='".$x->id."'>".$x->product_name."</option>";
		foreach ($q as $row) {
			$data.="<option value='".$row->id."'>".$row->product_name."</option>";
		}
		echo $data;
	}

	function getStock($location='',$product=''){
		$q = $this->db->query("SELECT a.* FROM `dt_stock` a WHERE location_id ='$location' AND product_id ='$product' GROUP BY a.id");
		$data = "<option value=''>-pilih-</option>";
		foreach ($q->result() as $key) {
			$data .= "<option value='".$key->id."'>Stock : ".(number_format($key->qty_in-$key->qty_out))." (".number_format($key->amount).")</option>";
		}
		echo $data;
	}

	function getStockUpdate($location='',$product='',$stock_id=''){
		$x = $this->db->query("SELECT a.* FROM `dt_stock` a WHERE id='$stock_id' GROUP BY a.id")->row();
		$q = $this->db->query("SELECT a.* FROM `dt_stock` a WHERE location_id ='$location' AND product_id ='$product' GROUP BY a.id")->result();
		$data .= "<option selected value='".$x->id."'>Stock : ".(number_format($x->qty_in-$x->qty_out))." (".number_format($x->amount).")</option>";
		foreach ($q as $row) {
			$data .= "<option value='".$row->id."'>Stock : ".(number_format($row->qty_in-$row->qty_out))." (".number_format($row->amount).")</option>";
		}
		echo $data;
	}

	function getLocation(){
		$q = $this->db->query('SELECT * FROM `mst_location`');
		$data = "<option value=''>-pilih-</option>";
		foreach ($q->result() as $key) {
			$data .= "<option value='".$key->id."'>".$key->unit_name."</option>";
		}
		echo $data;
	}


	public function load_data(){
		$first_date = $this->input->post('filter_first_date');
		$last_date = $this->input->post('filter_last_date');

		$query = $this->db->query(" 
			SELECT a.*,product_name,c.unit_name first,d.unit_name last
			FROM dt_moving a
			LEFT JOIN dt_stock b ON a.stock_id = b.id
			LEFT JOIN mst_location c ON a.first_location_id = c.id
			LEFT JOIN mst_location d ON a.last_location_id = d.id
			LEFT JOIN mst_product e ON b.product_id = e.id
			WHERE a.date  BETWEEN '$first_date' AND '$last_date'")->result();
		
		$data = array();
		$no=1;
		foreach ($query as $hasil) {
			$row = array();
			$row [] = $no++;
			$row [] = $hasil->product_name;
			$row [] = $hasil->date;
			$row [] = $hasil->first;
			$row [] = number_format($hasil->qty);
			$row [] = $hasil->last;

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

	function add_data(){
		$stock = $this->db->query("SELECT *FROM dt_stock WHERE id='".$this->input->post('stock_id')."'")->row();
		if (($stock->qty_in - $stock->qty_out) < $this->input->post('qty')) {
    		echo json_encode(array("status" => false,"msg"=>"Stock Tidak Cukup !")); die();
		}
		$data = array(
			'stock_id' => $this->input->post('stock_id'),
			'first_location_id' => $this->input->post('first_location_id'),
			'last_location_id' => $this->input->post('last_location_id'),
			'date' => $this->input->post('date'),
			'qty' => $this->input->post('qty'),
			'status' => 'Draft',
			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s")
		);
		$this->db->insert('dt_moving',$data);

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
				$this->db->select('a.*,b.product_id,b.location_id');
				$this->db->from('dt_moving a');
				$this->db->join('dt_stock b', 'a.stock_id = b.id');
				$this->db->where('a.id', $id);
				$data = $this->db->get()->row_array();
			}
		}

		echo json_encode($data);
	}
	public function updateData() {

		$stock = $this->db->query("SELECT *FROM dt_stock WHERE id='".$this->input->post('stock_id')."'")->row();
		if (($stock->qty_in - $stock->qty_out) < $this->input->post('qty')) {
			echo json_encode(array("status" => false,"msg"=>"Stock Tidak Cukup !")); die();
		}
		$data = array(
			'stock_id' => $this->input->post('stock_id'),
			'first_location_id' => $this->input->post('first_location_id'),
			'last_location_id' => $this->input->post('last_location_id'),
			'date' => $this->input->post('date'),
			'qty' => $this->input->post('qty')
		);

		$this->db->where('id', $this->input->post('id'));
		$this->db->update('dt_moving',$data);

		if($this->db->affected_rows()){
            echo json_encode(array("status"=>TRUE));
		}else{
            echo json_encode(array("status"=>TRUE));
		}
	}
	public function delete($id){
		$query = $this->db->query("DELETE from dt_moving where id='$id'");
		echo json_encode(array('status' => true));
	}
	public function generateTransaction($id){
		$dt_moving = $this->db->query("SELECT *,a.date date_moving FROM dt_moving a JOIN dt_stock b ON a.stock_id = b.id WHERE a.id='$id'")->row();

		$this->db->set('status', 'Aktif')->where('id', $id)->update('dt_moving');

		if (($dt_moving->qty_in - ($dt_moving->qty + $dt_moving->qty_out)) == 0) {
			$status = 'Close';
		}else{
			$status = 'Open';
		}

		$this->db->set('status', $status)->set('qty_out', $dt_moving->qty + $dt_moving->qty_out)
		->where('id', $dt_moving->stock_id)->update('dt_stock');

		$dt_history_stock_out = array(
			'stock_id' => $dt_moving->stock_id,
			'referensi' => 'Moving',
			'date' => $dt_moving->date_moving,
			'qty_in' => 0,
			'qty_out' => $dt_moving->qty,
			'amount' => $dt_moving->amount,
			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s")
		);
		$this->db->insert('dt_history_stock',$dt_history_stock_out);

		$dt_stock = array(
			'product_id' => $dt_moving->product_id,
			'location_id' => $dt_moving->last_location_id,
			'referensi' => 'Moving',
			'date' => $dt_moving->date_moving,
			'qty_in' => $dt_moving->qty,
			'qty_out' => 0,
			'status' => 'Open',
			'amount' => $dt_moving->amount,
			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s")
		);
		$this->db->insert('dt_stock',$dt_stock);
		$insert_id = $this->db->insert_id();

		$dt_history_stock_in = array(
			'stock_id' => $insert_id,
			'referensi' => 'Moving',
			'date' => $dt_moving->date_moving,
			'qty_in' => $dt_moving->qty,
			'qty_out' => 0,
			'amount' => $dt_moving->amount,
			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s")
		);
		$this->db->insert('dt_history_stock',$dt_history_stock_in);
		

		if($this->db->affected_rows()){
            echo json_encode(array("status"=>TRUE));
		}else{
            echo json_encode(array("status"=>TRUE));
		}

	}
}
