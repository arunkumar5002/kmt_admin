<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Web extends CI_Controller
{
	
	public function __construct(){
        parent::__construct();
        $this->load->model('set_item_master_model');
        
    }

	public function index()
	{

		$this->load->view('auth/login');
	}


	public function dashboard(){
		$data['content'] = 'web/dashboard';
		$this->load->view('web/template', $data);
	}
	
	public function settings(){
		$data['content'] = 'web/settings';
		$this->load->view('web/template', $data);
	}
	
	public function itemmaster()
	{

		$data['itemmaster'] = 'menu';
		
		$data['page_title'] 	= "Inventory Master";

		$data['content'] = "web/Inventory Master/itemmaster";

		$this->load->view('web/template', $data);
	}
	
	
	public function newmaster()
	{

		$data['newmaster'] = 'menu';
		
		$data['page_title'] 	= "Inventory";

		$data['content'] = "web/Inventory Master/newmaster";

		$this->load->view('web/template', $data);
	}
	
	
	public function save_item(){
	
	
	 $row_id = $this->input->post('row_id');
		 
		
		$data_arr = array(
		    'itemcode' 		 => $this->input->post('itemcode'), 
			'itemname' 		 => $this->input->post('itemname'),
			'category' 	 => $this->input->post('category'),
			'subcategory' 		 => $this->input->post('subcategory'),
			'brand' 	 => $this->input->post('brand'),
			'costprice' 		 => $this->input->post('costprice'),
			'price' 		 => $this->input->post('price'),
			'quantity' 	 => $this->input->post('quantity'),
			'product_origin' 		 => $this->input->post('product_origin'),
			'location' 	 => $this->input->post('location'),
			'min_reorder' 		 => $this->input->post('min_reorder'),
			'account' 	 => $this->input->post('account'),
			
		);
		if(empty($row_id)){
			
			$data_arr['created_at'] = date('Y-m-d h:i:s');
			
			$this->common_model->insert('item_master',$data_arr);
			$output = array(
				'status'	=> 'Success',
				'msg'		=> 'Item Master Added Successfully',
			);
		}else{
			$data_arr['updated_at'] = date('Y-m-d h:i:s');
			
			$where = "id='$row_id'";
			$this->common_model->update('item_master',$data_arr,$where);
			$output = array(
				'status'	=> 'Success',
				'msg'		=> 'Item Master Updated Successfully',
			);
		}
		echo json_encode($output);
	}
	
	
	
	public function list_item_master(){
		
		$data = $row = array();
		$memData 	= $this->set_item_master_model->getRows($_POST);
		$i 			= $_POST['start'];
		
		foreach($memData as $member){
			$i++;
			
			$action=	"<button type='button' class='btn btn-info btn-sm edit_data'
			data-id='".$member->id."' data-itemname='".$member->itemname."' data-price='".$member->price."'data-account='".$member->account."' data-location='".$member->location."' 
			data-quantity='".$member->quantity."'  data-status='".$member->status."'><i class='fa fa-edit'></i></button>&nbsp;&nbsp;";
			$action.=	"<button type='button' class='btn btn-danger btn-sm delete_data' data-id='".$member->id."'><i class='fa fa-trash'></i></button>";
			
			$status = ($member->status=='Active')?'<span class="badge badge-success">Active</span>':'<span class="badge badge-danger">Inactive</span>';
			
			$data[] = array($i, $member->itemname,$member->price,$member->account, $member->location,$member->quantity,$status, $action);
		}
		$output = array(
			"draw" 				=> $_POST['draw'],
			"recordsTotal" 		=> $this->set_item_master_model->countAll($_POST),
			"recordsFiltered" 	=> $this->set_item_master_model->countFiltered($_POST),
			"data" 				=> $data,
		);
		echo json_encode($output);
	}
	
	public function delete_item_master(){
		$row_id = $this->input->post('keys');
		
		$where = "id='$row_id'";
		$result = $this->common_model->delete('item_master',$where);
		
		if($result==true){
			$output = array(
				'status'	=> 'Success',
				'msg'		=> 'Item Master Type Deleted Successfully',
			);
		}else{
			$output = array(
				'status'	=> 'Warning',
				'msg'		=> 'Unable to Delete Item Master Type Details',
			);
		}
		echo json_encode($output);
	}

	
	
}
