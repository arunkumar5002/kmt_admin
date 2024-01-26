<?php
defined('BASEPATH') or exit('No direct script access allowed');
error_reporting(0);

class Purchase extends CI_Controller
{

	 public function purchasequote(){
				
		$data['page_title'] 	= " Purchase Quotations";
		$data['content'] 		= "web/purchase/purchasequote";		
		$this->load->view('web/template',$data);
	}
	
	
	 public function create_purchase_list(){
				
		$data['page_title'] 	= " Purchase Quotations";
		
		$data['content'] 		= "web/purchase/create_purchase_list";		
		$this->load->view('web/template',$data);
	}
	
	 public function save_purchase_quote(){
		 
		 $row_id = $this->input->post('row_id');
		 
		 
		$quote_date 	= (!empty($this->input->post('quote_date')))?date('Y-m-d',strtotime($this->input->post('quote_date'))):'';
		
		$data_arr = array(
			'quote_no' 		 => $this->input->post('quote_no'),
			'quote_date' 	 => $quote_date,
			'vendor' 		 => $this->input->post('vendor'),
			'initiated_by' 	 => $this->input->post('initiated_by'),
			'prepared_by' 		 => $this->input->post('prepared_by'),
			'authorized_by' 	 => $this->input->post('authorized_by'),
			
		);
		if(empty($row_id)){
			
			$data_arr['created_at'] = date('Y-m-d h:i:s');
			
			$this->common_model->insert('purchasequote',$data_arr,$status);
			$output = array(
				'status'	=> 'Success',
				'msg'		=> 'Purchase Added Successfully',
			);
		}else{
			$data_arr['updated_at'] = date('Y-m-d h:i:s');
			
			$where = "id='$row_id'";
			$this->common_model->update('purchasequote',$data_arr,$where,$status);
			$output = array(
				'status'	=> 'Success',
				'msg'		=> 'Purchase Updated Successfully',
			);
		}
		echo json_encode($output);
	}
	
	
	
	 public function save_add_vendor(){
		 
		 $row_id = $this->input->post('row_id');
		 
		
		$data_arr = array(
			'vendor_name' 		 => $this->input->post('vendor_name'),
			'phone' 		 => $this->input->post('phone'),
			'email' 	 => $this->input->post('email'),
			'currency' 		 => $this->input->post('currency'),
			'account_name' 	 => $this->input->post('account_name'),
			
		);
		if(empty($row_id)){
			
			$data_arr['created_at'] = date('Y-m-d h:i:s');
			
			$this->common_model->insert('vendor',$data_arr,$status);
			$output = array(
				'status'	=> 'Success',
				'msg'		=> 'Vendor Added Successfully',
			);
		}else{
			$data_arr['updated_at'] = date('Y-m-d h:i:s');
			
			$where = "id='$row_id'";
			$this->common_model->update('vendor',$data_arr,$where,$status);
			$output = array(
				'status'	=> 'Success',
				'msg'		=> 'Vendor Updated Successfully',
			);
		}
		echo json_encode($output);
	}
}