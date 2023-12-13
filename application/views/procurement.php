
<!-- MAIN -->
<div class="main">
  <!-- MAIN CONTENT -->
  <div class="main-content">
    <div class="container-fluid">


      <div class="col-md-6">
        <div class="panel panel-headline">
          <div class="panel-heading">
            <h3 class="panel-title">Data Pembelian</h3>
            <p class="panel-subtitle">Period: <?php echo date('d-F-Y'); ?></p>
          </div>
          <div class="panel-body">
            <div class="form-group">
              <label for="account">Produk</label>
              <select class="form-control select2" id="filter_product" name="filter_product" style="width: 100%;"></select>
            </div>

            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label >Mulai Tanggal</label>
                  <div class="position-relative has-icon-left">
                    <input type="text" class="form-control datepicker" id="filter_first_date" name="filter_first_date" value="<?php echo date('Y-m-d'); ?>">
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
            <div class="box-header with-border">
             <button type="button" id="btnadd" data-toggle="modal" data-target="#modal-input"  onclick="show_modal()" class="btn btn-primary"><i class="glyphicon glyphicon-plus"></i>  Tambah</button>
           </div>
           <br>
           <div class="row">

            <div class="box-body">
              <hr>
              <div class="text-right">
                <h3> TOTAL : <span id="total"></span></h3>
              </div>
              <hr>
              <div class="table-responsive">
                <table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Produk</th>
                      <th>Supplier</th>
                      <th>Lokasi</th>
                      <th>Tanggal</th>
                      <th>Jumlah</th>
                      <th>Harga Satuan</th>
                      <th>Total</th>
                      <th>status</th>
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

<div class="modal fade text-left" id="modal-input" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="title"></h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form id="form-input">
        <div class="modal-body">
          <input type="hidden" class="form-control" id="id" name="id">
          <fieldset class="form-group ">
            <label for="title">Produk</label>
            <select class="form-control input-lg" id="product_id" name="product_id" style="width: 100%;">
              <option value="" selected="">- Pilih -</option>
            </select>
          </fieldset>

          <fieldset class="form-group ">
            <label for="title">Lokasi</label>
            <select class="form-control input-lg" id="location_id" name="location_id">
              <option value="" selected="">- Pilih -</option>
            </select>
          </fieldset>

          <fieldset class="form-group ">
            <label for="title">Supplier</label>
            <select class="form-control input-lg" id="thrid_party_id" name="thrid_party_id">
              <option value="" selected="">- Pilih -</option>
            </select>
          </fieldset>

          <fieldset class="form-group ">
            <label for="title">Tanggal</label>
            <input type="text" class="form-control datepicker" name="date" id="date" value="<?php echo date('Y-m-d'); ?>">
          </fieldset>

          <fieldset class="form-group ">
            <label for="title">Jumlah</label>
            <input type="number" class="form-control" id="qty" name="qty" placeholder="Input Jumlah Produk ...." required >
          </fieldset>

          <fieldset class="form-group ">
            <label for="title">Harga Satuan</label>
            <input type="number" class="form-control" id="unit_price" name="unit_price" placeholder="Input Harga Produk ...." required >
          </fieldset>

        </div>
        <div class="modal-footer">
          <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Close">
          <input type="submit" class="btn btn-success" value="Save" id="saveButton">
          <input type="button" class="btn btn-primary" value="Update" onclick="updateData()" id="updateButton">
        </div>
      </form>
    </div>
  </div>
</div>

<script>
  var table;
  $(document).ready(function() {
    $('#filter_product').load("<?php echo site_url('procurement/getProduct'); ?>");
    $('#product_id').load("<?php echo site_url('procurement/getProduct'); ?>");
    $('#location_id').load("<?php echo site_url('procurement/getLocation'); ?>");
    $('#thrid_party_id').load("<?php echo site_url('procurement/getThrid_party'); ?>");
    $('.datepicker').datepicker({
      autoclose: true,
      format: "yyyy-mm-dd",
      todayHighlight: true,
      orientation: "top auto",
      todayBtn: true,
      todayHighlight: true,
    });
    $(".select2").select2();
    $("#product_id").select2({
      dropdownParent: $("#modal-input")
    });
  });

  function view_data(){
    var first_date = $('#filter_first_date').val();
    var last_date = $('#filter_last_date').val();
    var product = $('#filter_product').val();
    load_table();
    $('#total').load("<?php echo site_url('procurement/getTotal');?>/"+ first_date+"/"+last_date+"/"+product);
  }

  function load_table(){
    table = $('#table').DataTable({
      "destroy": "true",
      "order": [],
      "dom" : 'Bfrtip',
      "buttons" : ['pageLength','copyHtml5','excelHtml5'],
      "pageLength": 1000,
      "lengthMenu": [[5, 10, 50, 100, 1000, -1 ], ['5 Rows', '10 Rows', '50 Rows', '100 Rows', '1000 Rows', 'Show All']],
      "ajax": {
        "url": "<?php echo site_url('procurement/load_data')?>",
        "type": "POST",
        "data": function ( data ) {
          data.filter_product = $('#filter_product').val();
          data.filter_first_date = $('#filter_first_date').val();
          data.filter_last_date = $('#filter_last_date').val();
        },
      },
    });
  }


  function show_modal(){ 
    $('#title').text('Input Data');
    $("#form-input")[0].reset();
    $('#saveButton').show();
    $('#updateButton').hide();
  }

  $('#form-input').submit(function(e){
    e.preventDefault();
    $.ajax({
      url:'<?php echo base_url();?>procurement/add_data',
      type:"post",
      data: new FormData($("#form-input")[0]),
      processData: false,
      contentType: false,
      dataType: "JSON",
      success:function(balikan){
        swal("Sukses!", "Data Telah Disimpan !", "success");
        $('#modal-input').modal('hide');
        view_data();
      }
    });
  });

  function getData(id){
    $.ajax({
      url : "<?php echo site_url('procurement/getData/')?>"+id,
      type: "POST",
      dataType: "JSON",
      success: function(data) {
        if (data) {
          $('#modal-input').modal('show');
          $('#title').text('Edit Data');
          $("#form-input")[0].reset();
          $('#saveButton').hide();
          $('#updateButton').show();

          $('#id').val(data.id);
          $('#thrid_party_id').val(data.thrid_party_id).change();
          $('#location_id').val(data.location_id).change();
          $('#product_id').val(data.product_id).change();
          $('#date').val(data.date);
          $('#qty').val(data.qty);
          $('#unit_price').val(data.unit_price);

        }else{
          swal("Error!", "Error Get Data !", "error");
        }
      },
      error: function (jqXHR, textStatus, errorThrown ){
        swal("Error!", "Error get data from ajax !", "error");
      }
    });
  }

  function updateData(){
    $.ajax({
      url : "<?php echo site_url('procurement/updateData')?>",
      type: "POST",
      data: {
        id:$('#id').val(),
        thrid_party_id:$('#thrid_party_id').val(),
        location_id:$('#location_id').val(),
        product_id:$('#product_id').val(),
        date:$('#date').val(),
        qty:$('#qty').val(),
        unit_price:$('#unit_price').val()
      },
      dataType: "JSON",
      success: function(data) {
        if (data) {
          swal("Sukses!", "Data Telah Disimpan !", "success");
          $('#modal-input').modal('hide');
          view_data();
        }else{
          swal("Error!", "Error get data from ajax !", "error");
        }
      },
      error: function (jqXHR, textStatus, errorThrown ){
        swal("Error!", "Error get data from ajax !", "error");

      }
    });
  }

  function delete_data(id){
    swal({
      title: "Peringatan !",
      text: "Apakah Anda Yakin Ingin Mengapus Data ?",
      icon: "warning",
      dangerMode: true,
    })
    .then(willDelete => {
      if (willDelete) {
        $.ajax({
          url : "<?php echo site_url('procurement/delete')?>/"+id,
          type: "POST",
          dataType: "JSON",
          success: function(data)
          {
            if(data.status)
            {
              swal("Sukses!", "Data Sukses Dihapus!", "success");
              view_data();
            }
          },
        }); 
      }
    });
  }

  function generateTransaction(id){
    swal({
      title: "Anda Yakin Ingin Digenerate menjadi Stock ?",
      text: "Aksi Ini Tidak Dapat Dikembalikan",
      icon: "warning",
      dangerMode: true,
    })
    .then(willDelete => {
      if (willDelete) {
        $.ajax({
          url : "<?php echo site_url('procurement/generateTransaction')?>/"+id,
          type: "POST",
          dataType: "JSON",
          success: function(data)
          {
            if(data.status)
            {
              swal("Sukses!", "Data Sukses Digenerate !", "success");
              view_data();
            }
          },
        }); 
      }
    });
  }

</script>