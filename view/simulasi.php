
<div class="row">
    <div class="col-md-12">
        <div class="card-box">
            <h2 class="m-t-0 text-center">
                <b>SIMULASI DEWAN PERWAKILAN RAKYAT RI (DPR RI)</b>
            </h2>
            <br>
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
                                                <th class="nosort"><center>PILIH</center></th>
                                        <th><center>KODE CALEG</center></th>
                                        <th><center>NAMA CALEG</center></th>
                                        <th><center>NAMA PARTAI</center></th>
                                        <th><center>SUARA CALEG</center></th>
                                        <th><center>SUARA PARTAI</center></th>
                                        <th><center>(%) SUARA CALEG</center></th>
                                        <th><center>(%) SUARA PARTAI</center></th>
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
                                <div class="graph">
                                    <div class="graph-container" id="barDiv">
                                        <canvas id="bar" height = "80px"></canvas>
                                    </div>
                                </div>

                                <p></p>
                                <table id="lookup2"
                                       class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0"
                                       width="100%">
                                    <thead>
                                        <tr>                                                
                                            <th><center>KODE CALEG</center></th>
                                    <th><center>NAMA CALEG</center></th>
                                    <th><center>NAMA PARTAI</center></th>
                                    <th><center>JUMLAH SUARA</center></th>                                                
                                    <th><center>PERSENTASE SUARA</center></th>
                                    </tr>
                                    </thead>
                                    <tbody>																					
                                    </tbody>
                                </table>
                                <p></p>

                                <div class="panel panel-default">
                                    <div class="panel-heading text-uppercase">
                                        Analisa
                                    </div>
                                    <div class="panel-body">

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

