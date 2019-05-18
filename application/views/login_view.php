<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Login Page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>-->
<style>
	/*{
		background: #348cb2 url("f5.jpg") bottom left;
		background-repeat: repeat-x;
		height: 100%;
		position: fixed;
		width: 100%;
	}*/
    body
    {
    	background: black;
    }
    .container-fluid
    {
    	/*background-image: url(f7.jpg); */
    }
    .wrapper
    {
    	margin-top: 100px;
    	margin-bottom: 50px;
    }
    .form-signin
    {
    	max-width: 380px;
    	padding: 100px 50px 120px 50px;
    	margin: 0 auto;
    	background-color: white;
    	border: 0.5px solid;
    }
    .form-signin-heading
    {
    	text-align: center;
    	margin-top: -60px;
    	margin-bottom: 40px;
    	font-family: sans-serif;
    }
    .form-control
    {
    	position: relative;
    	font-size: 20px;
    	font-family: sans-serif;
    	height: 50px;
    	padding: 15px;
    }
    .heading
    {
    	margin-top: 20px;
    	margin-bottom: 5px;
    }

</style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="heading">
                    <h1 style="text-align: center;color: white;font-family: sans-serif;">Government Polytechnic Nashik</h1>
                </div>
            </div>  
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="heading">
                    <h1 style="text-align: center;color: white;font-family: sans-serif;">Department of Computer Technology & Information Technology</h1>
                </div>
            </div>  
        </div>
        <div class="row">
           <!-- <div>
                <img src="f11.jpg" class="img-responsive" alt="Responsive image">
            </div>-->
            <div class="col-lg-4">
                    <div class="wrapper">
                        <form  action="login/admin_login" class="form-signin" method="POST">
                            <h2 class="form-signin-heading">Admin Login</h2>
                            Username:<input type="text" class="form-control" name="uname" placeholder="Admin Username" required>
                            Password:<input type="password" class="form-control" name="pass" required>
                            </br>
                            <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Login</button>
                        </form>
                    </div>
            </div>

            <div class="col-lg-4">
                    <div class="wrapper">
                        <form action="login/student_login" class="form-signin" method="POST">
                            <h2 class="form-signin-heading">Student Login</h2>
                            Username:<input type="text" class="form-control" name="uname" placeholder="Student Username" required>
                            Password:<input type="password" class="form-control" name="pass" required>
                            </br>
                            <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Login</button>
                        </form>
                    </div>
            </div>

            <div class="col-lg-4">
                    <div class="wrapper">
                        <form action="login/teacher_login" class="form-signin" method="POST">
                            <h2 class="form-signin-heading">Teacher Login</h2>
                            Username:<input type="text" class="form-control" name="uname" placeholder="Teacher Username" required>
                            Password:<input type="password" class="form-control" name="pass" required>
                            </br>
                            <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Login</button>
                        </form>
                    </div>
            </div>
        </div>
    </div>
</body>
</html>                            