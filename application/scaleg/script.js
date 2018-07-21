var items_prov = '';
var items_dapil = '';

$(document).ready(function(){
  callProvinsi();

  $('#provinsi_1').on('change', function () {
    dropdown = $('.dapil_1').empty();
    dropdown.append('<option selected="true" disabled>PILIH DAPIL</option>');
    dropdown.prop('selectedIndex', 0);
    prov = $('#provinsi_1').val();
    var spanProv = $('option:selected', this).attr('data-value');
    $('#spanProv').html(spanProv);
    GetDapil(prov);
  });

  $('#dapil_1').on('change', function (e) {
    e.preventDefault();
    dapil = $('#dapil_1').val();
    
    var dataTable = $('#lookup').DataTable({
      retrieve: true,
      'ajax': {
        type: 'POST',
        dataType: 'JSON',
        url: 'application/scaleg/ajax.php?dapil='+dapil,
      }
    });//end datatable
    dataTable.ajax.url('application/scaleg/ajax.php?dapil=' + dapil).load();
        
    });

    var spanDapil = $('option:selected', this).attr('data-value');
    $('#spanDapil').html(spanDapil);

  });


function callProvinsi(params) {
  $.ajax({
    url: 'application/option_prov.php',
    type: 'POST',
    dataType: 'JSON',
    success: function (data) {
      $.each(data, function (key, value) {
        items_prov += '<option value="' + value.kode_provinsi + '" data-value="' + value.nama_provinsi + '">' + value.nama_provinsi + '</option>';
      });

      $('.provinsi_1').append(items_prov);
    }
  });
}

function GetDapil(action) {
  $.ajax({
    url: 'application/option_dapil.php?KodeProv=' + action,
    type: 'POST',
    dataType: 'JSON',
    success: function (data) {
      $.each(data, function (key, value) {
        $('.dapil_1').append($('<option></option>').attr({
          'value': value.kode_dapil,
          'data-value': value.nama_dapil
        }).text(value.nama_dapil))
      });

    }
  });
}