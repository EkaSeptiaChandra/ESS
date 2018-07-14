$(document).ready(function () {
    $('#provinsi_1').on('change', function () {
        prov = $('#provinsi_1').val();
        var spanProv = $('option:selected', this).attr('data-value');       
        $('#spanProv').html(spanProv);

        $('#dapil_1').on('change', function () {
            dapils = $('#dapil_1').val();
            var spanDapil = $('option:selected', this).attr('data-value');            
            $('#spanDapil').html(spanDapil);

            var dataTable = $('#lookup').DataTable({
                'autoWidth': true,
                'aoColumnDefs': [
                    {'bSortable': false, 'aTargets': ['nosort']}
                ],
                'processing': true,
                'serverSide': true,
                'ajax': {
                    type: 'POST',
                    dataType: 'JSON',
                    url: 'application/ajax.php?dapil=' + dapils
                },
                fnDrawCallback: function (oSettings) {

                    $('.act_btn').each(function () {
                        $(this).tooltip({
                            html: true
                        });
                    });

                    $('.act_btn').on('click', function (e) {
                        e.preventDefault();
                        var com = $(this).attr('data-original-title');
                        var id = $(this).attr('id');

                        if (com == 'Edit') {
                            $('#add_model').modal({backdrop: 'static', keyboard: false});
                            $('.modal-title').html('Edit provinsi');
                            $('#action').val('edit');
                            $('#edit_id').val(id);

                            v_edit = $.ajax({
                                url: 'application/provinsi/edit.php?id=' + id,
                                type: 'POST',
                                dataType: 'JSON',
                                success: function (data) {
                                    $('#kode').attr('readonly', true);
                                    $('#kode').val(data.kode_provinsi);
                                    $('#provinsi').val(data.nama_provinsi);
                                    $('#keterangan').val(data.keterangan);
                                }
                            });

                        } else if (com == 'Delete') {
                            var conf = confirm('Delete this items ?');
                            var url = 'application/provinsi/data.php';

                            if (conf) {
                                $.post(url, {id: id, action: com.toLowerCase()}, function () {
                                    var table = $('#lookup').DataTable();
                                    table.ajax.reload();
                                });
                            }
                        }
                    });
                }
            });//end datatable
        });
    });

    var items_prov = '';
    var items_dapil = '';

    $.ajax({
        url: 'application/option_prov.php',
        type: 'get',
        dataType: 'JSON',
        success: function (data) {
            $.each(data, function (key, value) {
                items_prov += '<option value="' + value.kode_provinsi + '" data-value="' + value.nama_provinsi + '">' + value.nama_provinsi + '</option>';
            });

            $('.provinsi_1, .provinsi_2').append(items_prov);
        }
    });

    $.ajax({
        url: 'application/option_dapil.php',
        dataType: 'JSON',
        success: function (data) {
            $.each(data, function (key, value) {
                items_dapil += '<option value="' + value.kode_dapil + '" data-value="' + value.nama_dapil + '">' + value.nama_dapil + '</option>';
            });

            $('.dapil_1, .dapil_2').append(items_dapil);
        }
    });

    /*   $('#btnNext').click(function() {
     var id_prov = $('#provinsi').val();
     var id_dapil = $('#dapil').val();
     
     $.ajax({
     type: 'POST',
     dataType: 'JSON',
     url: 'application/ajax.php?id_prov='+id_prov+'&id_dapil='+id_dapil
     
     });
     }); */
});