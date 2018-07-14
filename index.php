<?php include("config/config.php"); ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <link rel="shortcut icon" href="assets/images/favicon_1.ico">

        <title>e-Vote Simulation System</title>

        <!--CSS-->
        <link rel="stylesheet" type="text/css" href="assets/plugins/jquery.steps/css/jquery.steps.css" />
        <link href="assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css" rel="stylesheet" />
        <link href="assets/plugins/switchery/css/switchery.min.css" rel="stylesheet" />
        <link href="assets/plugins/multiselect/css/multi-select.css"  rel="stylesheet" type="text/css" />
        <link href="assets/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/plugins/bootstrap-select/css/bootstrap-select.min.css" rel="stylesheet" />
        <link href="assets/plugins/bootstrap-touchspin/css/jquery.bootstrap-touchspin.min.css" rel="stylesheet" />

        

        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />


        <!-- DataTables -->
        <link href="assets/plugins/bootstrap-table/css/bootstrap-table.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/datatables/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/datatables/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/datatables/fixedColumns.dataTables.min.css" rel="stylesheet" type="text/css"/>

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="assets/js/modernizr.min.js"></script>

    </head>

    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <div class="text-center">
                        <a href="index.html" class="logo"><i class="icon-magnet icon-c-logo"></i><span>ESS</span></a>
                        <!-- Image Logo here -->
                        <!--<a href="index.html" class="logo">-->
                            <!--<i class="icon-c-logo"> <img src="assets/images/logo_sm.png" height="42"/> </i>-->
                            <!--<span><img src="assets/images/logo_light.png" height="20"/></span>-->
                        <!--</a>-->
                    </div>
                </div>

                <!-- Button mobile view to collapse sidebar menu -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="container">
                        <div class="">
                            <div class="pull-left">
                                <button class="button-menu-mobile open-left waves-effect waves-light">
                                    <i class="md md-menu"></i>
                                </button>
                                <span class="clearfix"></span>
                            </div>

                            <ul class="nav navbar-nav hidden-xs">
                                <li><a href="#" class="waves-effect waves-light">DASHBOARD</a></li>
                                <li><a href="#" class="waves-effect waves-light">DATA CALEG</a></li>
                                <li><a href="#" class="waves-effect waves-light">SIMULASI</a></li>
<!--                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown"
                                       role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span
                                            class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </li>-->
                            </ul>

<!--                            <form role="search" class="navbar-left app-search pull-left hidden-xs">
                                <input type="text" placeholder="Search..." class="form-control">
                                <a href=""><i class="fa fa-search"></i></a>
                            </form>-->


                            <ul class="nav navbar-nav navbar-right pull-right">
                                <li class="dropdown top-menu-item-xs">
                                    <a href="#" data-target="#" class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="true">
                                        <i class="icon-bell"></i> <span class="badge badge-xs badge-danger">3</span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-lg">
                                        <li class="notifi-title"><span class="label label-default pull-right">New 3</span>Notification</li>
                                        <li class="list-group slimscroll-noti notification-list">
                                            <!-- list item-->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <div class="media">
                                                    <div class="pull-left p-r-10">
                                                        <em class="fa fa-diamond noti-primary"></em>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="media-heading">A new order has been placed A new order has been placed</h5>
                                                        <p class="m-0">
                                                            <small>There are new settings available</small>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>

                                            <!-- list item-->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <div class="media">
                                                    <div class="pull-left p-r-10">
                                                        <em class="fa fa-cog noti-warning"></em>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="media-heading">New settings</h5>
                                                        <p class="m-0">
                                                            <small>There are new settings available</small>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>

                                            <!-- list item-->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <div class="media">
                                                    <div class="pull-left p-r-10">
                                                        <em class="fa fa-bell-o noti-custom"></em>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="media-heading">Updates</h5>
                                                        <p class="m-0">
                                                            <small>There are <span class="text-primary font-600">2</span> new updates available</small>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>

                                            <!-- list item-->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <div class="media">
                                                    <div class="pull-left p-r-10">
                                                        <em class="fa fa-user-plus noti-pink"></em>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="media-heading">New user registered</h5>
                                                        <p class="m-0">
                                                            <small>You have 10 unread messages</small>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>

                                            <!-- list item-->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <div class="media">
                                                    <div class="pull-left p-r-10">
                                                        <em class="fa fa-diamond noti-primary"></em>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="media-heading">A new order has been placed A new order has been placed</h5>
                                                        <p class="m-0">
                                                            <small>There are new settings available</small>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>

                                            <!-- list item-->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <div class="media">
                                                    <div class="pull-left p-r-10">
                                                        <em class="fa fa-cog noti-warning"></em>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="media-heading">New settings</h5>
                                                        <p class="m-0">
                                                            <small>There are new settings available</small>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="list-group-item text-right">
                                                <small class="font-600">See all notifications</small>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="hidden-xs">
                                    <a href="#" id="btn-fullscreen" class="waves-effect waves-light"><i class="icon-size-fullscreen"></i></a>
                                </li>
                                <li class="hidden-xs">
                                    <a href="#" class="right-bar-toggle waves-effect waves-light"><i class="icon-settings"></i></a>
                                </li>
                                <li class="dropdown top-menu-item-xs">
                                    <a href="" class="dropdown-toggle profile waves-effect waves-light" data-toggle="dropdown" aria-expanded="true"><img src="assets/images/users/avatar-1.jpg" alt="user-img" class="img-circle"> </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0)"><i class="ti-user m-r-10 text-custom"></i> Profile</a></li>
                                        <li><a href="javascript:void(0)"><i class="ti-settings m-r-10 text-custom"></i> Settings</a></li>
                                        <li><a href="javascript:void(0)"><i class="ti-lock m-r-10 text-custom"></i> Lock screen</a></li>
                                        <li class="divider"></li>
                                        <li><a href="javascript:void(0)"><i class="ti-power-off m-r-10 text-danger"></i> Logout</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!--/.nav-collapse -->
                    </div>
                </div>
            </div>
            <!-- Top Bar End -->
            <!-- ========== Left Sidebar Start ========== -->
            <div class="left side-menu">
                <div class="sidebar-inner slimscrollleft">
                    <!--- Divider -->
                    <div id="sidebar-menu">
                        <ul>
                            <li class="text-muted menu-title">Navigasi</li>
                            <li class="has_sub">
                                <a href="javascript:void(0);" class="waves-effect"><i class="ti-home"></i> <span> Dashboard </span> <span class="menu-arrow"></span></a>
                                <ul class="list-unstyled">
                                    <li><a href="index.html">Dashboard 1</a></li>
                                    <li><a href="dashboard_2.html">Dashboard 2</a></li>
                                    <li><a href="dashboard_3.html">Dashboard 3</a></li>
                                    <li><a href="dashboard_4.html">Dashboard 4</a></li>
                                </ul>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- Left Sidebar End -->
            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">

                        <!-- Page-Title -->
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="btn-group pull-right m-t-15">
                                    <button type="button" class="btn btn-default dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false">Settings <span class="m-l-5"><i class="fa fa-cog"></i></span></button>
                                    <ul class="dropdown-menu drop-menu-right" role="menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>

                                <h4 class="page-title">SIMULASI</h4>
                                <!--<ol class="breadcrumb">
                                    <li>
                                        <a href="#">Ubold</a>
                                    </li>
                                    <li>
                                        <a href="#">Components</a>
                                    </li>
                                    <li class="active">SIMULASI</li>
                                </ol>-->
                            </div>
                        </div>
                        <!-- Basic Form Wizard -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card-box">
                                    <h4 class="m-t-0 header-title"><b>Dewan Perwakilan Rakyat RI (DPR RI)</b></h4>
                                    <form id="basic-form" action="#">
                                        <div>
                                            <h3>PILIH DATA</h3>
                                            <section>
                                                <div class="card-box table-responsive">											
                                                    <div class="col-md-6">											
                                                        <select class="form-control select2 provinsi_1" id = "provinsi_1" name = "provinsi">
                                                            <option>PILIH PROVINSI</option>
                                                        </select>
                                                        <select class="form-control select2 dapil_1" id = "dapil_1" name = "dapil" >
                                                            <option>PILIH DAPIL</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </section>
                                            <h3>PILIH CALEG</h3>
                                            <section>
                                                <div class="row">
                                                    <div class="col-sm-24">
                                                        <div class="card-box table-responsive">
                                                            <h4 class="m-t-0 header-title"><b>DATA CALEG</b></h4>
                                                            <p>Provinsi : <span id="spanProv"></span></p>
                                                            <p>Dapil: <span id="spanDapil"></span></p>
                                                            <table id="lookup"
                                                                   class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0"
                                                                   width="100%">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="nosort">KODE CALEG</th>
                                                                        <th>NAMA CALEG</th>
                                                                        <th>NAMA PARTAI</th>                                                                        
                                                                        <th>SUARA CALEG</th>
                                                                        <th>SUARA PARTAI</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>																					
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </section>
                                            <h3>SIMULASI</h3>
                                            <section>
                                                <div class="card-box">	
                                                    <div class="card-box table-responsive">
                                                        <div class="col-md-6">											
                                                            <select class="form-control select2 provinsi_2" id="provinsi_2" name="provinsi">
                                                                <option>PILIH PROVINSI</option>	                                 
                                                            </select>
                                                            <select class="form-control select2 dapil_2" id="dapil_2" name="dapil">
                                                                <option>PILIH DAPIL</option>	                                 
                                                            </select>
                                                            <select class="form-control select2 partai" id="partai" name="partai">
                                                                <option>PILIH PARTAI</option>	                                 
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>    
                                            </section>
                                            <h3>HASIL SIMULASI</h3>
                                            <section>
                                                <div class="col-lg-6">
                                                    <div class="card-box">
                                                        <h4 class="m-t-0 header-title"><b>Bar Chart</b></h4>
                                                        <p class="text-muted m-b-15 font-13">A bar chart is a way of showing data as bars.
                                                            It is sometimes used to show trend data, and the comparison of multiple data sets side by side.
                                                        </p>
                                                        <canvas id="bar" height="300"></canvas>
                                                    </div>
                                                </div>
                                            </section>
                                        </div>
                                    </form> 
                                </div>
                            </div>
                        </div>
                        <!-- End row -->
                    </div> <!-- container -->
                </div> <!-- content -->
                <footer class="footer">
                    © 2018. e-Vote Simulation System All rights reserved.
                </footer>
            </div>
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->
        </div>
        <!-- END wrapper -->
        <script>
            var resizefunc = [];
        </script>
        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/wow.min.js"></script>
        <script src="assets/js/jquery.nicescroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
        <script src="assets/plugins/bootstrap-table/js/bootstrap-table.min.js"></script>
        <script src="assets/pages/jquery.bs-table.js"></script>
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

        <!--Form Wizard-->
        <script src="assets/plugins/jquery.steps/js/jquery.steps.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="assets/plugins/jquery-validation/js/jquery.validate.min.js"></script>

        <!--wizard initialization-->
        <script src="assets/pages/jquery.wizard-init.js" type="text/javascript"></script>

        <script src="assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.min.js"></script>
        <script src="assets/plugins/switchery/js/switchery.min.js"></script>
        <script type="text/javascript" src="assets/plugins/multiselect/js/jquery.multi-select.js"></script>
        <script type="text/javascript" src="assets/plugins/jquery-quicksearch/jquery.quicksearch.js"></script>
        <script src="assets/plugins/select2/js/select2.min.js" type="text/javascript"></script>
        <script src="assets/plugins/bootstrap-select/js/bootstrap-select.min.js" type="text/javascript"></script>
        <script src="assets/plugins/bootstrap-filestyle/js/bootstrap-filestyle.min.js" type="text/javascript"></script>
        <script src="assets/plugins/bootstrap-touchspin/js/jquery.bootstrap-touchspin.min.js" type="text/javascript"></script>
        <script src="assets/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
        <!--
        <script type="text/javascript" src="assets/plugins/autocomplete/jquery.mockjax.js"></script>
        <script type="text/javascript" src="assets/plugins/autocomplete/jquery.autocomplete.min.js"></script>
        <script type="text/javascript" src="assets/plugins/autocomplete/countries.js"></script>
        <script type="text/javascript" src="assets/pages/autocomplete.js"></script>
        -->
        <script type="text/javascript" src="assets/pages/jquery.form-advanced.init.js"></script>
        <script src="assets/plugins/bootstrap-table/js/bootstrap-table.min.js"></script>
        <script src="assets/pages/jquery.bs-table.js"></script>
        <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/datatables/dataTables.bootstrap.js"></script>
        <script src="assets/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="assets/plugins/datatables/buttons.bootstrap.min.js"></script>
        <script src="assets/plugins/datatables/jszip.min.js"></script>
        <script src="assets/plugins/datatables/pdfmake.min.js"></script>
        <script src="assets/plugins/datatables/vfs_fonts.js"></script>
        <script src="assets/plugins/datatables/buttons.html5.min.js"></script>
        <script src="assets/plugins/datatables/buttons.print.min.js"></script>
        <script src="assets/plugins/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="assets/plugins/datatables/dataTables.keyTable.min.js"></script>
        <script src="assets/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="assets/plugins/datatables/responsive.bootstrap.min.js"></script>
        <script src="assets/plugins/datatables/dataTables.scroller.min.js"></script>
        <script src="assets/plugins/datatables/dataTables.colVis.js"></script>
        <script src="assets/plugins/datatables/dataTables.fixedColumns.min.js"></script>
        <!-- Chart JS -->
        <script src="assets/plugins/chart.js/chart.min.js"></script>
        <script src="assets/pages/jquery.chartjs.init.js"></script>
        <script>
            $(document).ready(function () {
                $('#provinsi_1').on('change', function () {
                    prov = $('#provinsi_1').val();
                    $('#dapil_1').on('change', function () {
                        dapils = $('#dapil_1').val();
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
                            items_prov += '<option value="' + value.kode_provinsi + '">' + value.nama_provinsi + '</option>';
                        });

                        $('.provinsi_1, .provinsi_2').append(items_prov);                        
                    }
                });

                $.ajax({
                    url: 'application/option_dapil.php',
                    dataType: 'JSON',
                    success: function (data) {
                        $.each(data, function (key, value) {
                            items_dapil += '<option value="' + value.kode_dapil + '">' + value.nama_dapil + '</option>';
                        });

                        $('.dapil_1, .dapil_2').append(items_dapil);
                    }
                });
                
                $.ajax({
                    url: 'application/option_partai.php',
                    dataType: 'JSON',
                    success: function (data) {
                        $.each(data, function (key, value) {
                            items_partai += '<option value="' + value.kode_partai + '">' + value.nama_partai + '</option>';
                        });

                        $('.partai').append(items_partai);
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
        </script>
    </body>
</html>