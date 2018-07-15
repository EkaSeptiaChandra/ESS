$(document).ready(function () {
    $('#provinsi_1').on('change', function () {
        prov = $('#provinsi_1').val();
        var spanProv = $('option:selected', this).attr('data-value');
        $('#spanProv').html(spanProv);
        GetDapil(prov);

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
    var items_partai = '';

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

    function GetDapil(action) {
        $.ajax({
            url: 'application/option_dapil.php?KodeProv=' + action,
            dataType: 'JSON',
            success: function (data) {
                $.each(data, function (key, value) {
                    items_dapil += '<option value="' + value.kode_dapil + '" data-value="' + value.nama_dapil + '">' + value.nama_dapil + '</option>';
                });

                $('.dapil_1, .dapil_2').append(items_dapil);
            }
        });
    }

    $.ajax({
        url: 'application/option_partai.php',
        dataType: 'JSON',
        success: function (data) {
            $.each(data, function (key, value) {
                items_partai += '<option value="' + value.kode_partai + '" data-value="' + value.nama_partai + '">' + value.nama_partai + '</option>';
            });

            $('.partai').append(items_partai);
        }
    });

    $('#dapil_2').on('change', function () {
        dapil2 = $('#dapil_2').val();

        $.ajax({
            url: "application/simulasi/data_partai.php?dapil=" + dapil2,
            dataType: 'json',
            type: 'get',
            success: function (data) {
                //console.log(data);
                var npartai = [];
                var spartai = [];
                var scaleg = [];

                for (var i in data) {
                    npartai.push(data[i].nama_partai);
                    spartai.push(data[i].persentase);
                }
                console.log(npartai)

                var chartdata = {
                    labels: npartai,
                    datasets: [
                        {
                            label: '',
                            backgroundColor: window.chartColors.blue,
                            borderColor: 'rgba(200, 200, 200, 0.75)',
                            hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
                            hoverBorderColor: 'rgba(200, 200, 200, 1)',
                            stack: 1,
                            data: spartai
                        },
                        {
                            label: '',
                            backgroundColor: window.chartColors.orange,
                            borderColor: 'rgba(200, 200, 200, 0.75)',
                            hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
                            hoverBorderColor: 'rgba(200, 200, 200, 1)',
                            stack: 0,
                            data: spartai
                        }
                    ]
                };

                var ctx = $("#bar");

                var barGraph = new Chart(ctx, {
                    type: 'bar',
                    data: chartdata
                });
            },
            error: function (data) {
                console.log(data);
            }
        });
    });


});