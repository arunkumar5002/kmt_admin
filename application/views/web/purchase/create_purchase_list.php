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
			
			                    <div class="container-fluid">
                                 <div class="row"> 
                                <div class="col-md-12 col-sm-12 col-12">
							  <form autocomplete="OFF" id="DataForm">
							  <input type="hidden" name="row_id" id="row_id" />
                                <div class="row">
									<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Quote No <span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="quote_no" id="quote_no"  />
												</div>
											</div>
									
									<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Quote Date  <span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm datepicker" name="quote_date" id="quote_date"  />
												</div>
											</div>
									
									
									<div class="col-md-4">
												<div class="form-group">
													<label class="form-check-label">Vendor  <span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="vendor" id="vendor"  />
												</div>
											</div>
											
											
											<div class="col-md-2" style="margin-top: 23px;">
												<div class="form-group">
													<button type="button" id="AddBtn2" class="btn btn-info btn-sm"><i class="fa fa-plus"></i> New</button>
												</div>
											</div>
									
									<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Initiated By  <span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="initiated_by" id="initiated_by"  />
												</div>
											</div>
									
									
									<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Prepared By   <span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="prepared_by" id="prepared_by"  />
												</div>
											</div>
											
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Authorized By <span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="authorized_by" id="authorized_by"  />
												</div>
											</div>
											
									<div class="col-md-4">
									<button type="submit" class="btn btn-success btn-sm">Submit</button>
					                 <button type="reset" class="btn btn-danger btn-sm">Reset</button>
									 </div>
			
									  </div>
									  </form>
												  </div>
												  </div>
												  </div>
													
			
			
			                   <div class="row"> 
								<div class="col-md-11 col-sm-12 col-12" style="    margin-top: 45px;">
								<div class="form-group" style='background:#1a82c3;color:#fff;font-weight:bold;height:50px;'>
			 <table border="1" width="100%" class="table" id="entry">
                    <thead>
                        <tr>
                            <th width="">Item Name <a id="AddBtn" style="cursor:pointer;  color:orange !important">[New] </a></th>
                            <th width="">Description</th>
                            <th width="">Quantity</th>
                            <th width="">Rate</th>
                            <th width="">Total</th>
                            <th width=""></th>
                        </tr>
                    </thead>

                    <tbody>
							
							
		<tr>
							<td><input type="text" class="form-control btn-sm" name="item_name[]"></td>
							<td><input type="text" class="form-control btn-sm" name="description[]"></td>
							<td><input type="text" class="form-control btn-sm" name="quantity[]"></td>
							<td><input type="number" class="form-control btn-sm rate" name="rate[]"></td>
							<td><input type="number" class="form-control btn-sm total" name="total[]" readonly></td>
							
							<td><button type="button" class="btn btn-primary remove">X</button></td>
						</tr>
                    </tbody>
                </table>
				</div>
								
								
									</div>
									<div class="col-md-1" style="margin-top: 45px;">
												<div class="form-group">
													<button type="button" class="btn btn-info btn-sm add" style="float:right;"><i class="fa fa-plus"></i> Add  </button>
												</div>
											</div>
								</div>
						
			
			
			
			
			
			
			
		</div>
 

			
<!---Add1-->

<div class="modal fade show" id="FormModal1" aria-modal="true" role="dialog">
	<div class="modal-dialog modal-lg">
		<form id="vendorDataForm" autocomplete="OFF">
			<input type="hidden" name="row_id" id="row_id" />
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="FormModalHeading">Create New Vendor</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label class="form-check-label">Vendor Name <span class="text-required">*</span></label>
								<input type="text" class="form-control form-control-sm" name="vendor_name" id="vendor_name" required />
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label class="form-check-label">Phone <span class="text-required">*</span></label>
								<input type="text" class="form-control form-control-sm" name="phone" id="phone" required />
							</div>
						</div>
						
						<div class="col-md-4">
							<div class="form-group">
								<label class="form-check-label">Email <span class="text-required">*</span></label>
								<input type="text" class="form-control form-control-sm" name="email" id="email" required />
							</div>
						</div>
						<div class="col-md-4">
													<div class="form-group">
															<label class="form-check-label">Currency <span class="text-required">*</span></label>
															<select class="form-control form-control-sm" name="currency" id="currency" required>
																<option value=''>--Select Currency--</option>
													<option value='Singapore Dollar'>Singapore Dollar</option>
													<option value='US Dollar'>US Dollar</option>
																
															</select>
														</div>
													</div>
						<div class="col-md-4">
														<div class="form-group">
															<label class="form-check-label">Account Name <span class="text-required">*</span></label>
															<select class="form-control form-control-sm" name="account_name" id="account_name" required>
																<option value="">--select one--</option>
																<option value='Sulaiman'>Sulaiman</option>
													<option value='ramkumar'>ramkumar </option>
		
																
															</select>
														</div>
													</div>
						
					</div>
				</div>
				<div class="modal-footer" style="text-align:left !important;">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-success">Submit</button>
					<button type="reset" class="btn btn-danger">Reset</button>
				</div>
			</div>
		</form>
	</div>
</div>


<!---Add2-->


<div class="modal fade show" id="FormModal" aria-modal="true" role="dialog">
	<div class="modal-dialog modal-lg">
		<form id="DataForm1" autocomplete="OFF">
			<input type="hidden" name="user_row_id" id="user_row_id" />
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="FormModalHeading">Create New Item Name</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label class="form-check-label">Item Name <span class="text-required">*</span></label>
								<input type="text" class="form-control form-control-sm" name="firstname" id="firstname" required />
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label class="form-check-label">Amount <span class="text-required">*</span></label>
								<input type="text" class="form-control form-control-sm" name="firstname" id="firstname" required />
							</div>
						</div>
						<div class="col-md-4">
														<div class="form-group">
															<label class="form-check-label">Account <span class="text-required">*</span></label>
															<select class="form-control form-control-sm" name="account_status" id="account_status" required>
																<option value=''>-- Select Status --</option>
																
															</select>
														</div>
													</div>
						<div class="col-md-4">
							<div class="form-group">
								<label class="form-check-label">Quantity <span class="text-required">*</span></label>
								<input type="text" class="form-control form-control-sm" name="firstname" id="firstname" required />
							</div>
						</div>
						<div class="col-md-4">
														<div class="form-group">
															<label class="form-check-label">Tax <span class="text-required">*</span></label>
															<select class="form-control form-control-sm" name="account_status" id="account_status" required>
																<option value=''>-- Select Status --</option>
																
															</select>
														</div>
													</div>
						<div class="col-md-4">
							<div class="form-group">
								<label class="form-check-label">Location <span class="text-required">*</span></label>
								<input type="text" class="form-control form-control-sm" name="firstname" id="firstname" required />
							</div>
						</div>
						
					</div>
				</div>
				<div class="modal-footer" style="text-align:left !important;">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-success">Submit</button>
					<button type="reset" class="btn btn-danger">Reset</button>
				</div>
			</div>
		</form>
	</div>
</div>


			
		<script>
		 $(document).on('click','.add',function(){

				str = `<tr>
							<td><input type="text" class="form-control btn-sm" name="sku[]"></td>
							<td><input type="text" class="form-control btn-sm" name="sku_desc[]"></td>
							<td><input type="text" class="form-control btn-sm" name="ean[]"></td>
							<td><input type="number" class="form-control btn-sm quantity" name="quantity[]"></td>
							<td><input type="number" class="form-control btn-sm mrp" name="mrp[]" readonly></td>
							
							<td><button type="button" class="btn btn-primary remove">X</button></td>
						</tr>`;
				
				$(".table tbody").append(str);
       });
	   


</script>


								
   </section>
</div>
<script>
	   $("#AddBtn").click(function(){

	$("#FormModal").modal('show');
});

</script>
<script>
	   $("#AddBtn2").click(function(){
$("#FormModal1").modal('show');

});

</script>

<script>
$(document).ready(function() {
		$('#DataTable').DataTable({
			'processing': true,
			'serverSide': true,
			'serverMethod': 'post',
			"order": [
				[1, "asc"]
			],
			'ajax': {
				'url': "<?= base_url() . 'list_purchase_quote' ?>",
				'type': "POST"
			},
			"columnDefs": [{
				"targets": [0, 3],
				"orderable": false
			}]
		});
	});

	$("#ResetBtn").click(function() {
		clear_data_form();
	});

	$("#DataForm").on('submit', (function(e) {
		e.preventDefault();
		var formData = new FormData($("#DataForm")[0]);
		$.ajax({
			url: "<?= base_url() .'add_purchase_quote' ?>",
			type: "POST",
			data: formData,
			dataType: "JSON",
			contentType: false,
			cache: false,
			processData: false,
			beforeSend: function() {
				$("#DataForm [type='submit']").attr('disabled', true);
			},
			success: function(data) {
				if (data['status'] == "Error") {
					toastr.error(data['msg']);
				} else {
					clear_data_form();
					$('#DataTable').DataTable().ajax.reload(null, false);
					toastr.success(data['msg']);
				}
			},
			complete: function(data) {
				$("#DataForm [type='submit']").attr('disabled', false);
			},
		});
	}));

	

	function clear_data_form() {
		$('#row_id').val('');
		$("#DataForm [type='submit']").html('Submit');
		$("#DataForm").trigger('reset');
	}


</script>



<script>




	$("#ResetBtn").click(function() {
		clear_data_form();
	});

	$("#vendorDataForm").on('submit', (function(e) {
		e.preventDefault();
		var formData = new FormData($("#vendorDataForm")[0]);
		$.ajax({
			url: "<?= base_url() .'add_vendor' ?>",
			type: "POST",
			data: formData,
			dataType: "JSON",
			contentType: false,
			cache: false,
			processData: false,
			beforeSend: function() {
				$("#vendorDataForm [type='submit']").attr('disabled', true);
			},
			success: function(data) {
				if (data['status'] == "Error") {
					toastr.error(data['msg']);
				} else {
					clear_data_form();
					$('#DataTable').DataTable().ajax.reload(null, false);
					toastr.success(data['msg']);
				}
			},
			complete: function(data) {
				$("#vendorDataForm [type='submit']").attr('disabled', false);
			},
		});
	}));

	

	function clear_data_form() {
		$('#row_id').val('');
		$("#vendorDataForm [type='submit']").html('Submit');
		$("#vendorDataForm").trigger('reset');
	}



</script>



