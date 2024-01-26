<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Company_model extends CI_Model
{
	  public function save_companymaster($name,$email,$landline,$mobile,$address,$source,$website){

	
	
		 $sql = "INSERT INTO company(name,email,landline,mobile,address,logo,website) values('$name','$email','$landline','$mobile','$address','$source','$website')";
		
		
		$result = $this->db->query($sql);
		//echo  "INSERT INTO company(name,email,landline,mobile,building_number,street_name,locality,pincode,logo) values('$name','email','$landline','$mobile','$building_number','$street_name','$locality','$pincode','$source')";
	
	}
	
		public function company_list(){

		$sql = "select * from company Where status = 1 or status = 2";

		$result = $this->db->query($sql);

		return $result->result();
	}
	
	public function edit_customer($id){
		
		$sql = "select * from company where company_id = '$id'";

		$result = $this->db->query($sql);

		return $result->row();
	}
	
	 public function update_campanymaster($name,$email,$landline,$mobile,$address,$source,$website,$company_id){
		if($source){ 
		 $sql = "update company SET name = '$name', email = '$email' , landline = '$landline',mobile = '$mobile', 
		 address = '$address',logo = '$source',website = '$website' where company_id = '$company_id'";
		 }else{
		 $sql = "update company SET name = '$name', email = '$email' , landline = '$landline',mobile = '$mobile', 
		  address = '$address',website = '$website' where company_id = '$company_id'"; 
		 }
		$result = $this->db->query($sql);
		 
   
	 }
	 public function view_company($id){
		
		$sql = "select * from company where company_id = '$id'";

		$result = $this->db->query($sql);

		return $result->row();
	}
	 
		   public function delete_company($company_id){
 	$this->db->query("UPDATE  `company` SET status = 0 Where company_id='$company_id'");
  
	
}



   public function update_status($table,$values,$where)
	{
		$this->db->where($where); 
		
		$this->db->update($table,$values);
	}
	
}