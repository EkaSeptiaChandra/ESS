<div class="row">
    <div class="col-lg-12">

        <ul class="nav nav-tabs tabs">
            <li class="active tab">
                <a href="#grafik" data-toggle="tab" aria-expanded="false"> 
                    <span class="visible-xs"><i class="fa fa-signal"></i></span> 
                    <span class="hidden-xs">Grafik Analisa</span> 
                </a> 
            </li> 
            <li class="tab"> 
                <a href="#ta" data-toggle="tab" aria-expanded="false"> 
                    <span class="visible-xs"><i class="fa fa-table"></i></span> 
                    <span class="hidden-xs">Tabel Analisa</span> 
                </a> 
            </li> 
            <li class="tab"> 
                <a href="#ha" data-toggle="tab" aria-expanded="true"> 
                    <span class="visible-xs"><i class="fa fa-envelope-o"></i></span> 
                    <span class="hidden-xs">Hasil Analisa</span> 
                </a> 
            </li>              
        </ul>

        <div class="tab-content">
            <div class="tab-pane active" id="grafik">
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
            </div>
            <div class="tab-pane" id="ta">
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
                    <tbody></tbody>
                </table>
            </div>
            <div class="tab-pane" id="ha">
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
                            <tbody></tbody>
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
    </div>
</div>