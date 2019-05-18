<?php


class Loginmodel extends CI_Model{

	public function  admin_login_valid( $username , $password )
	{
		
		$q = $this->db->where(['admin_username'=>$username,'admin_password'=>$password])->get('admin_db');
		if($q->num_rows()){
			
			return $q->row()->unique_id;
			//return TRUE;
		}
		else
		{
			return FALSE;
		}
	}

	public function  student_login_valid( $username , $password )
	{
		
		$q = $this->db->where(['student_username'=>$username,'student_password'=>$password])->get('student_db');
		if($q->num_rows()){
			
			return $q->row()->unique_id;
			//return TRUE;
		}
		else
		{
			return FALSE;
		}
	}

	public function  teacher_login_valid( $username , $password )
	{
		
		$q = $this->db->where(['teacher_username'=>$username,'teacher_password'=>$password])->get('teacher_db');
		if($q->num_rows()){
			
			return $q->row()->unique_id;
			//return TRUE;
		}
		else
		{
			return FALSE;
		}
	}



	public function __construct(){
		parent::__construct();
		$this->load->database();			

	}
}

?>