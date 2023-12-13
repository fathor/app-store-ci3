
<!-- MAIN -->
<div class="main">
  <!-- MAIN CONTENT -->
  <div class="main-content">
    <div class="container-fluid">
      <div class="panel panel-headline">
        <div class="panel-heading">
          <h3 class="panel-title">Proses Closing</h3>
          <p class="panel-subtitle">Period: <?php echo date('d-F-Y'); ?></p>
        </div>
        <div class="panel-body">
        </div>
      </div>

      <!-- OVERVIEW -->
      <div class="panel panel-headline">
        <div class="panel-body">
          <div class="box-header with-border">
           <button type="button" onclick="closing()" class="btn btn-primary">CLosing</button>
         </div>
         <br>
         <div class="row">

          <div class="box-body">
            <div class="table-responsive">
              <table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                  <tr>
                    <th rowspan="2" style="text-align: center;">AKUN</th>
                    <th rowspan="2" style="text-align: center;">NAMA AKUN</th>
                    <th colspan="2" style="text-align: center;">SALDO AWAL</th>
                    <th colspan="2" style="text-align: center;">TRANSAKSI</th>
                    <th colspan="2" style="text-align: center;">SALDO AKHIR</th>
                    <th colspan="2" style="text-align: center;">LABA RUGI</th>
                    <th colspan="2" style="text-align: center;">NERACA</th>
                  </tr>
                  <tr>
                    <th style="text-align: center;">DEBET</th>
                    <th style="text-align: center;">KREDIT</th>

                    <th style="text-align: center;">DEBET</th>
                    <th style="text-align: center;">KREDIT</th>

                    <th style="text-align: center;">DEBET</th>
                    <th style="text-align: center;">KREDIT</th>

                    <th style="text-align: center;">BIAYA / BEBAN</th>
                    <th style="text-align: center;">PENDAPATAN</th>

                    <th style="text-align: center;">AKTIVA</th>
                    <th style="text-align: center;">PASIVA</th>
                  </tr>
                </thead>
                <tfoot align="right">
                  <tr>
                    <th colspan="2" style="text-align:right">TOTAL</th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
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
    load_table_data();
    proses();
  });

  function formatNumber(number){
    var reverse = number.toString().split('').reverse().join(''),
    result  = reverse.match(/\d{1,3}/g);
    result  = result.join(',').split('').reverse().join('');
    return result;
  }

  function load_table_data(){
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
        .column( 2 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
        }, 0 );

        var kr = api
        .column( 3 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
        }, 0 );

        var db1 = api
        .column( 4 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
        }, 0 );

        var kr1 = api
        .column( 5 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
        }, 0 );

        var db2 = api
        .column( 6 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
        }, 0 );

        var kr2 = api
        .column( 7 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
        }, 0 );

        var cost = api
        .column( 8 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
        }, 0 );

        var revenue = api
        .column( 9 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
        }, 0 );

        var aktiva = api
        .column( 10 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
        }, 0 );

        var pasiva = api
        .column( 11 )
        .data()
        .reduce( function (a, b) {
          return intVal(a) + intVal(b);
        }, 0 );
        
        $( api.column( 2 ).footer() ).text(formatNumber(db));
        $( api.column( 3 ).footer() ).text(formatNumber(kr));
        $( api.column( 4 ).footer() ).text(formatNumber(db1));
        $( api.column( 5 ).footer() ).text(formatNumber(kr1));
        $( api.column( 6 ).footer() ).text(formatNumber(db2));
        $( api.column( 7 ).footer() ).text(formatNumber(kr2));
        $( api.column( 8 ).footer() ).text(formatNumber(cost));
        $( api.column( 9 ).footer() ).text(formatNumber(revenue));
        $( api.column( 10 ).footer() ).text(formatNumber(aktiva));
        $( api.column( 11 ).footer() ).text(formatNumber(pasiva));
      },
      "destroy": "true",
      "order": [],
      "dom" : 'Bfrtip',
      "buttons" : ['pageLength','copyHtml5','excelHtml5'],
      "pageLength": 1000,
      "lengthMenu": [[5, 10, 50, 100, 1000, -1 ], ['5 Rows', '10 Rows', '50 Rows', '100 Rows', '1000 Rows', 'Show All']],
      "ajax": {
        "url": "<?php echo site_url('closing/load_table_data')?>",
      },
    });
  }


  function proses(){
    $.ajax({
      url : "<?php echo site_url('closing/proses')?>/",
      type: "POST",
      dataType: "JSON",
      success: function(data)
      {
        load_table_data();
      },
      error: function (jqXHR, textStatus, errorThrown)
      {
        load_table_data();
      }
    });
  }
  function closing(){
    $.ajax({
      url : "<?php echo site_url('closing/close_book')?>/",
      type: "POST",
      dataType: "JSON",
      success: function(data){if(data){swal("SUKSES","Tutup buku berhasil!","success")}else{swal("GAGAL","Tutup buku gagal diproses!","warning")}}
    });
  }
</script>