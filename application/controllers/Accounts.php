<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Accounts extends CI_Controller
{

    public function index()
	{
		
		
	}

	public function new_closing_stock()
	{

		$data['new_closing_stock'] = 'menu';

		$data['content'] = "web/accounts/new_closing_stock";

		$this->load->view('web/template', $data);
	}
	
	public function new_closing_stock_list()
	{

		$data['new_closing_stock_list'] = 'menu';

		$data['content'] = "web/accounts/new_closing_stock_list";

		$this->load->view('web/template', $data);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}