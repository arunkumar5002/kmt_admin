<?php
class Common_model extends CI_Model
{
	/**
	 * @param null $sTableName
	 * @param array $aData
	 * @return bool
	 */
	public function  insert( $sTableName = NULL , $aData = array() )
	{
		if ( !empty( $sTableName ) AND !empty( $aData ) ) {
			$this->db->insert($sTableName,$aData);
			return $this->db->insert_id();
		} else {
			return false;
		}
	}
	

	/**
	 * @param null $sTableName
	 * @param array $aData
	 * @param array $aWhere
	 * @return bool
	 */
	public function  update( $sTableName = NULL , $aData = array() , $aWhere = array() )
	{
		if ( !empty( $sTableName ) AND !empty( $aData ) AND !empty( $aWhere ) ) {
			$this->db->where( $aWhere );
			return $this->db->update( $sTableName , $aData );
		} else {
			return false;
		}
	}

	/**
	 * @param null $sTableName
	 * @param array $aWhere
	 * @return bool
	 */
	public function  delete( $sTableName = NULL , $aWhere = array() )
	{
		if ( !empty( $sTableName ) AND !empty( $aWhere ) ) {
			$this->db->where( $aWhere );
			return $this->db->delete( $sTableName );
		} else {
			return false;
		}
	}

	/**
	 * @param null $sTableName
	 * @param array $aWhere
	 * @return array
	 */
	public function  get_result( $sTableName = NULL , $aWhere = array() , $orderField=NULL)
	{
		if ( !empty( $sTableName ) ) {
			$this->db->select( '*' );
			$this->db->from( $sTableName );
			if ( !empty( $aWhere ) )
				$this->db->where( $aWhere );
			if($orderField!=null)
				$this->db->order_by($orderField);

		    $this->db->order_by('id desc');
			return $this->db->get()->result();
		} else
			return array();
	}

	
	
	/**
	 * @param null $sTableName
	 * @param array $aWhere
	 * @return array
	 */
	public function  get_row( $sTableName = NULL , $aWhere = array() )
	{
		if ( !empty( $sTableName ) ) {
			$this->db->select( '*' );
			$this->db->from( $sTableName );
			if ( !empty( $aWhere ) )
				$this->db->where( $aWhere );
			return $this->db->get()->row();
		} else
			return array();
	}
	
	

	/**
	 * @param null $sQuery
	 * @return array
	 */
	public function  custom_query_result( $sQuery = NULL )
	{
		if ( !empty( $sQuery ) ) {
			return $this->db->query( $sQuery )->result();
		} else {
			return array();
		}
	}

	/**
	 * @param null $sQuery
	 * @return array
	 */
	public function  custom_query_row( $sQuery = NULL )
	{
		if ( !empty( $sQuery ) ) {
			return $this->db->query( $sQuery )->row();
		} else {
			return array();
		}
	}

	/**
	 * @param array $aData
	 * @return mixed
	 */
	public function  custom_query( $aData = array() )
	{
		//select fields array
		if ( isset( $aData[ 'aSelect' ] ) AND !empty( $aData[ 'aSelect' ] ) ) {
			$this->db->select( $aData[ 'aSelect' ] );
		} else {
			// all fields
			$this->db->select( '*' );
		}


		if ( isset( $aData[ 'aJoinTbl' ] ) AND !empty( $aData[ 'aJoinTbl' ] ) ) {
			// join table
			$loop = 1;
			foreach ( $aData[ 'aJoinTbl' ] as $row ) {
				if ( $loop == 1 ) {
					$this->db->from( $row[ 0 ] );
				} else {
					$this->db->join( $row[ 0 ] , $row[ 1 ] , $row[ 2 ] );
				}
				$loop ++;
			}
		} else {
			// without join
			$this->db->from( $aData[ 'sTableName' ] );
		}


		if ( isset( $aData[ 'aWhere' ] ) AND !empty( $aData[ 'aWhere' ] ) ) {
			// set where condition with array
			$this->db->where( $aData[ 'aWhere' ] );
		}

		if ( isset( $aData[ 'sWhere' ] ) AND $aData[ 'sWhere' ] != "" ) {
			// custom where with string
			$this->db->where( $aData[ 'sWhere' ] );
		}

		if ( isset( $aData[ 'iOffset' ] ) AND $aData[ 'iOffset' ] != - 1 ) {
			// set limit
			$this->db->limit( $aData[ 'iPerPage' ] );
			$this->db->offset( $aData[ 'iOffset' ] );
		}

		if ( isset( $aData[ 'aGroupBy' ] ) AND !empty( $aData[ 'aGroupBy' ] ) ) {
			// group by fields
			$this->db->group_by( $aData[ 'aGroupBy' ] );
		}

		if ( isset( $aData[ 'aSortBy' ] ) AND !empty( $aData[ 'aSortBy' ] ) ) {
			// sorting
			foreach ( $aData[ 'aSortBy' ] as $row ) {
				$this->db->order_by( $row[ 0 ] , $row[ 1 ] );
			}
		}

		return $this->db->get()->result();
	}

	/**
	 * Return specific field information
	 */

	
	function getNameTable($table,$col,$field,$value)
	{
		$query="SELECT ".$col." FROM ".$table." where ".$field."='".$value."' AND ".$field." IS NOT NULL";
		//echo $query;
		$recordSet = $this->db->query($query);
		if($recordSet->num_rows() > 0)
		{
			$row = $recordSet->row_array();
			return $row[$col];
		}
		else
		{
			return "";
		}
	}

	/**
	 * @param null $sTableName
	 * @param array $aWhere
	 * @return array
	 */
	public function  getAllCategoyList( $sTableName = NULL , $aWhere = array() , $orderField=NULL)
	{
		if ( !empty( $sTableName ) ) {
			$this->db->select( 'id,category_name' );
			$this->db->from( $sTableName );
			if ( !empty( $aWhere ) )
				$this->db->where( $aWhere );
			 if($orderField!=null)
		           $this->db->order_by('id desc');
			return $this->db->get()->result();
		} else
			return array();
	}

	public function update_docinfo( $sTableName = NULL , $aData = array() , $aWhere = array()){
	   //print_r($aData);exit;
	   
	  $sql="UPDATE $sTableName SET url_slag='".$aData['url_slag']."',doctor_intro='".$aData['doctor_intro']."',doctor_work_experience='".$aData['doctor_work_experience']."',doctor_education='".$aData['doctor_education']."',doctor_awards='".$aData['doctor_awards']."',doctor_expertise='".$aData['doctor_expertise']."',metatitle='".$aData['metatitle']."',matadescription='".$aData['metadescription']."' WHERE id='".$aWhere['id']."'";
      $this->db->query( $sql );

	}

	public function  get_videocat_list( $sTableName = NULL , $aWhere = array() , $orderField=NULL)
	{
		if ( !empty( $sTableName ) ) {
			$this->db->select( 'id,videocat_name' );
			$this->db->from( $sTableName );
			if ( !empty( $aWhere ) )
				$this->db->where( $aWhere );
			 if($orderField!=null)
		           $this->db->order_by('id desc');
			return $this->db->get()->result();
		} else
			return array();
	}

	function homepage_doctor_order_update($sTableName = NULL , $aData = array() ){
		$sql="UPDATE $sTableName SET homepage_order='".$aData['homepageposition']."' WHERE id='".$aData['id']."'";
		$this->db->query( $sql );
	}

	function fetch_subspecialty($id){
		$this->db->where('specialty_parent_id', $id);
		$query = $this->db->get('specialities');
		$output = '<option value="">Select Sub Specialities</option>';
		foreach($query->result() as $row)
		{
			$output .= '<option value="'.$row->id.'">'.$row->specialty_name.'</option>';
		}
		return $output;
	}


	public function get_categories(){

        $this->db->select('id,category_name,perent_id');
        $this->db->from('tbl_category');
		$this->db->where('perent_id', 0);
		$this->db->where('status', 1);

        $parent = $this->db->get();
        
        $categories = $parent->result();
        $i=0;
        foreach($categories as $p_cat){

            $categories[$i]->sub = $this->sub_categories($p_cat->id);
            $i++;
        }
        return $categories;
    }

    public function sub_categories($id){

        $this->db->select('id,category_name,perent_id');
        $this->db->from('tbl_category');
		$this->db->where('perent_id', $id);
		$this->db->where('status', 1);

        $child = $this->db->get();
        $categories = $child->result();
        $i=0;
        foreach($categories as $p_cat){

            $categories[$i]->sub = $this->sub_categories($p_cat->id);
            $i++;
        }
        return $categories;       
	}
	
	public function get_alllocation(){

        $this->db->select('id,location_name');
        $this->db->from('healthpackage_location');
		$this->db->where('status', 1);

        $location = $this->db->get();
        $alllocations = $location->result();
        return $alllocations;
	}

	public function get_allhoslocation(){

		$this->db->select('id,location_title');
        $this->db->from('location');
		$this->db->where('status', 1);

        $location = $this->db->get();
        $alllocations = $location->result();
        return $alllocations;

	}
	
	public function getSpecilityWiseDoctors($specilityid){

		$sql = "SELECT a.* FROM `doctor_speciality_position_map` as a,doctorinformation as b WHERE a.docotorid=b.id AND a.specilityid='".$specilityid."' AND b.status='1'";
		$recordSet = $this->db->query($sql);
		if($recordSet->num_rows() > 0)
		{
			$row = $recordSet->result();
			return $row;
		}
		else
		{
			return "";
		}

	}

	function spcilitypage_doctor_order_update($sTableName=NULL, $aData = array()){

		$sql="UPDATE $sTableName SET position='".$aData['position']."' WHERE id='".$aData['id']."'";
		$this->db->query( $sql );

	}

	function specialities_order_update($sTableName=NULL, $aData = array()){

		$sql="UPDATE $sTableName SET homepage_order='".$aData['homepage_order']."' WHERE id='".$aData['id']."'";
		$this->db->query( $sql );

	}

	function specialities_menu_order_update($sTableName=NULL, $aData = array()){

		$sql="UPDATE $sTableName SET menu_order='".$aData['menu_order']."' WHERE id='".$aData['id']."'";
		$this->db->query( $sql );

	}

	function checkValue($table,$spcilityid,$docid)
	{
		$query="SELECT * FROM ".$table." where specilityid='".$spcilityid."' AND docotorid='".$docid."'";
		//echo $query;
		$recordSet = $this->db->query($query);
		if($recordSet->num_rows() > 0)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}

	function get_otherspeciallity_list($table,$spcilityid){

		$query="SELECT * FROM ".$table." where id!='".$spcilityid."'";
		//echo $query;
		$recordSet = $this->db->query($query);
		if($recordSet->num_rows() > 0)
		{
			$row = $recordSet->result();
			return $row;
		}

	}

	function getHealthPackCategories(){

		$query="SELECT id,category_name FROM healthpackage_category where status='1'";
		$recordSet = $this->db->query($query);
		if($recordSet->num_rows() > 0){
			$row = $recordSet->result();
			return $row;
		}else{

			return '';
		}


	}

	function deletedoc($id){

		$query="INSERT INTO backupdoctorinformation SELECT d.* FROM doctorinformation d WHERE id ='".$id."'";
		$recordSet = $this->db->query($query);

		$this->db->delete('doctorinformation',array('id'=>$id));
		
		
	}
	
	public function get_alldoctorlist(){

        $this->db->select('id,docname');
        $this->db->from('doctorinformation');
		$this->db->where('status', 1);

        $alldoctorlist = $this->db->get();
        $alldoctorlists = $alldoctorlist->result();
        return $alldoctorlists;
	}

	function get_partnetinfo(){

		$query="SELECT a.id as pid,a.partner_email,a.partner_phone,a.status,b.* FROM tbl_partner_info as a,tbl_partner_profile as b WHERE a.id=b.partner_id AND a.status='1'";
		$recordSet = $this->db->query($query);
		if($recordSet->num_rows() > 0){
			return $recordSet->result();
		}else{
			return '';
		}
	}

	public function  getAllLocationList( $sTableName = NULL , $aWhere = array() , $orderField=NULL)
	{
		if ( !empty( $sTableName ) ) {
			$this->db->select( 'id,city_name as name' );
			$this->db->from( $sTableName );
			if ( !empty( $aWhere ) )
				$this->db->where( $aWhere );
			 if($orderField!=null)
		           $this->db->order_by('id desc');
			return $this->db->get()->result();
		} else
			return array();
	}
	
	
	public function get_records($table,$fields='*',$where='')
	{
			if($fields)
				$this->db->select($fields);
			if(!empty($where))
				$this->db->where($where);
			return $this->db->get($table)->result();		
			
	}
	

	
}