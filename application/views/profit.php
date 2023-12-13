
<!-- MAIN -->
<div class="main">
  <!-- MAIN CONTENT -->
  <div class="main-content">
    <div class="container-fluid">


      <div class="col-md-6">
        <div class="panel panel-headline">
          <div class="panel-heading">
            <h3 class="panel-title">Laporan Penjualan</h3>
            <p class="panel-subtitle">Period: <?php echo date('d-F-Y'); ?></p>
          </div>
          <div class="panel-body">
            <div class="form-group">
              <label for="account">Produk</label>
              <select class="form-control select2" id="filter_product" name="filter_product" style="width: 100%;"></select>
            </div>

            <div class="form-group">
              <label for="account">Lokasi</label>
              <select class="form-control select2" id="filter_location" name="filter_location" style="width: 100%;"></select>
            </div>

            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label >Mulai Tanggal</label>
                  <div class="position-relative has-icon-left">
                    <input type="text" class="form-control datepicker" id="filter_first_date" name="filter_first_date" value="<?php echo date('2020-11-01'); ?>">
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
              <hr>
              <div class="text-right">
                <h3> KEUNTUNGAN : <span id="total"></span></h3>
              </div>
              <hr>
              <div class="table-responsive">
                <table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
                  <thead>
                    <tr>
                      <th rowspan="2" style="text-align: center;">No</th>
                      <th rowspan="2" style="text-align: center;">Produk</th>
                      <th rowspan="2" style="text-align: center;">Lokasi</th>
                      <th rowspan="2" style="text-align: center;">Harga Pokok</th>
                      <th colspan="3" style="text-align: center;">Penjualan</th>
                      <th rowspan="2" style="text-align: center;">Keuntungan</th>
                    </tr>
                    <tr>
                      <th style="text-align: center;">Harga Jual</th>
                      <th style="text-align: center;">Jumlah</th>
                      <th style="text-align: center;">Total</th>
                    </tr>
                  </thead>
                  <tfoot align="right">
                    <tr>
                      <th colspan="5" style="text-align:right">TOTAL</th>
                      <th></th>
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
    $('#filter_product').load("<?php echo site_url('profit/getProduct'); ?>");
    $('#filter_location').load("<?php echo site_url('profit/getLocation'); ?>");
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

  function view_data(){
    load_table();
    getTotal();
  }

  function formatNumber(number){
    var reverse = number.toString().split('').reverse().join(''),
    result  = reverse.match(/\d{1,3}/g);
    result  = result.join(',').split('').reverse().join('');
    return result;
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

        var jml = api
        .column( 5 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
        }, 0 );

        var total = api
        .column( 6 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
        }, 0 );

        var profit = api
        .column( 7 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
        }, 0 );
        
        $( api.column( 5 ).footer() ).text(formatNumber(jml));
        $( api.column( 6 ).footer() ).text(formatNumber(total));
        $( api.column( 7 ).footer() ).text(formatNumber(profit));
      },
      "destroy": "true",
      "order": [],
      "dom" : 'Bfrtip',
      "buttons" : ['pageLength','copyHtml5','excelHtml5'],
      "pageLength": 1000,
      "lengthMenu": [[5, 10, 50, 100, 1000, -1 ], ['5 Rows', '10 Rows', '50 Rows', '100 Rows', '1000 Rows', 'Show All']],
      "ajax": {
        "url": "<?php echo site_url('profit/load_data')?>",
        "type": "POST",
        "data": function ( data ) {
          data.filter_product = $('#filter_product').val();
          data.filter_first_date = $('#filter_first_date').val();
          data.filter_last_date = $('#filter_last_date').val();
          data.filter_location = $('#filter_location').val();
        },
      },
    });
  }

  function getTotal(){
    $.ajax({
      url : "<?php echo site_url('profit/getTotal')?>/",
      type: "POST",
      dataType: "JSON",
      data: {
        'first_date' : $('#filter_first_date').val(),
        'last_date' : $('#filter_last_date').val(),
        'product' : $('#filter_product').val(),
        'location' : $('#filter_location').val()
      },
      success: function(data){
        $('#total').text(data.total);
      },error: function (jqXHR, textStatus, errorThrown){swal('Terjadi Kesalahan GET Data!')}
    });
  }


</script>