<?php echo load_datatables(); ?>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row" style="margin-bottom:1.5rem!important;">
                <div class="col-sm-6">
                    <h1><?= $page_title ?></h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Purchasequote</a></li>
                    </ol>
                </div>
            </div>
			
				<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<div class="row">
								<div class="col-md-12 col-sm-12 col-12 text-right">
									<a href="<?php echo base_url() ?>Purchase/create_purchase_list" class="btn btn-info btn-sm" style="margin-left: 700px;"><i class="fa fa-plus"></i> New</a>
									<hr/>
									
								</div>
								<div class="col-md-12 col-sm-12 col-12">
									<div class="table-responsive">
										<table class="table table-bordered" id="DataTable" width="100%">
											<thead>
												<tr>
													<th width="10%"> Quote No </th>
													<th width="15%">Quotations Date</th>
													<th width="15%">Supplier </th>
													<th width="15%">Total</th>
													<th width="15%">Prepared By </th>
													<th width="15%">Authorized By </th>
													
												</tr>
											</thead>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			      
			
			
			
			
			
			
			
			
			
			
			
		</div>
    </section>
</div>



<script>

$(document).ready(function(){
	$('#DataTable').DataTable({
		'processing': true,
		'serverSide': true,
		'serverMethod': 'post',
		"order": [[ 1, "DESC" ]],
		'ajax': {
			'url':	"<?= base_url().'list_purchase_quote' ?>",
			'type':	"POST"
		},
		"columnDefs": [{
			"targets": [0,8],
			"orderable": false
		}]
	});
});


$("#AddBtn").click(function(){
	clear_user_form();

	

	$("#FormModal").modal('show');
});

</script>