
<!-- MAIN -->
<div class="main">
  <!-- MAIN CONTENT -->
  <div class="main-content">
    <div class="container-fluid">


      <div class="col-md-4">
        <div class="panel panel-headline">
          <div class="panel-heading">
            <h3 class="panel-title">Laporan Laba Rugi</h3>
            <p class="panel-subtitle">Period: <?php echo date('d-F-Y'); ?></p>
          </div>
          <div class="panel-body">
            <div class="form-group">
              <label for="account">Periode</label>
              <div class="input-group date">
                <div class="input-group-addon">
                  <i class="fa fa-calendar"></i>
                </div>
                <input type="text" class="form-control pull-right datepicker" id="periode" value="<?php echo Date('Y-m', strtotime(date('Y-m').' -1 Month')); ?>">
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
            <div class="box box-info">
              <div class="table-responsive">
                <div class="box-body" id="table-data">
                </div>
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
    $('#periode').datepicker({
      autoclose: true,
      format: "yyyy-mm",
      orientation: "top auto",
      viewMode: "months",
      minViewMode: "months"
    });
    $(".select2").select2();
  });

  function view_data(){
    load_data();
  }
   function load_data() {
    var periode   = $('#periode').val();
    $.ajax({
      url : "<?php echo site_url('profit_loss/load_data')?>",
      type: "POST",
      data: {"periode":periode},
      dataType: "HTML",
      success: function(data) {
        $('#table-data').empty();
        $('#table-data').append(data);
      },
      error: function (jqXHR, textStatus, errorThrown) {
          alert('Data Kosong');
      }
    });
  }

</script>