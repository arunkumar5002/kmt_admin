<?php

function company_name(){
	return "KMT Hospital";
}

function product_name(){
	return "";
}

function logo(){
	return "assets/logos.png";
}

function pdf(){
	return "assets/pdf.png";
}

//Mani
function load_datatables(){
	$output = '<link rel="stylesheet" href="'.base_url().'assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">';
	$output.= '<link rel="stylesheet" href="'.base_url().'assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">';
	$output.= '<link rel="stylesheet" href="'.base_url().'assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">';
	
	$output.= '<link rel="stylesheet" href="'.base_url().'assets/plugins/select2/css/select2.min.css">';
	$output.= '<link rel="stylesheet" href="'.base_url().'assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">';

	$output.= '<script src="'.base_url().'assets/plugins/datatables/jquery.dataTables.min.js"></script>';
	$output.= '<script src="'.base_url().'assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>';
	$output.= '<script src="'.base_url().'assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>';
	$output.= '<script src="'.base_url().'assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>';
	$output.= '<script src="'.base_url().'assets/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>';
	$output.= '<script src="'.base_url().'assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>';
	$output.= '<script src="'.base_url().'assets/plugins/datatables-buttons/js/buttons.html5.min.js"></script>';
	$output.= '<script src="'.base_url().'assets/plugins/datatables-buttons/js/buttons.print.min.js"></script>';
	$output.= '<script src="'.base_url().'assets/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>';
	
	$output.='<style>
		.select2-container .select2-selection--single .select2-selection__rendered {
			padding-left: 0px !important;
		}
		
		select.form-control-sm~.select2-container--default .select2-selection--single .select2-selection__arrow {
			top: 3px !important;
			padding-right: 30px;
		}
	</style>';
	
	return $output;
}

function list_user_account_type(){
	$CI 	= &get_instance();
	$result = $CI->db->select('*')->where('account_status','Active')->order_by('account_name','ASC')->get('tbl_user_account_type')->result_array();
	return $result;
}

function list_employee_department(){
	$CI 	= &get_instance();
	$result = $CI->db->select('*')->where('department_status','Active')->order_by('department_name','ASC')->get('tbl_department_category')->result_array();
	return $result;
}

function list_employee_desigantion(){
	$CI 	= &get_instance();
	$result = $CI->db->select('*')->where('designation_status','Active')->order_by('designation_name','ASC')->get('tbl_desigantion_category')->result_array();
	return $result;
}

function list_leave_category(){
	$CI 	= &get_instance();
	$result = $CI->db->select('*')->where('category_status','Active')->order_by('category_name','ASC')->get('tbl_attendance_leave_category')->result_array();
	return $result;
}

function menu_module(){
	$CI 	= &get_instance();
	$result = $CI->db->select('*')->order_by('menu_order','ASC')->get('tbl_menu')->result_array();
	return $result;
}

function get_employee_passport_notification($limit=NULL){
	$CI = get_instance();
	
	$cur_date = date('Y-m-d');
	$new_date = date('Y-m-d', strtotime($cur_date. ' + 90 days'));
	
	$where	= "passport_expiry_date BETWEEN '".$cur_date."' AND '".$new_date."'";
	if(!empty($limit)){
		$data 	= $CI->db->select('emp_id,employeename,passport_expiry_date')->where($where)->limit($limit)->get('employee')->result_array();
	}else{
		$data 	= $CI->db->select('emp_id,employeename,passport_expiry_date')->where($where)->get('employee')->result_array();
	}
	if(!empty($data)){
		return $data;
	}else{
		return 0;
	}
}

function get_employee_rp_notification(){
	$CI = get_instance();
	
	$cur_date = date('Y-m-d');
	$new_date = date('Y-m-d', strtotime($cur_date. ' + 90 days'));
	
	$where	= "rp_expiry_date BETWEEN '".$cur_date."' AND '".$new_date."'";
	$data 	= $CI->db->select('emp_id,employeename,rp_expiry_date')->where($where)->get('employee')->result_array();
	if(!empty($data)){
		return $data;
	}else{
		return 0;
	}
}

function get_employee_crp_notification(){
	$CI = get_instance();
	
	$cur_date = date('Y-m-d');
	$new_date = date('Y-m-d', strtotime($cur_date. ' + 90 days'));
	
	$where	= "crp_expiry_date BETWEEN '".$cur_date."' AND '".$new_date."'";
	$data 	= $CI->db->select('emp_id,employeename,crp_expiry_date')->where($where)->get('employee')->result_array();
	if(!empty($data)){
		return $data;
	}else{
		return 0;
	}
}

function get_employee_details($emp_id){
	$CI = get_instance();
	
	$CI->db->select('tbl_department_category.department_name,tbl_desigantion_category.designation_name,employee.*');
	$CI->db->from('employee');
	$CI->db->join('tbl_desigantion_category','tbl_desigantion_category.id=employee.designation');
	$CI->db->join('tbl_department_category','tbl_department_category.id=employee.department');
	$CI->db->where('employee.employee_id',$emp_id);
	$query = $CI->db->get();
	$employee_details = $query->row();
	if(!empty($employee_details)){
		return $employee_details;
	}else{
		return 0;
	}
}

function get_salary_earnings_details($slip_id){
	$CI = get_instance();
	
	$CI->db->select('employee.*');
	$CI->db->from('tbl_salary_details');
	$CI->db->where('employee.employee_id',$emp_id);
	$CI->db->order_by('details_name','ASC');
	$query = $CI->db->get();
	$employee_details = $query->row();
	if(!empty($employee_details)){
		return $employee_details;
	}else{
		return 0;
	}
}

function get_employe_details($emp_id){
	$CI = get_instance();
	
	$CI->db->select('tbl_department_category.department_name,tbl_desigantion_category.designation_name,employee.*');
	$CI->db->from('employee');
	$CI->db->join('tbl_desigantion_category','tbl_desigantion_category.id=employee.designation');
	$CI->db->join('tbl_department_category','tbl_department_category.id=employee.department');
	$CI->db->where('employee.employee_id',$emp_id);
	$query = $CI->db->get();
	$milestone_details = $query->row();
	if(!empty($milestone_details)){
		return $milestone_details;
	}else{
		return 0;
	}
}

function convert_amount_words($number){
   $no = floor($number);
   $point = round($number - $no, 2) * 100;
   $hundred = null;
   $digits_1 = strlen($no);
   $i = 0;
   $str = array();
   $words = array('0' => '', '1' => 'One', '2' => 'Two',
    '3' => 'Three', '4' => 'Four', '5' => 'Five', '6' => 'Six',
    '7' => 'Seven', '8' => 'Eight', '9' => 'Nine',
    '10' => 'Ten', '11' => 'Eleven', '12' => 'Twelve',
    '13' => 'Thirteen', '14' => 'Fourteen',
    '15' => 'Fifteen', '16' => 'Sixteen', '17' => 'Seventeen',
    '18' => 'Eighteen', '19' =>'Nineteen', '20' => 'Twenty',
    '30' => 'Thirty', '40' => 'Forty', '50' => 'Fifty',
    '60' => 'Sixty', '70' => 'Seventy',
    '80' => 'Eighty', '90' => 'Ninety');
   $digits = array('', 'Hundred', 'Thousand', 'Lakh', 'Crore');
   while ($i < $digits_1) {
     $divider = ($i == 2) ? 10 : 100;
     $number = floor($no % $divider);
     $no = floor($no / $divider);
     $i += ($divider == 10) ? 1 : 2;
     if ($number) {
        $plural = (($counter = count($str)) && $number > 9) ? 's' : null;
        $hundred = ($counter == 1 && $str[0]) ? ' and ' : null;
        $str [] = ($number < 21) ? $words[$number] .
            " " . $digits[$counter] . $plural . " " . $hundred
            :
            $words[floor($number / 10) * 10]
            . " " . $words[$number % 10] . " "
            . $digits[$counter] . $plural . " " . $hundred;
     } else $str[] = null;
  }
  $str = array_reverse($str);
  $result = implode('', $str);
  $points = ($point) ?
    "." . $words[$point / 10] . " " . 
          $words[$point = $point % 10] : '';
	
	$amount = $result . "Bahraini Dinar  ";
	if(!empty($points)){
		$amount .= $points . " Paise";
	}
	return $amount;
}

//Arun
/*******Get Attendance*******/
function get_emp_attendance($attend_emp_id,$attend_month_year){
	$CI = get_instance();
    $CI->load->model("Attendance_model");
    
    $data = $CI->Attendance_model->get_emp_attendance($attend_emp_id,$attend_month_year);
    
	return $data;
}

//Kalai
function get_role_permission_list($menu_id){
	$CI = get_instance();
	
	$user_admin = $CI->session->userdata('user_id');
	$user_id 	= $CI->session->userdata('user_id');
	if(!isset($user_admin)){
		$data = $CI->db->select('*')->where('user_id',$user_id)->where('menu_id',$menu_id)->get('user_role')->row();
		if(!empty($data)){
			return $data;
		}else{
			return 0;
		}
	}else{
		$data = array(
			'menu_permission_add' 		=> 1,
			'menu_permission_edit' 		=> 1,
			'menu_permission_delete' 	=> 1,
			'menu_permission_view' 		=> 1,
			'menu_permission_download' 	=> 1,
		);
		return $data;
	}
}



//SELECT * FROM `user_role` WHERE `user_id` = 8 and menu_id = 3 and (menu_permission_add = 1 or menu_permission_edit = 1 or menu_permission_delete = 1 or menu_permission_view = 1 or menu_permission_download = 1);



function get_employee_leave_details($employee_id, $category_id){
	
	
	$CI = get_instance();
	$CI->load->model("Common_model");
    
	
	$sql = "select * from tbl_leave_request_master where request_emp_id  = $employee_id and request_leave_category = $category_id and request_status = 1;";
	
	$result = $CI->Common_model->custom_query_result($sql);
	
	
	return $result;
	
}