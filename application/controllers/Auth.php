<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

	public function index()
	{
		$this->load->view('auth/login');
	}
	
	
	public function dashboard() {

		$data['content'] = 'web/dashboard';
		
		$this->load->view('web/template', $data);
    }
	
	
	public function logincheck(){

		$username = $this->input->post('username');
		$password = $this->input->post('password');

		$exits = $this->Auth_model->get_record("user","*",array('username'=>$username));
		$users = $this->Auth_model->get_record("employee","*",array('username'=>$username));
		if(isset($exits->user_id)){
			$hash = $exits->password;
			if($exits->status==0){
				$output = array(
					'status'	=>'Error',
					'msg'		=>'Account is Inactive',
				);
			}else if(password_verify($password, $hash)){
				$this->session->set_userdata('is_logged_in','1');
				$this->session->set_userdata('user_id',$exits->user_id);
				$this->session->set_userdata('user_admin',$exits->user_admin);
				$this->session->set_userdata('user_role',$exits->user_role);
				$this->session->set_userdata('user_emp',0);
				$this->session->set_userdata('user_details',$exits);
				
				$output = array(
					'status'	=> 'Success',
					'msg'		=> 'Login Successfully',
					'link'		=> base_url().'dashboard',
				);
			}else{
			    $output = array(
					'status'	=>'Error',
					'msg'		=>'Invaild Password Details',
				);
			}
		}else if(isset($users->employee_id)){
			if($users->status==0){
				$output = array(
					'status'	=>'Error',
					'msg'		=>'Account is Inactive',
				);
			}else if($password==$users->password){
				$this->session->set_userdata('is_logged_in','1');
				$this->session->set_userdata('user_id',$users->employee_id);
				$this->session->set_userdata('user_admin',0);
				$this->session->set_userdata('user_role',0);
				$this->session->set_userdata('user_emp',1);
				$this->session->set_userdata('user_details',$users);
				
				$output = array(
					'status'	=> 'Success',
					'msg'		=> 'Login Successfully',
					'link'		=> base_url().'dashboard',
				);
			}else{
			    $output = array(
					'status'	=>'Error',
					'msg'		=>'Invaild Password Details',
				);
			}
		}else{
			$output = array(
				'status'	=>'Error',
				'msg'		=>'Invaild Login Details',
			);
		}
		echo json_encode($output);
	}
	
	
	
	
	

	public function logout()
	{
		redirect("/");
	}
	
}

 
