
<!-- MAIN -->
<div class="main">
  <!-- MAIN CONTENT -->
  <div class="main-content">
    <div class="container-fluid">
      <div class="panel panel-headline">
        <div class="panel-heading">
          <h3 class="panel-title">Data Master Produk</h3>
          <p class="panel-subtitle">Period: <?php echo date('d-F-Y'); ?></p>
        </div>
        <div class="panel-body">
      </div>
    </div>

    <!-- OVERVIEW -->
    <div class="panel panel-headline">
      <div class="panel-body">
        <div class="box-header with-border">
         <button type="button" id="btnadd" data-toggle="modal" data-target="#modal-input"  onclick="show_modal()" class="btn btn-primary"><i class="glyphicon glyphicon-plus"></i>  Tambah</button>
       </div>
       <br>
       <div class="row">

        <div class="box-body">
          <div class="table-responsive">
            <table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
              <thead>
                <tr>
                  <th>No.</th>
                  <th>Kategori Product</th>
                  <th>Nama Product</th>
                  <th>Akun Persediaan</th>
                  <th>Akun Pendapatan</th>
                  <th>Akun HPP</th>
                  <th>Action</th>
                </tr>
              </thead>
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
            <label for="title">Nama Produk</label>
            <input type="text" class="form-control" id="product_name" name="product_name" placeholder="Input Nama Produk ...." required >
          </fieldset>

          <fieldset class="form-group ">
            <label for="title">Kategori Produk</label>
            <select class="form-control input-lg" id="category_id" name="category_id">
              <option value="" selected="">- Pilih -</option>
            </select>
          </fieldset>
          
          <fieldset class="form-group ">
            <label for="title">Akun Persediaan</label>
            <select class="form-control input-lg" id="account_stock" name="account_stock" >
              <option value="" selected="">- Pilih -</option>
            </select>
          </fieldset>

          <fieldset class="form-group ">
            <label for="title">Akun Pendapatan</label>
            <select class="form-control input-lg" id="account_received" name="account_received" >
              <option value="" selected="">- Pilih -</option>
            </select>
          </fieldset>

          <fieldset class="form-group ">
            <label for="title">Akun HPP</label>
            <select class="form-control input-lg" id="account_cogs" name="account_cogs" >
              <option value="" selected="">- Pilih -</option>
            </select>
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
  $('#category_id').load("<?php echo site_url('product/getCategory'); ?>");
  $('#account_received').load("<?php echo site_url('product/getAccReceived'); ?>");
  $('#account_cogs').load("<?php echo site_url('product/getAccCogs'); ?>");
  $('#account_stock').load("<?php echo site_url('product/getAccInventory'); ?>");
  load_table();
});

function load_table(){
  table = $('#table').DataTable({
    "order": [],
    "ajax": {
      "url": "<?php echo site_url('product/load_data')?>",
      "type": "POST",  
    },
  });
}

function reload_table(){
  table.ajax.reload(null, false);
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
    url:'<?php echo base_url();?>product/add_data',
    type:"post",
    data: new FormData($("#form-input")[0]),
    processData: false,
    contentType: false,
    dataType: "JSON",
    success:function(balikan){
      swal("Sukses!", "Data Telah Disimpan !", "success");
      $('#modal-input').modal('hide');
      reload_table();
    }
  });
});

function getData(id){
  $.ajax({
    url : "<?php echo site_url('product/getData/')?>"+id,
    type: "POST",
    dataType: "JSON",
    success: function(data) {
      if (data) {
        $('#modal-input').modal('show');
        $('#title').text('Edit Data');
        $("#form-input")[0].reset();
        $('#saveButton').hide();
        $('#updateButton').show();

        $('#id').val(id);
        $('#category_id').val(data.category_id).change();
        $('#account_stock').val(data.account_stock).change();
        $('#account_cogs').val(data.account_cogs).change();
        $('#account_received').val(data.account_received).change();
        $('#product_name').val(data.product_name);
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
    url : "<?php echo site_url('product/updateData')?>",
    type: "POST",
    data: {
      id:$('#id').val(),
      category_id:$('#category_id').val(),
      account_received:$('#account_received').val(),
      account_cogs:$('#account_cogs').val(),
      account_stock:$('#account_stock').val(),
      product_name:$('#product_name').val()
    },
    dataType: "JSON",
    success: function(data) {
      if (data) {
        swal("Sukses!", "Data Telah Disimpan !", "success");
        $('#modal-input').modal('hide');
        reload_table();
      }else{
        swal("Error!", "Error get data from ajax !", "error");
      }
    },
    error: function (jqXHR, textStatus, errorThrown ){
      swal("Error!", "Error get data from ajax !", "error");

    }
  });
}

function hapus(id){
  swal({
    title: "Peringatan !",
    text: "Apakah Anda Yakin Ingin Mengapus Data ?",
    icon: "warning",
    dangerMode: true,
  })
  .then(willDelete => {
    if (willDelete) {
      $.ajax({
        url : "<?php echo site_url('product/delete')?>/"+id,
        type: "POST",
        dataType: "JSON",
        success: function(data)
        {
          if(data.status)
          {
            swal("Sukses!", "Data Sukses Dihapus!", "success");
            reload_table();
          }
        },
      }); 
    }
  });
}

</script>