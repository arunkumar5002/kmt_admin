<div class="content-wrapper">

    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Company Master</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active"><a href="<?php echo base_url() ?>Company/company_master_list">CompanyMaster</a></li>
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
                            <form enctype="multipart/form-data"  method="post" id="btnValidate"  action="<?php echo base_url(); ?>Company/savecompanymaster">
                                <input type="hidden" name="company_id"  value="<?php echo isset($ghfyhfyhe)?$ghfyhfyhe->company_id:'';?>">
                                <div class="row">
                                    <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                        <label for="companyname">Company Name
                                            <span class="required">*</span>
                                        </label>

                                        <input type="text" id="name" name="name" required="required" class="form-control" autocomplete="off" value="<?php echo isset($ghfyhfyhe)?$ghfyhfyhe->name:''?>">
                                       <span id="name_error" style="color:red;"></span>
                                    </div>
									
									<div class="form-group col-md-6 col-sm-6 col-xs-6">
                                         <label for="email">Email <span class="required">*</span>
                                         </label>

                                         <input type="text" pattern="[a-zA-Z0-9._\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,4}" id="email" name="email" required="required" title="Please Enter Your Correct Email Address" class="form-control " autocomplete="off"  value="<?php echo isset($ghfyhfyhe)?$ghfyhfyhe->email:'';?>"/>
                                         <span id="email" background="color:red"></span>
		                                  <h6 id="result"></h6>
                                     </div>
									
									 <div class="form-group col-md-6 col-sm-6 col-xs-6">
                                        <label for="fax">Landline <span class="required"></span>
                                        </label>

                                        <input type="text" id="landline" name="landline"  class="form-control " required="required" autocomplete="off" value="<?php echo isset($ghfyhfyhe)?$ghfyhfyhe->landline:''?>">
                                        <span id="landline_error" style="color:red;"></span>
                                    </div>
									
									
                                    <div class="form-group col-md-6">
                                        <label for="contact">Contact <span class="required"></span></label>

                                        <input id="mobile"  name="mobile" class="form-control" type="text" autocomplete="off" required="required" value="<?php echo isset($ghfyhfyhe)?$ghfyhfyhe->mobile:''?>">
                                             <span id="contact_error" style="color:red;"></span>
                                    </div>
									
                                    <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                        <label for="currency">Address<span class="required">*</span></label>
                                        <input type="text" id="street_name" name="street_name" class="form-control" required="required" autocomplete="off" value="<?php echo isset($ghfyhfyhe)?$ghfyhfyhe->street_name:''?>">
                                        <span id="street_error" style="color:red;"></span>
										<input type="hidden" name="building_number" value="" />
                                    </div>


                                    <div class="form-group col-md-6 col-sm-6 col-xs-6">
                                        <label for="locality">
                                            Locality<span class="required">*</span>
                                        </label>

                                        <input type="text" id="locality" name="locality" class=" form-control" required="" value="<?php echo isset($ghfyhfyhe)?$ghfyhfyhe->locality:''?>">
                                             <span id="locality_error" style="color:red;"></span>
                                    </div>
									
									  <div class="form-group col-md-6 col-sm-6 col-xs-6">
                                        <label for="currency">Pincode
                                             <span class="required">*</span>
                                        </label>

                                        <input type="text" id="pincode" name="pincode" class="form-control" required="" autocomplete="off" value="<?php echo isset($ghfyhfyhe)?$ghfyhfyhe->pincode:''?>">
                                          <span id="pincode_error" style="color:red;"></span>
                                    </div>
                                       
									<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                        <label for="companyname">Website
                                            <span class="required">*</span>
                                        </label>

                                        <input type="text"  id="txturl"  name="website" required="required" class="form-control" autocomplete="off" value="<?php echo isset($ghfyhfyhe)?$ghfyhfyhe->website:''?>">
                                       
                                    </div>



                                    <div class="form-group col-md-6 col-sm-6 col-xs-6">
                                        <label for="fax" id="file_name">Company Logo <span class="required"></span>
                                        </label>
                                        <div class="col-md-8 col-sm-8 col-xs-8" style="margin-top:8px">

                                     
                                            

                                            <input type="file" id="picture" name="logo" accept="image/*" style="margin-left: -13px;" class="col-md-8 col-xs-8" value="<?php echo isset($ghfyhfyhe)?$ghfyhfyhe->logo:''?>">
											<p id="error1" style="display:none; color:#FF0000;">
                              Invalid Image Format !   Image Format Must Be JPG, JPEG, PNG or GIF.
                                   </p>
                             <p id="error2" style="display:none; color:#FF0000;">
                               Maximum File Size Limit is 1MB.
                                </p>
                                        </div>
		

                                    </div>
									
									<div class="col-md-12">
												<div class="form-group">
													<label class="form-check-label"><b>Address </b></label>
													<textarea class="form-control form-control-sm" name="address" rows="3" ><?= (!empty($ghfyhfyhe))?$ghfyhfyhe->address:''; ?></textarea>
												</div>
											</div>
									
									</div>
									</div>


                                    <div class="form-group">
                                        <div class="col-md-12 col-sm-12 col-xs-12 col-md-offset-4">
                                           <input type="submit" class="btn btn-success"  value="<?php echo isset($ghfyhfyhe)?'Update':'Submit'?>">
											<div id="error_message" class="ajax_response" style="float:left"></div>
	                            <div id="success_message" class="ajax_response" style="float:left"></div>
                                            <button type="reset" class="btn btn-primary">Cancel</button>
                                        </div>
										
                                    </div>
                                </div>
                            </form>
                        </div>


                    </div>
                </div>
            </div>
        </div>
		
		
		<script>
			
	const validateEmail = (email) => {
  return email.match(
    /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
  );
};

const validate = () => {
  const $result = $('#result');
  const email = $('#email').val();
  $result.text('');

  if (validateEmail(email)) {
    $result.text(' This Email is valid ');
    $result.css('color', 'green');
  } else {
    $result.text(' This Email is not valid ');
    $result.css('color', 'red');
  }
  return false;
}

$('#email').on('input', validate);		
</script>

<script type="text/javascript">
$(function() {
$('#btnValidate').submit(function() {
var txt = $('#txturl').val();
var re = /(http(s)?:\\)?([\w-]+\.)+[\w-]+[.com|.in|.org]+(\[\?%&=]*)?/
if (re.test(txt)) {
//alert('Valid URL')
}
else {
alert('Please Enter Valid URL');
return false;
}
})
})
</script>


  
  
 