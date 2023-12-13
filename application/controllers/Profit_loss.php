<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profit_loss extends CI_Controller {

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
		$this->load->view('profit_loss');
		$this->load->view('template/footer');
	}

	function load_data(){
  		$date = Date("Y-m", strtotime($this->input->post('periode')));
		$month = substr($date, 5, 2);
		$year = substr($date, 0, 4);

		$content = "";

        $content .= '
        <table id="table_data2" class="table table-stripe"  style="font-size:10px;">
            <thead>
                <tr>
                    <th colspan="2" style="text-align:left;"><b>KETERANGAN</b></th>
                    <th class="text-right" ><b>NILAI</b></th>

                </tr>
            </thead>';
        $content .= '<tbody>';

		$pendapatan_usaha = $this->db->query("
			SELECT
				b.category_code,
				b.category_name,
				a.account_code,
				a.account_name,
				SUM(n.revenue) revenue
			FROM closing_report n
			INNER JOIN mst_account a ON n.account_code = a.account_code
			INNER JOIN mst_category b ON b.category_code= a.category_code
			WHERE b.category_code LIKE '401%' and `month` = '$month' and `year` = '$year'
			GROUP BY n.account_code 
			ORDER BY n.account_code ASC")->result();

  		$content .='<tr> <td colspan="3"><b>PENDAPATAN USAHA</b></td></tr>';
  		$total_pu=0;
  		foreach ($pendapatan_usaha as $pu) {
  			$content .='
			    <tr>
			      <th width="5px">-</th>
			      <td class="text-left">'.$pu->account_code.' - '.$pu->account_name.'</td>
			      <td class="text-right">'.number_format($pu->revenue,2,".",",").'</td>
			    </tr>';
			$total_pu += $pu->revenue;
  		}
  		$content .='
			<tr>
				<td colspan="2"><b>TOTAL PENDAPATAN USAHA</b></td>
				<td class="text-right"><b>'.number_format($total_pu,2,".",",").'</b></td>
			</tr>';

		$harga_pokok_penjualan = $this->db->query("
			SELECT
				b.category_code,
				b.category_name,
				a.account_code,
				a.account_name,
				SUM(n.cost) cost
			FROM closing_report n
			INNER JOIN mst_account a ON n.account_code = a.account_code
			INNER JOIN mst_category b ON b.category_code= a.category_code
			WHERE b.category_code LIKE '501%' and `month` = '$month' and `year` = '$year'
			GROUP BY n.account_code 
			ORDER BY n.account_code ASC")->result();

  		$content .='<tr> <td colspan="3"><b>HARGA POKOK PENJUALAN</b></td></tr>';
  		$total_hpp=0;
  		foreach ($harga_pokok_penjualan as $hpp) {
  			$content .='
			    <tr>
			      <th width="5px">-</th>
			      <td class="text-left">'.$hpp->account_code.' - '.$hpp->account_name.'</td>
			      <td class="text-right">'.number_format($hpp->cost,2,".",",").'</td>
			    </tr>';
			$total_hpp += $hpp->cost;
  		}
  		$content .='
			<tr>
				<td colspan="2"><b>TOTAL HARGA POKOK PENJUALAN</b></td>
				<td class="text-right"><b>'.number_format($total_hpp,2,".",",").'</b></td>
			</tr>';

		$content .='
			<tr style="color: #cc0000;">
				<td colspan="2"><b>TOTAL LABA (RUGI) KOTOR</b></td>
				<td class="text-right"><b>'.number_format($total_pu-$total_hpp,2,".",",").'</b></td>
			</tr>';

		$biaya_operasional = $this->db->query("
			SELECT
				b.category_code,
				b.category_name,
				a.account_code,
				a.account_name,
				SUM(n.cost) cost
			FROM closing_report n
			INNER JOIN mst_account a ON n.account_code = a.account_code
			INNER JOIN mst_category b ON b.category_code= a.category_code
			WHERE b.category_code LIKE '601%' and `month` = '$month' and `year` = '$year'
			GROUP BY n.account_code 
			ORDER BY n.account_code ASC")->result();

  		$content .='<tr> <td colspan="3"><b>BIAYA OPERASIONAL</b></td></tr>';
  		$total_bo=0;
  		foreach ($biaya_operasional as $bo) {
  			$content .='
			    <tr>
			      <th width="5px">-</th>
			      <td class="text-left">'.$bo->account_code.' - '.$bo->account_name.'</td>
			      <td class="text-right">'.number_format($bo->cost,2,".",",").'</td>
			    </tr>';
			$total_bo += $bo->cost;
  		}
  		$content .='
			<tr>
				<td colspan="2"><b>TOTAL BIAYA OPERASIONAL</b></td>
				<td class="text-right"><b>'.number_format($total_bo,2,".",",").'</b></td>
			</tr>';

		$content .='
			<tr style="color: #cc0000;">
				<td colspan="2"><b>TOTAL LABA (RUGI) USAHA</b></td>
				<td class="text-right"><b>'.number_format(($total_pu - $total_hpp) - $total_bo,2,".",",").'</b></td>
			</tr>';

		$pendapatan_lain = $this->db->query("
			SELECT
				b.category_code,
				b.category_name,
				a.account_code,
				a.account_name,
				SUM(n.revenue) revenue
			FROM closing_report n
			INNER JOIN mst_account a ON n.account_code = a.account_code
			INNER JOIN mst_category b ON b.category_code= a.category_code
			WHERE b.category_code LIKE '402%' and `month` = '$month' and `year` = '$year'
			GROUP BY n.account_code 
			ORDER BY n.account_code ASC")->result();

  		$content .='<tr> <td colspan="3"><b>PENDAPATAN LAIN - LAIN</b></td></tr>';
  		$total_pl=0;
  		foreach ($pendapatan_lain as $pl) {
  			$content .='
			    <tr>
			      <th width="5px">-</th>
			      <td class="text-left">'.$pl->account_code.' - '.$pl->account_name.'</td>
			      <td class="text-right">'.number_format($pl->revenue,2,".",",").'</td>
			    </tr>';
			$total_pl += $pl->revenue;
  		}
  		$content .='
			<tr>
				<td colspan="2"><b>TOTAL PENDAPATAN LAIN - LAIN</b></td>
				<td class="text-right"><b>'.number_format($total_pl,2,".",",").'</b></td>
			</tr>';

		$biayaNonOperasional = $this->db->query("
			SELECT
				b.category_code,
				b.category_name,
				a.account_code,
				a.account_name,
				SUM(n.cost) cost
			FROM closing_report n
			INNER JOIN mst_account a ON n.account_code = a.account_code
			INNER JOIN mst_category b ON b.category_code= a.category_code
			WHERE b.category_code LIKE '602%' and `month` = '$month' and `year` = '$year'
			GROUP BY n.account_code 
			ORDER BY n.account_code ASC")->result();

  		$content .='<tr> <td colspan="3"><b>BIAYA NON OPERASIONAL</b></td></tr>';
  		$total_bno=0;
  		foreach ($biayaNonOperasional as $bno) {
  			$content .='
			    <tr>
			      <th width="5px">-</th>
			      <td class="text-left">'.$bno->account_code.' - '.$bno->account_name.'</td>
			      <td class="text-right">'.number_format($bno->cost,2,".",",").'</td>
			    </tr>';
			$total_bno += $bno->cost;
  		}
  		$content .='
			<tr>
				<td colspan="2"><b>TOTAL BIAYA NON OPERASIONAL</b></td>
				<td class="text-right"><b>'.number_format($total_bno,2,".",",").'</b></td>
			</tr>';

		$content .='
			<tr style="color: #cc0000;">
				<td colspan="2"><b>TOTAL LABA (RUGI) BERSIH</b></td>
				<td class="text-right"><b>'.number_format(($total_pu - $total_hpp) - $total_bo + $total_pl - $total_bno,2,".",",").'</b></td>
			</tr>';

        $content .= '</tbody>';
        $content .= '</table>';
        echo $content;
	}
}
