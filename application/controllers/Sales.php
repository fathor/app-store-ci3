<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sales extends CI_Controller {

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
		$this->load->view('sales');
		$this->load->view('template/footer');
	}

	function getProduct(){
		$q = $this->db->query('SELECT * FROM `mst_product`');
		$data = "<option value=''>-pilih-</option>";
		foreach ($q->result() as $key) {
			$data .= "<option value='".$key->id."'>".$key->product_name."</option>";
		}
		echo $data;
	}

	function getStockProduct($location=''){
		$q = $this->db->query("
			SELECT b.* FROM `dt_stock` a 
			JOIN mst_product b ON a.product_id = b.id 
			WHERE location_id ='$location' AND a.status='Open' GROUP BY b.id");
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
			WHERE location_id ='$location' GROUP BY b.id")->result();
        $data="<option selected value='".$x->id."'>".$x->product_name."</option>";
		foreach ($q as $row) {
			$data.="<option value='".$row->id."'>".$row->product_name."</option>";
		}
		echo $data;
	}

	function getStock($location='',$product=''){
		$q = $this->db->query("SELECT a.* FROM `dt_stock` a WHERE status='Open' AND location_id ='$location' AND product_id ='$product' GROUP BY a.id ORDER BY a.id ASC");
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

	function getThrid_party(){
		$q = $this->db->query('SELECT * FROM `mst_thrid_party` WHERE id="7"');
		// $data = "<option value=''>-pilih-</option>";
		foreach ($q->result() as $key) {
			$data .= "<option value='".$key->id."'>".$key->thrid_party_name."</option>";
		}
		echo $data;
	}

	function getTotal($first_date='',$last_date='',$product=''){
		$where = '';
		if ($product != '') {
			$where .= 'AND b.product_id= "'.$product.'"';
		}
		$query = $this->db->query(" SELECT a.* FROM dt_sales a
			JOIN dt_stock b ON a.stock_id = b.id
			JOIN mst_product c ON b.product_id = c.id
			WHERE a.date  BETWEEN '$first_date' AND '$last_date' $where ")->result();
		$total=0;
		foreach ($query as $a) {
			$total += ($a->qty * $a->amount_sales);
		}
		echo number_format($total);
	}

	public function load_data(){
		$first_date = $this->input->post('filter_first_date');
		$last_date = $this->input->post('filter_last_date');
		$where = '';
		if ($this->input->post('filter_product')) {
			$where .= 'AND b.product_id= "'.$this->input->post('filter_product').'"';
		}
		$query = $this->db->query(" 
			SELECT a.*,product_name,unit_name,thrid_party_name 
			FROM dt_sales a
			LEFT JOIN dt_stock b ON a.stock_id = b.id
			LEFT JOIN mst_product c ON b.product_id = c.id
			LEFT JOIN mst_location d ON b.location_id = d.id
			LEFT JOIN mst_thrid_party e ON a.thrid_party_id = e.id
			WHERE a.date  BETWEEN '$first_date' AND '$last_date' $where ")->result();
		
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
			$row [] = number_format($hasil->amount_sales);
			$row [] = number_format($hasil->amount_sales * $hasil->qty);

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
		$ntrans = "OU/".$query->ntrans."/".$id_user;
		$data = array('ntrans' => $ntrans);
		return $data;
	}

	function add_data(){
		$stock = $this->db->query("SELECT *FROM dt_stock WHERE id='".$this->input->post('stock_id')."'")->row();
		if (($stock->qty_in - $stock->qty_out) < $this->input->post('qty')) {
    		echo json_encode(array("status" => false,"msg"=>"Stock Tidak Cukup !")); die();
		}
		$data = array(
			// 'thrid_party_id' => $this->input->post('thrid_party_id'), 
			'thrid_party_id' =>'7', 
			'stock_id' => $this->input->post('stock_id'),
			'no_trx' => null,
			'date' => $this->input->post('date'),
			'qty' => $this->input->post('qty'),
			'amount_sales' => $this->input->post('amount_sales'),
			'status' => 'Draft',
			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s")
		);
		$this->db->insert('dt_sales',$data);

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
				$this->db->from('dt_sales a');
				$this->db->join('dt_stock b', 'a.stock_id = b.id');
				$this->db->join('mst_thrid_party c', 'a.thrid_party_id = c.id');
				$this->db->join('mst_product d', 'b.product_id = d.id');
				$this->db->join('mst_location e', 'b.location_id = e.id');
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
			'thrid_party_id' => $this->input->post('thrid_party_id'), 
			'stock_id' => $this->input->post('stock_id'),
			'qty' => $this->input->post('qty'),
			'date' => $this->input->post('date'),
			'amount_sales' => $this->input->post('amount_sales')
		);

		$this->db->where('id', $this->input->post('id'));
		$this->db->update('dt_sales',$data);

		if($this->db->affected_rows()){
            echo json_encode(array("status"=>TRUE));
		}else{
            echo json_encode(array("status"=>TRUE));
		}
	}
	public function delete($id){
		$query = $this->db->query("DELETE from dt_sales where id='$id'");
		echo json_encode(array('status' => true));
	}
	public function generateTransaction($id){
		$ntrans = $this->generateNtrans();
		$dt_sales = $this->db->query("SELECT *,a.date date_sales FROM dt_sales a JOIN dt_stock b ON a.stock_id = b.id WHERE a.id='$id'")->row();
		$accProduct = $this->db->select('*')->from('mst_product')->where('id',$dt_sales->product_id)->get()->row();
		// die();

		$this->db->set('status', 'Aktif')->set('no_trx', $ntrans['ntrans'])
		->where('id', $id)->update('dt_sales');
		$trx_debet = array(
			'date' => $dt_sales->date_sales,
			'source' =>'Sales',
			'ntrans' =>$ntrans['ntrans'],
			'account_code' =>'10101',
			'debet' => $dt_sales->qty * $dt_sales->amount_sales,
			'kredit' =>0,
			'ref_1' =>$dt_sales->location_id,
			'ref_2' =>$dt_sales->product_id,
			'ref_3' =>$dt_sales->thrid_party_id,
			'ref_4' =>$id,
			'note' =>'Penjualan Product '.$accProduct->product_name.'',
			'st' =>'Aktif',

			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s"),
			'updateBy' => $this->session->userdata('id_user'),
			'updateTime' => date("Y-m-d G:i:s"),
			'timeStamp' => date("Y-m-d G:i:s")
		);
		$trx_kredit = array(
			'date' => $dt_sales->date_sales,
			'source' =>'Sales',
			'ntrans' =>$ntrans['ntrans'],
			'account_code' =>$accProduct->account_received,
			'debet' => 0,
			'kredit' =>$dt_sales->qty * $dt_sales->amount_sales,
			'ref_1' =>$dt_sales->location_id,
			'ref_2' =>$dt_sales->product_id,
			'ref_3' =>$dt_sales->thrid_party_id,
			'ref_4' =>$id,
			'note' =>'Penjualan Product '.$accProduct->product_name.'',
			'st' =>'Aktif',

			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s"),
			'updateBy' => $this->session->userdata('id_user'),
			'updateTime' => date("Y-m-d G:i:s"),
			'timeStamp' => date("Y-m-d G:i:s")
		);
		$this->db->insert('transaction',$trx_debet);
		$this->db->insert('transaction',$trx_kredit);

		$trxHppDebet = array(
			'date' => $dt_sales->date_sales,
			'source' =>'Sales',
			'ntrans' =>$ntrans['ntrans'],
			'account_code' =>$accProduct->account_cogs,
			'debet' => $dt_sales->qty * $dt_sales->amount,
			'kredit' =>0,
			'ref_1' =>$dt_sales->location_id,
			'ref_2' =>$dt_sales->product_id,
			'ref_3' =>$dt_sales->thrid_party_id,
			'ref_4' =>$id,
			'note' =>'Penjualan Product '.$accProduct->product_name.'',
			'st' =>'Aktif',

			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s"),
			'updateBy' => $this->session->userdata('id_user'),
			'updateTime' => date("Y-m-d G:i:s"),
			'timeStamp' => date("Y-m-d G:i:s")
		);
		$trxHppKredit = array(
			'date' => $dt_sales->date_sales,
			'source' =>'Sales',
			'ntrans' =>$ntrans['ntrans'],
			'account_code' =>$accProduct->account_stock,
			'debet' => 0,
			'kredit' =>$dt_sales->qty * $dt_sales->amount,
			'ref_1' =>$dt_sales->location_id,
			'ref_2' =>$dt_sales->product_id,
			'ref_3' =>$dt_sales->thrid_party_id,
			'ref_4' =>$id,
			'note' =>'Penjualan Product '.$accProduct->product_name.'',
			'st' =>'Aktif',

			'createBy' => $this->session->userdata('id_user'),
			'createTime' => date("Y-m-d G:i:s"),
			'updateBy' => $this->session->userdata('id_user'),
			'updateTime' => date("Y-m-d G:i:s"),
			'timeStamp' => date("Y-m-d G:i:s")
		);
		$this->db->insert('transaction',$trxHppDebet);
		$this->db->insert('transaction',$trxHppKredit);


		if (($dt_sales->qty_in - ($dt_sales->qty + $dt_sales->qty_out)) == 0) {
			$status = 'Close';
		}else{
			$status = 'Open';
		}

		$this->db->set('status', $status)->set('qty_out', $dt_sales->qty + $dt_sales->qty_out)
		->where('id', $dt_sales->stock_id)->update('dt_stock');

		$dt_history_stock = array(
			'stock_id' => $dt_sales->stock_id,
			'referensi' => 'Sales',
			'date' => $dt_sales->date_sales,
			'qty_in' => 0,
			'qty_out' => $dt_sales->qty,
			'amount' => $dt_sales->amount_sales,
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
