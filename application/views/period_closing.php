
<!-- MAIN -->
<div class="main">
  <!-- MAIN CONTENT -->
  <div class="main-content">
    <div class="container-fluid">


      <div class="col-md-6">
        <div class="panel panel-headline">
          <div class="panel-heading">
            <h3 class="panel-title">Periode Closing</h3>
            <p class="panel-subtitle">Period: <?php echo date('d-F-Y'); ?></p>
          </div>
          <div class="panel-body">
            <div class="form-group">
              <label for="account">Tahun</label>
              <select class="form-control select2" id="filter_year" name="filter_year" style="width: 100%;" onchange="reload_table_data()"></select>
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
                <table id="table_data" class="table table-striped table-bordered" cellspacing="0" width="100%">
                  <thead>
                    <tr>
                      <th>Bulan</th>
                      <th>Tahun</th>
                      <th>Status</th>
                      <th>Action</th>
                    </tr>
                  </thead>
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
  var table_data;
  $(document).ready(function() {
    $('#filter_year').load("<?php echo site_url('period_closing/getYear'); ?>");
    load_table_data();
  });

    function load_table_data(){
      table_data = $('#table_data').DataTable({
        "ajax": {
          "url": "<?php echo site_url('period_closing/load_table_data')?>",
          "type": "POST",  
          "data": function ( data ) {
            data.year = $('#filter_year').val();
          },
        },
      });
    }

    function reload_table_data(){
      table_data.ajax.reload(null, false);
    }
    function  open_period(id) {
      $.ajax({
        url : "<?php echo site_url('period_closing/open_period')?>/"+id,
        type: "POST",
        dataType: "JSON",
        success: function(data){
          if(data.status){
            swal({ type:"success", title: "Sukses!", text: "Periode Berhasil Di Buka !"});
            reload_table_data();
          }else{
            swal({ type:"danger", title: "Gagal!", text: data.msg});
          }
        },
        error: function (jqXHR, textStatus, errorThrown){
          swal({ type:"danger", title: "Gagal!", text: "Error System"});
        }
      });
    }
    function  close_period(id) {
      $.ajax({
        url : "<?php echo site_url('period_closing/close_period')?>/"+id,
        type: "POST",
        dataType: "JSON",
        success: function(data){
          if(data.status){
            swal({ type:"success", title: "Sukses!", text: "Periode Berhasil Di Tutup !"});
            reload_table_data();
          }else{
            swal({ type:"danger", title: "Gagal!", text: data.msg});
          }
        },
        error: function (jqXHR, textStatus, errorThrown){
          swal({ type:"danger", title: "Gagal!", text: "Error System"});
        }
      });
    }

</script>