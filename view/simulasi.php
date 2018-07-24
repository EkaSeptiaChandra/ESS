<?php $section = new Section(); ?>
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
                            <?=$section->section1()?>
                        </section>
                        <h3>PILIH CALEG</h3>
                        <section>
                            <?=$section->section2()?>
                        </section>
                        <h3>SIMULASI</h3>
                        <section>
                            <?=$section->section3()?>  
                        </section>
                        <h3>HASIL SIMULASI</h3>
                        <section>                            
                            <?=$section->section4()?>
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
