
<!-- MAIN -->
<div class="main">
  <!-- MAIN CONTENT -->
  <div class="main-content">
    <div class="container-fluid">
      <div class="panel panel-headline">
        <div class="panel-heading">
          <h3 class="panel-title">Data Master Registration</h3>
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
                  <th>ID</th>
                  <th>Nama</th>
                  <th>Alamat</th>
                  <th>Email</th>
                  <th>Nomor Telpon</th>
                  <th>Nomor ID</th>
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


<div class="modal fade bs-example-modal-lg" tabindex="-1" aria-labelledby="myLargeModalLabel" id="modal-input" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="title"></h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form id="form-input">
        <div class="modal-body">
          <div class="form-body">

            <input type="text" id="id" hidden="">

            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label >Nama Toko</label>
                  <input type="text" id="name_store" name="name_store" class="form-control" placeholder="Input Nama Toko ...." required>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label >Nomor Identitas</label>
                  <input type="number" id="number_id" name="number_id" class="form-control" placeholder="Input Nomor SIUP / KTP...." required>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label >Email</label>
                  <input type="email" id="email" name="email" class="form-control" placeholder="Input Email...." required>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label >Nomor Telepon</label>
                  <input type="number" id="number_tlp" name="number_tlp" class="form-control" placeholder="Input Nomor Telepon...." required>
                </div>
              </div>
            </div>

            <div class="form-group">
              <label >Alamat</label>
              <textarea id="address" name="address" rows="5" class="form-control" placeholder="Input Alamat Lengkap Toko...."></textarea>
            </div>

          </div>
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
  load_table();
});

function load_table(){
  table = $('#table').DataTable({
    "order": [],
    "ajax": {
          "url": "<?php echo site_url('registration/load_data')?>",
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
    url:'<?php echo base_url();?>registration/add_data',
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
    url : "<?php echo site_url('registration/getData/')?>"+id,
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
        $('#name_store').val(data.name_store);
        $('#number_id').val(data.number_id);
        $('#number_tlp').val(data.number_tlp);
        $('#address').val(data.address);
        $('#email').val(data.email);

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
    url : "<?php echo site_url('registration/updateData')?>",
    type: "POST",
    data: {
      id:$('#id').val(),
      name_store:$('#name_store').val(),
      number_id:$('#number_id').val(),
      number_tlp:$('#number_tlp').val(),
      address:$('#address').val(),
      email:$('#email').val()
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
        url : "<?php echo site_url('registration/delete')?>/"+id,
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