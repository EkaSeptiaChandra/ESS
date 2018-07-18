$(document).ready(function () {
    $('#provinsi_1').on('change', function () {
        prov = $('#provinsi_1').val();
        var spanProv = $('option:selected', this).attr('data-value');
        $('#spanProv').html(spanProv);
        GetDapil(prov);

        $('#dapil_1').on('change', function (e) {
            e.preventDefault();
            dapils = $('#dapil_1').val();
            console.log(dapils)

            var spanDapil = $('option:selected', this).attr('data-value');
            $('#spanDapil').html(spanDapil);

            var dataTable = $('#lookup').DataTable({
                retrieve: true,
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

                    $('.act_btn').on('change', function (e) {
                        e.preventDefault();
                        var com = $(this).attr('data-original-title');
                        var id = $(this).attr('id');

                        //if (com == 'Edit') {                                                        
                        $('#action').val('edit');
                        $('#edit_id').val(id);
                        //} 
                    });
                }
            });//end datatable
            dataTable.ajax.url('application/ajax.php?dapil=' + dapils).load();
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

    $('#partai').on('change', function () {
        caleg2 = $('#edit_id').val();
        dapil2 = $('#dapil_2').val();
        partai2 = $('#partai').val();

        $.ajax({
            url: 'application/simulasi/graph.php?caleg=' + caleg2 + '&dapil=' + dapil2 + '&partai=' + partai2,
            dataType: 'json',
            type: 'get',
            success: function (data) {
                //console.log(data);
                var npartai = [];
                var spartai = [];
                var scaleg = [];

                for (var i in data) {
                    npartai.push(data[i].nama_partai);
                    spartai.push(data[i].persentase_partai);
                    scaleg.push(data[i].persentase_caleg);
                }
                console.log(spartai)

                var chartdata = {
                    labels: npartai,
                    datasets: [
                        {
                            label: 'Suara Partai',
                            backgroundColor: window.chartColors.blue,
                            borderColor: 'rgba(200, 200, 200, 0.75)',
                            hoverBackgroundColor: 'rgb(73, 139, 218)',
                            hoverBorderColor: 'rgb(73, 139, 218)',
                            stack: 1,
                            data: spartai
                        },
                        {
                            label: 'Suara Caleg',
                            backgroundColor: window.chartColors.orange,
                            borderColor: 'rgba(200, 200, 200, 0.75)',
                            hoverBackgroundColor: 'rgb(253, 232, 132)',
                            hoverBorderColor: 'rgb(253, 232, 132)',
                            stack: 0,
                            data: scaleg
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
        });//end chart

        var dataTable = $('#lookup2').DataTable({
            retrieve: true,
            'autoWidth': true,
            'aoColumnDefs': [
                {'bSortable': false, 'aTargets': ['nosort']}
            ],
            'processing': true,
            'serverSide': true,
            'ajax': {
                type: 'POST',
                dataType: 'JSON',
                url: 'application/simulasi/ajax.php?caleg=' + caleg2 + '&dapil=' + dapil2 + '&partai=' + partai2,
            },
            fnDrawCallback: function (oSettings) {

                $('.act_btn').each(function () {
                    $(this).tooltip({
                        html: true
                    });
                });

                $('.act_btn').on('change', function (e) {
                    e.preventDefault();
                    var com = $(this).attr('data-original-title');
                    var id = $(this).attr('id');

                    //if (com == 'Edit') {                                                        
                    $('#action').val('edit');
                    $('#edit_id').val(id);
                    //} 
                });
            }
        });//end datatable
    });
});
