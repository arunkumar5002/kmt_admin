<div class="content-wrapper">

    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                      <h1><?= $page_title ?></h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active"><a href="<?php echo base_url() ?>Web/newmaster">lnventory</a></li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>


    <div class="right_col" style=" padding: 20px;" role="main">
        <div class="" style="background-color: white;
    padding: 14px;">

            <div class="page-title">
                <div class="title_left">

                </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">

                        <div class="x_content">
                            <br>
                            <form autocomplete="OFF" id="DataForm">
							  <input type="hidden" name="row_id" id="row_id" />
                                <div class="row">
									        
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Item Code  <span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="itemcode" id="itemcode"  />
												</div>
											</div>
											
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Item Name <span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="itemname" id="itemname"  />
												</div>
											</div>
											
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Category <span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="category" id="category"  />
												</div>
											</div>
											
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Sub Category  <span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="subcategory" id="subcategory"  />
												</div>
											</div>
											
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Brand <span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="brand" id="brand"  />
												</div>
											</div>
											
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Cost Price <span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="costprice" id="costprice"  />
												</div>
											</div>
											
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Selling Price<span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="price" id="price"  />
												</div>
											</div>
											
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Quantity<span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="quantity" id="quantity"  />
												</div>
											</div>
											
											
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Product Origin<span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="product_origin" id="product_origin"  />
												</div>
											</div>
											
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Product Location<span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="location" id="location"  />
												</div>
											</div>
											
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Minimum Reorder Quantity<span class="text-required">*</span></label>
													<input type="text" class="form-control form-control-sm" name="min_reorder" id="min_reorder"  />
												</div>
											</div>
											
											
											<div class="col-md-6">
												<div class="form-group">
													<label class="form-check-label">Account<span class="text-required">*</span></label>
													<select id="account" name="account" class="form-control" required="">
                                            <option value="">--Select Currency--</option>
                                            <option value="Singapore Dollar">Singapore Dollar</option>
                                            <option value="US Dollar">US Dollar</option>
                                            <option value="Indian Rupee">Indian Rupee</option>
                                        </select>
												</div>
											</div>
											
										
                                    <div class="form-group">
                                        <div class="col-md-12 col-sm-12 col-xs-12 col-md-offset-4">
                                            <button type="submit" class="btn btn-success btn-sm">Submit</button>
					                        <button type="reset" class="btn btn-danger btn-sm">Reset</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




<script>

	$("#ResetBtn").click(function() {
		clear_data_form();
	});

	$("#DataForm").on('submit', (function(e) {
		e.preventDefault();
		var formData = new FormData($("#DataForm")[0]);
		$.ajax({
			url: "<?= base_url() .'add_item' ?>",
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

	$(document).on("click",".edit_data",function(){
	$("#DataForm [type='submit']").html('Update');
	$('#row_id').val($(this).attr('data-id'));
	$('#itemname').val($(this).attr('data-name'));
	
	$('#price').val($(this).attr('data-pri'));
	$('#account').val($(this).attr('data-acc'));
	
	$('#location').val($(this).attr('data-loc'));
	$('#quantity').val($(this).attr('data-qua'));
	
	$('#status').val($(this).attr('data-sta'));
	
	
	window.scroll({top: 0, behavior: "smooth"})
});


	function clear_data_form() {
		$('#row_id').val('');
		$("#DataForm [type='submit']").html('Submit');
		$("#DataForm").trigger('reset');
	}



</script>







