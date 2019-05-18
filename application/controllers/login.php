<?php

class login extends MY_Controller{

	public function index()
	{
		$this->load->view('login_view');
	}

	public function admin_login()
	{

		$username = $this->input->post('uname');
		$password = $this->input->post('pass');
		
		$this->load->model('loginmodel');

		$login_id = $this->loginmodel->admin_login_valid($username,$password);

		if($login_id){
					//credintial valid log in user
		
					
					$this->session->set_userdata('user_id',$login_id);
					return redirect('admin');

				}
				else{

					
					
					return redirect('login');
					
				}



		
	}

	public function student_login()
	{
		$username = $this->input->post('uname');
		$password = $this->input->post('pass');
		
		$this->load->model('loginmodel');

		$login_id = $this->loginmodel->student_login_valid($username,$password);
		if($login_id){
					//credintial valid log in user
		
					
					$this->session->set_userdata('student_id' , $login_id);
					return redirect('student');

				}
				else{

				
					
					return redirect('login');
					
				}



		
	}

	public function teacher_login()
	{
		$username = $this->input->post('uname');
		$password = $this->input->post('pass');
		
		$this->load->model('loginmodel');

		$login_id = $this->loginmodel->teacher_login_valid($username,$password);

		if($login_id){
					//credintial valid log in user
					$this->session->set_userdata('teacher_id' , $login_id);
					return redirect('teacher');

				}
				else{

					
					
					return redirect('login');
					
				}



		
	}


	
}

?>