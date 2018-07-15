<div class="container">
    <!-- Page-Title -->
    <div class="row">
        <div class="col-sm-12">                                
            <h4 class="page-title">SIMULASI</h4>
            <p></p>
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
                            <div class="card-box">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="provinsi">Pilih Provinsi</label>
                                            <select class="form-control select2 provinsi_1" id = "provinsi_1" name = "provinsi">
                                                <option>PILIH PROVINSI</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="dapil">Pilih Dapil</label>
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
                                        <div class="form-group">
                                            <label>Pilih Provinsi</label>
                                            <select class="form-control select2 provinsi_2" id="provinsi_2" name="provinsi">
                                                <option>PILIH PROVINSI</option>	                                 
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Pilih Dapil</label>
                                            <select class="form-control select2 dapil_2" id="dapil_2" name="dapil">
                                                <option>PILIH DAPIL</option>	                                 
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Pilih Partai</label>
                                            <select class="form-control select2 partai" id="partai" name="partai">
                                                <option>PILIH PARTAI</option>	                                 
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
                                    <canvas id="bar" height="100"></canvas>

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