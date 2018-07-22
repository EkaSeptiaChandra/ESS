<div class="">    
    <div class="row">
        <div class="col-md-12">
            <div class="card-box">
                <h2 class="m-t-0 text-center">
                    <b>Simulasi Dewan Perwakilan Rakyat RI (DPR RI)</b>
                </h2>
                <p></p>
                <form id="basic-form" action="#">
                    <div>
                        <h3>PILIH DATA</h3>
                        <section>
                            <div class="card-box">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="provinsi">1. Pilih Provinsi</label>
                                            <select class="form-control select2 provinsi_1" id = "provinsi_1" name = "provinsi">
                                                <option>PILIH PROVINSI</option>
                                            </select>
                                        </div>                                        
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="dapil">2. Pilih Dapil</label>
                                            <select class="form-control select2 dapil_1" id = "dapil_1" name = "dapil" >
                                                <option>PILIH DAPIL</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>                                
                            </div>
                        </section>
                        <h3>PILIH CALEG</h3>
                        <section>
                            <div class="row">
                                <div class="col-sm-24">
                                    <div class="card-box">
                                        <h4 class="m-t-0 header-title"><b>DATA CALEG</b></h4>
                                        <table class="table table-borderless">
                                            <tr>
                                                <td width="10%">PROVINSI</td><td width="5%">:</td><td><span id="spanProv"></span></td>
                                            </tr>
                                            <tr>
                                                <td>DAPIL</td><td>:</td><td><span id="spanDapil"></span></td>
                                            </tr>
                                        </table>

                                        <table id="lookup"
                                               class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0"
                                               width="100%">
                                            <thead>
                                                <tr>
                                                    <th class="nosort">PILIH</th>
                                                    <th>KODE CALEG</th><th>NAMA CALEG</th>
                                                    <th>NAMA PARTAI</th><th>SUARA CALEG</th>
                                                    <th>SUARA PARTAI</th>
                                                    <th>(%) SUARA CALEG</th><th>(%) SUARA PARTAI</th>
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
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="hidden" id="edit_id" name="edit_id">
                                        <div class="form-group">                                            
                                            <label>1. Pilih Provinsi</label>
                                            <select class="form-control select2 provinsi_2" id="provinsi_2" name="provinsi">
                                                <option>PILIH PROVINSI</option>	                                 
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>3. Pilih Partai</label>
                                            <select class="form-control select2 partai" id="partai" name="partai">
                                                <option>PILIH PARTAI</option>	                                 
                                            </select>
                                        </div>                                                                                
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>2. Pilih Dapil</label>
                                            <select class="form-control select2 dapil_2" id="dapil_2" name="dapil">
                                                <option>PILIH DAPIL</option>	                                 
                                            </select>
                                        </div>
                                    </div>
                                </div>

                            </div>    
                        </section>
                        <h3>HASIL SIMULASI</h3>
                        <section>                            
                            <div class="row">
                                <div class="col-lg-12">
                                    <h4 class="m-t-0 header-title"><b>Hasil Simulasi</b></h4>
                                    <div class="panel panel-danger">
                                        <div class="panel-heading">
                                            <b class="text-white">
                                                <i class="fa fa-signal fa-fw"></i>
                                                Grafik Simulasi
                                            </b>
                                        </div>
                                        <div class="panel-body">
                                            <div class="graph">
                                                <div class="graph-container" id="barDiv">
                                                    <canvas id="bar" height="80px"></canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <table id="lookup2"
                                           class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0"
                                           width="100%">
                                        <thead>
                                            <tr>                                                
                                                <th>KODE CALEG</th><th>NAMA CALEG</th>
                                                <th>NAMA PARTAI</th><th>JUMLAH SUARA</th>                                                
                                                <th>PERSENTASE SUARA</th>
                                            </tr>
                                        </thead>
                                        <tbody>																					
                                        </tbody>
                                    </table>                                    

                                    <div class="panel panel-default">
                                        <div class="panel-heading text-uppercase">
                                            <b>Analisa Simulasi</b>
                                        </div>
                                        <div class="panel-body">
                                            <table id="lookup3"
                                                   class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0"
                                                   width="100%">
                                                <thead>
                                                    <tr>                                                
                                                        <th>KODE CALEG</th><th>NAMA CALEG</th>
                                                        <th>NAMA PARTAI</th><th>NAMA DAPIL</th>
                                                        <th>JUMLAH SUARA</th><th>(%) SUARA</th>
                                                        <th>MINIMUM SUARA</th><th>MINIMUM (%)</th>
                                                    </tr>
                                                </thead>
                                                <tbody>																					
                                                </tbody>
                                            </table>
                                            <p></p>

                                            <div class="row">
                                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                                    <div class="form-group">
                                                        <label>MINIMUN PEROLEHAN SUARA PER-TPS</label>

                                                        <div class="input-group">
                                                            <input type="number" id="jtps" name="jtps" class="input-sm form-control" min="0" placeholder="MASUKAN JUMLAH TPS" required="required">
                                                            <span class="input-group-btn">
                                                                <button type="button" id="htps" class="btn btn-sm btn-warning">HITUNG</button>
                                                            </span>
                                                        </div>
                                                        <span id="error"></span>
                                                    </div>
                                                </div>
                                            </div>                                            
                                        </div>
                                    </div>
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

<div id="add_model" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">            
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>

            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <div class="">
                    <button type="button" id="btn_cancel" class="btn btn-sm btn-danger" data-dismiss="modal">Close</button>
                    <button type="submit" id="btn_add" class="btn btn-sm btn-primary">Save</button>
                </div>                        
            </div>
        </div>
    </div>
</div>

