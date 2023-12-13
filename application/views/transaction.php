
<!-- MAIN -->
<div class="main">
  <!-- MAIN CONTENT -->
  <div class="main-content">
    <div class="container-fluid">

      <div class="col-md-12">
        <div class="panel panel-headline">
          <div class="panel-heading">
            <h3 class="panel-title">Form Jurnal Umul</h3>
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="box-body">
                <form class="form" id="form-add-transaction">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-md-2">
                        <div class="form-group">
                          <label >Akun</label>
                          <select class="form-control select2" id="account" name="account" required></select>
                        </div>
                      </div>
                      <div class="col-md-2">
                        <div class="form-group">
                          <label >Rererensi 1</label>
                          <select class="form-control select2" id="ref1" name="ref1" required></select>
                        </div>
                      </div>
                      <div class="col-md-2">
                        <div class="form-group">
                          <label >Referensi 2</label>
                          <select class="form-control select2" id="ref2" name="ref2" required></select>
                        </div>
                      </div>
                      <div class="col-md-2">
                        <div class="form-group">
                          <label >Referensi 3</label>
                          <select class="form-control select2" id="ref3" name="ref3" required></select>
                        </div>
                      </div>
                      <div class="col-md-2">
                        <div class="form-group">
                          <label >Referensi 4</label>
                          <input class="form-control" type="text" id="ref4" name="ref4" required>
                        </div>
                      </div>
                      <div class="col-md-2">
                        <div class="form-group">
                          <label >Nominal</label>
                          <input class="form-control" type="number" id="amount" name="amount" required>
                        </div>
                      </div>
                    </div>
                    <hr/>
                  </div>
                  <div class="card-footer">
                    <div class="text-left">
                      <button type="button" class="btn btn-success" id="btn-debet-jurnal" onclick="addDebet()">Debet</button>
                      <button type="button" class="btn btn-primary " id="btn-kredit-jurnal" onclick="addKredit()">Kredit</button>
                      <button type="button" class="btn btn-warning pull-right" id="btn-posting-jurnal" onclick="show_modal_posting()"><i class="fa fa-paper-plane-o"></i> Posting Transaksi</button>
                    </div>
                  </div>
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-12">
        <div class="panel panel-headline">
          <div class="panel-body">
            <div class="row">
              <form id="form-posting" method="post">
                <div class="box-body">
                  <div class="card-body">
                    <div class="table-responsive">
                      <table id="table" class="table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                          <tr>
                            <th><input type="checkbox" id="select-all-list"></th>
                            <th>Akun</th>
                            <th>Referensi I</th>
                            <th>Referensi II</th>
                            <th>Referensi III</th>
                            <th>Referensi IV</th>
                            <th>Debet</th>
                            <th>Kredit</th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tfoot align="right">
                          <tr>
                            <th colspan="6" style="text-align:right">TOTAL</th>
                            <th></th>
                            <th></th>
                            <th></th>
                          </tr>
                        </tfoot>
                      </table>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

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

<div class="modal fade text-left" id="modal-posting" tabindex="-1" role="dialog" aria-labelledby="myModalLabel35" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="title"></h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form id="form-input-posting">
        <div class="modal-body">
          <fieldset class="form-group ">
            <label for="title">Tanggal</label>
            <input type="text" class="form-control datepicker" id="date" name="date" required >
          </fieldset>

          <fieldset class="form-group ">
            <label for="title">Note</label>
            <textarea id="note" name="note" rows="3" class="form-control" placeholder="Input ...."></textarea>
          </fieldset>
        </div>
        <div class="modal-footer">
          <input type="button" class="btn btn-primary" value="Posting" onclick="posting()" id="updateButton">
        </div>
      </form>
    </div>
  </div>
</div>

<script>
  $(document).ready(function() {
    $('#account').load("<?php echo site_url('transaction/getAccount'); ?>");
    $('#ref1').load("<?php echo site_url('transaction/ref1'); ?>");
    $('#ref2').load("<?php echo site_url('transaction/ref2'); ?>");
    $('#ref3').load("<?php echo site_url('transaction/ref3'); ?>");
    load_table();

    $('.datepicker').datepicker({
      autoclose: true,
      format: "yyyy-mm-dd",
      todayHighlight: true,
      orientation: "top auto",
      todayBtn: true,
      todayHighlight: true,
    });
    $(".select2").select2();
    $("#select-all-list").change(function(){
      var cells =  $('#table').DataTable().cells( ).nodes();
      $(cells).find(':checkbox').prop('checked', $(this).is(':checked'));
    });
  });
  
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
      "order": [],
      "ajax": {
        "url": "<?php echo site_url('transaction/load_data')?>",
        "type": "POST",
        "data": function ( data ) {
          data.ntrans = $('#ntrans').val();
        },
      },
    });
  }

  function reload_table(){
    table.ajax.reload(null, false);
  }

  function addDebet(){
    $.ajax({
      url : "<?php echo site_url('transaction/addDebet')?>",
      type: "POST",
      data: {
        account:$('#account').val(),
        ref1:$('#ref1').val(),
        ref2:$('#ref2').val(),
        ref3:$('#ref3').val(),
        ref4:$('#ref4').val(),
        amount:$('#amount').val(),
      },
      dataType: "JSON",
      success: function(data) {
        if (data) {
          swal("Sukses!", "Data Telah Disimpan !", "success");
          $("#form-add-transaction")[0].reset();
          $('#account').load("<?php echo site_url('transaction/getAccount'); ?>");
          $('#ref1').load("<?php echo site_url('transaction/ref1'); ?>");
          $('#ref2').load("<?php echo site_url('transaction/ref2'); ?>");
          $('#ref3').load("<?php echo site_url('transaction/ref3'); ?>");
          reload_table();
        }else{
          swal("Error!",data.msg, "error");
        }
      },
      error: function (jqXHR, textStatus, errorThrown ){
        swal("Error!", "Error get data from ajax !", "error");

      }
    });
  }

  function addKredit(){
    $.ajax({
      url : "<?php echo site_url('transaction/addKredit')?>",
      type: "POST",
      data: {
        account:$('#account').val(),
        ref1:$('#ref1').val(),
        ref2:$('#ref2').val(),
        ref3:$('#ref3').val(),
        ref4:$('#ref4').val(),
        amount:$('#amount').val(),
      },
      dataType: "JSON",
      success: function(data) {
        if (data) {
          swal("Sukses!", "Data Telah Disimpan !", "success");
          $("#form-add-transaction")[0].reset();
          $('#account').load("<?php echo site_url('transaction/getAccount'); ?>");
          $('#ref1').load("<?php echo site_url('transaction/ref1'); ?>");
          $('#ref2').load("<?php echo site_url('transaction/ref2'); ?>");
          $('#ref3').load("<?php echo site_url('transaction/ref3'); ?>");
          reload_table();
        }else{
          swal("Error!",data.msg, "error");
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
          url : "<?php echo site_url('transaction/delete')?>/"+id,
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

  function show_modal_posting(){ 
    $('#title').text('Form Posting');
    $("#form-input-posting")[0].reset();
    $('#modal-posting').modal('show');
  }

  function posting(){
    $.ajax({
      url : "<?php echo site_url('transaction/posting')?>",
      type: "POST",
      data: {
        data:$('#form-posting').serialize(),
        note :$('#note').val(),
        date :$('#date').val()
      },
      dataType: "JSON",
      success: function(data) {
        if (data.status) {
          swal('Sukses','Jurnal Telah Di Posting','success');
          $('#modal-posting').modal('hide');
          reload_table();
        }else{
          swal('Warning',data.msg,'error');
        }

      }
    });
  }
</script>