$(document).ready(function () {
    $('#provinsi_1').on('change', function () {
        prov = $('#provinsi_1').val();
        var spanProv = $('option:selected', this).attr('data-value');
        $('#spanProv').html(spanProv);
        GetDapil(prov);

        $('#dapil_1').on('change', function (e) {
            e.preventDefault();
            dapils = $('#dapil_1').val();

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
                    url: 'application/ajax.php?dapil=' + dapils,
                    error: function () {
                        $.Notification.notify(
                                'error', 'top center',
                                'Warning',
                                'Data tidak tersedia'
                                );
                    }
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
        type: 'POST',
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
            type: 'POST',
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
        type: 'POST',
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
        
        $('#bar').remove();
        $('#barDiv').html("<canvas id='bar' height='80px'></canvas>");

        $.ajax({
            url: 'application/simulasi/graph.php?caleg=' + caleg2 + '&dapil=' + dapil2 + '&partai=' + partai2,
            dataType: 'json',
            type: 'post',
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
                            backgroundColor: 'rgba(54, 162, 235, 0.5)',
                            borderColor: 'rgba(200, 200, 200, 0.75)',
                            hoverBackgroundColor: 'rgb(73, 139, 218)',
                            hoverBorderColor: 'rgb(73, 139, 218)',
                            stack: 1,
                            data: spartai
                        },
                        {
                            label: 'Suara Caleg',
                            backgroundColor: 'rgba(255, 159, 64, 0.5)',
                            borderColor: 'rgba(200, 200, 200, 0.75)',
                            hoverBackgroundColor: 'rgb(255, 159, 64)',
                            hoverBorderColor: 'rgb(255, 159, 64)',
                            stack: 0,
                            data: scaleg
                        }
                    ]
                };

                var ctx = $("#bar");

                var barGraph = new Chart(ctx, {
                    type: 'bar',
                    data: chartdata,
                    responsive: true,
                    maintainAspectRatio: false,
                    options: {
                        scales: {
                            yAxes: [{
                                    ticks: {
                                        fontSize: 10,
                                        beginAtZero: true
                                    }
                                }]
                        }

                    }
                });
            },
            error: function (data) {
                console.log(data);
            }
        });//end chart

        var dataTable2 = $('#lookup2').DataTable({            
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
                error: function () {
                    $.Notification.notify(
                            'error', 'top center',
                            'Warning',
                            'Data tidak tersedia'
                            );
                }
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
        dataTable2.ajax.url('application/simulasi/ajax.php?caleg=' + caleg2 + '&dapil=' + dapil2 + '&partai=' + partai2).load();
        
        var dataTable3 = $('#lookup3').DataTable({
            searching: false,
            paging: false,
            lengthChange: false,
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
                url: 'application/simulasi/grid.php?caleg=' + caleg2 + '&dapil=' + dapil2 + '&partai=' + partai2,
                error: function () {
                    $.Notification.notify(
                            'error', 'top center',
                            'Warning',
                            'Data tidak tersedia'
                            );
                }
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
        });
        dataTable3.ajax.url('application/simulasi/grid.php?caleg=' + caleg2 + '&dapil=' + dapil2 + '&partai=' + partai2).load();
    });
    
    $('#htps').on('click', function() {
        var jtps =$('#jtps').val();
        console.log(jtps)
        if(jtps == '') {
            alert('Silakan Masukan Jumlah TPS');
            $('#jtps').focus();            
        } else if(jtps == 0) {
            alert('Nilai Tidak Boleh 0 (Nol) !');
        } else {
            v_dump = $.ajax({
                url: 'application/simulasi/grid.php?prop='+jtps+'&caleg=' + caleg2 + '&dapil=' + dapil2 + '&partai=' + partai2,
                type: "POST",
                dataType: 'JSON',
                success: function (data, textStatus, jqXHR) {
                    $('#add_model').modal({backdrop: 'static', keyboard: false});
                    $('#add_model').modal('show');
                    
                }
            });
            
            console.log(v_dump)
        }
    });
});//end $ document
