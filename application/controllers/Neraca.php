<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Neraca extends CI_Controller {

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
		$this->load->view('neraca');
		$this->load->view('template/footer');
	}

	function aktiva(){
  		$date = Date("Y-m", strtotime($this->input->post('periode')));
		$month = substr($date, 5, 2);
		$year = substr($date, 0, 4);

		$data = $this->db->query("
			SELECT
				b.category_code,
				b.category_name,
				a.account_code,
				a.account_name,
				SUM(n.assets) AKTIVA
			FROM closing_report n
			INNER JOIN mst_account a ON n.account_code = a.account_code
			INNER JOIN mst_category b ON b.category_code= a.category_code
			WHERE b.category_code LIKE '1%' and `month` = '$month' and `year` = '$year'
			GROUP BY n.account_code 
			ORDER BY n.account_code ASC")->result();

		$content = "";

        $content .= '
        <table id="table_data2" class="table table-stripe"  style="font-size:10px;">
            <thead>
                <tr>
                    <th colspan="2" style="text-align:left;">AKTIVA</th>
                    <th style="text-align:right">NILAI</th>
                </tr>
            </thead>';
        $content .= '<tbody>';

        $category ='';
        $total_aktiva=0;
        foreach ($data as $cat) {
        	if ($category != $cat->category_code) {
        		$category = $cat->category_code;
        		$content .= '<tr>
			      		  		<td colspan="3"><b>'.$cat->category_name.'<b></td>
					    	</tr>';
				$account='';
				$total_account=0;
				foreach ($data as $acc) {
					if ($account != $acc->account_code && $category == $acc->category_code) {
						$account  = $acc->account_code;
						$content .= '<tr>';
						$content .= '<td width="10px"></td>';
				        $content .= '<td> '.$acc->account_code.'-'.$acc->account_name.' </td>';
				        $content .= '<td style="text-align:right;"> '.number_format($acc->AKTIVA).' </td>';
				        $content .= '</tr>';

					$total_account += $acc->AKTIVA;
					}
				}
				$content .= '<tr>
		                        <td colspan="2"><b></b></td>
		                        <td style="text-align:right;"><b>'.number_format($total_account).'</b></td>
		                    </tr>';
		        $total_aktiva += $total_account;
        	}	
        }
        $content .= '</tbody>';

        $content .= '<tfoot>';
        $content .= '<tr>
                        <td colspan="2"><b>TOTAL AKTIVA</b></td>
                        <td style="text-align:right;"><b>'.number_format($total_aktiva).'</b></td>
                    </tr>';
        $content .= '</tfoot>';


        $content .= '</table>';
        echo $content;
	}

function pasiva(){
  		$date = Date("Y-m", strtotime($this->input->post('periode')));
		$month = substr($date, 5, 2);
		$year = substr($date, 0, 4);

		$data = $this->db->query("
			SELECT
				b.category_code,
				b.category_name,
				a.account_code,
				a.account_name,
				SUM(n.liability) PASIVA
			FROM closing_report n
			INNER JOIN mst_account a ON n.account_code = a.account_code
			INNER JOIN mst_category b ON b.category_code= a.category_code
			WHERE (b.category_code LIKE '2%' OR b.category_code LIKE '3%') AND `month` = '$month' AND `year` = '$year'
			GROUP BY n.account_code 
			ORDER BY n.account_code ASC")->result();

		$content = "";

        $content .= '
        <table id="table_data2" class="table table-stripe"  style="font-size:10px;">
            <thead>
                <tr>
                    <th colspan="2" style="text-align:left;">PASIVA</th>
                    <th style="text-align:right">NILAI</th>
                </tr>
            </thead>';
        $content .= '<tbody>';
        $category ='';
        $total_pasiva=0;
        foreach ($data as $cat) {
        	if ($category != $cat->category_code) {
        		$category = $cat->category_code;
        		$content .= '<tr>
			      		  		<td colspan="3"><b>'.$cat->category_name.'<b></td>
					    	</tr>';
				$account='';
				$total_account=0;
				foreach ($data as $acc) {
					if ($account != $acc->account_code && $category == $acc->category_code) {
						$account  = $acc->account_code;
						$content .= '<tr>';
						$content .= '<td width="10px"></td>';
				        $content .= '<td> '.$acc->account_code.'-'.$acc->account_name.' </td>';
				        $content .= '<td style="text-align:right;"> '.number_format($acc->PASIVA).' </td>';
				        $content .= '</tr>';

					$total_account += $acc->PASIVA;
					}
				}
				$content .= '<tr>
		                        <td colspan="2"><b></b></td>
		                        <td style="text-align:right;"><b>'.number_format($total_account).'</b></td>
		                    </tr>';
		        $total_pasiva += $total_account;
        	}	
        }
        $content .= '</tbody>';

        $content .= '<tfoot>';
        $content .= '<tr>
                        <td colspan="2"><b>TOTAL AKTIVA</b></td>
                        <td style="text-align:right;"><b>'.number_format($total_pasiva).'</b></td>
                    </tr>';
        $content .= '</tfoot>';


        $content .= '</table>';
        echo $content;
	}
}
