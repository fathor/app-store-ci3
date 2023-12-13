
<!-- MAIN -->
<div class="main">
  <!-- MAIN CONTENT -->
  <div class="main-content">
    <div class="container-fluid">


      <div class="col-md-6">
        <div class="panel panel-headline">
          <div class="panel-heading">
            <h3 class="panel-title">Laporan Jurnal Transaksi</h3>
            <p class="panel-subtitle">Period: <?php echo date('d-F-Y'); ?></p>
          </div>
          <div class="panel-body">
            <div class="form-group">
              <label for="account">Sumber Jurnal</label>
              <select class="form-control select2" id="filter_source" name="filter_source" style="width: 100%;"></select>
            </div>

            <div class="form-group">
              <label for="account">Akun</label>
              <select class="form-control select2" id="filter_account_code" name="filter_account_code" style="width: 100%;"></select>
            </div>

            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label >Mulai Tanggal</label>
                  <div class="position-relative has-icon-left">
                    <input type="text" class="form-control datepicker" id="filter_first_date" name="filter_first_date" value="<?php echo date('Y-01-01'); ?>">
                    <div class="form-control-position">
                      <i class="la la-caret-square-o-left"></i>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label >Sampai Tanggal</label>
                  <div class="position-relative has-icon-left">
                    <input type="text" class="form-control datepicker" name="filter_last_date" id="filter_last_date" value="<?php echo date('Y-m-d'); ?>">
                    <div class="form-control-position">
                      <i class="la la-caret-square-o-right"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <hr>
            <div class="form-footer">
              <div class="text-right">
                <button type="button" class="btn btn-primary btn-xs" onclick="view_data()"><i class="fa fa-search"></i> Lihat </button>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- OVERVIEW -->
      <div class="col-md-12">
        <div class="panel panel-headline">
          <div class="panel-body">
           <div class="row">

            <div class="box-body">
              <div class="table-responsive">
                <table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
                  <thead>
                    <tr>
                      <th style="text-align: center;">No</th>
                      <th style="text-align: center;">Kode</th>
                      <th style="text-align: center;">Tanggal</th>
                      <th style="text-align: center;">Akun</th>
                      <th style="text-align: center;">Nama Akun</th>
                      <th style="text-align: center;">Keterangan</th>
                      <th style="text-align: center;">Debet</th>
                      <th style="text-align: center;">Kredit</th>
                    </tr>
                  </thead>
                  <tfoot align="right">
                    <tr>
                      <th colspan="6" style="text-align:right">TOTAL</th>
                      <th></th>
                      <th></th>
                    </tr>
                  </tfoot>
                </table>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
    <!-- END OVERVIEW -->
  </div>
</div>
<!-- END MAIN CONTENT -->
</div>
<!-- END MAIN -->
<div class="clearfix"></div>
<footer>
  <div class="container-fluid">
    <p class="copyright">&copy; 2017 <a href="https://www.themeineed.com" target="_blank">Theme I Need</a>. All Rights Reserved.</p>
  </div>
</footer>
</div>

<script>
  var table;
  $(document).ready(function() {
    $('#filter_source').load("<?php echo site_url('list_jurnal/getSource'); ?>");
    $('#filter_account_code').load("<?php echo site_url('list_jurnal/getAccount'); ?>");
    $('.datepicker').datepicker({
      autoclose: true,
      format: "yyyy-mm-dd",
      todayHighlight: true,
      orientation: "top auto",
      todayBtn: true,
      todayHighlight: true,
    });
    $(".select2").select2();
  });

  function formatNumber(number){
    var reverse = number.toString().split('').reverse().join(''),
    result  = reverse.match(/\d{1,3}/g);
    result  = result.join(',').split('').reverse().join('');
    return result;
  }

  function view_data(){
    var first_date = $('#filter_first_date').val();
    var last_date = $('#filter_last_date').val();
    var product = $('#filter_product').val();
    var location = $('#filter_location').val();
    load_table();
    $('#total').load("<?php echo site_url('list_jurnal/getTotal');?>/"+ first_date+"/"+last_date+"/"+product+"/"+location);
  }

  function load_table(){
    table = $('#table').DataTable({
      "footerCallback": function ( row, data, start, end, display ) {
        var api = this.api(), data;

        var intVal = function ( i ) {
          return typeof i === 'string' ?
          i.replace(/[\$,]/g, '')*1 :
          typeof i === 'number' ?
          i : 0;
        };

        var db = api
        .column( 6 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
        }, 0 );

        var kr = api
        .column( 7 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
        }, 0 );
        
        $( api.column( 6 ).footer() ).text(formatNumber(db));
        $( api.column( 7 ).footer() ).text(formatNumber(kr));
      },
      "destroy": "true",
      "order": [],
      "dom" : 'Bfrtip',
      "buttons" : ['pageLength','copyHtml5','excelHtml5'],
      "pageLength": 1000,
      "lengthMenu": [[5, 10, 50, 100, 1000, -1 ], ['5 Rows', '10 Rows', '50 Rows', '100 Rows', '1000 Rows', 'Show All']],
      "ajax": {
        "url": "<?php echo site_url('list_jurnal/load_data')?>",
        "type": "POST",
        "data": function ( data ) {
          data.filter_source = $('#filter_source').val();
          data.filter_first_date = $('#filter_first_date').val();
          data.filter_last_date = $('#filter_last_date').val();
          data.filter_account_code = $('#filter_account_code').val();
        },
      },
    });
  }


</script>