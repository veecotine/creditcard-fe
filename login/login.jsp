<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <link rel="stylesheet" href="login/app.css">

</head>
<body>
    <div class="container">
        <div class="forms-container">
            <div class="signin-signup">
            <!-- Login form -->
            <form class="sign-in-form"  action="login" method="post">
                <h2 class="title">Sign In</h2>
                <input type="hidden" name="status" value="login">
                <div class="input-field">
                    <i class='bx bxs-user'></i>
                    <input type="text" placeholder="Nhập Username" name="username" id="username" required/>
                </div>
                <div class="input-field">
                    <i class='bx bxs-lock-alt'></i>
                    <input type="password" name="password" id="password" placeholder="Nhập Password" required>
                </div>
                <input type="submit" value="Login" class="btn solid">
            </form>
            <!-- Login form -->
            
            <!-- Regis form -->
            <form class="sign-up-form" action="signup" method="post">
                <h2 class="title">Sign Up</h2>
                <input type="hidden" name="status" value="registration">
                <div class="input-field">
                    <i class='bx bxs-user'></i>
                    <input type="text" placeholder="Username" name="username" id="username" pattern="^[-a-zA-Z0-9@\.+_]+$" required>
                </div>
                <div class="input-field">
                    <i class='bx bxs-envelope'></i>
                    <input type="email" name="email" id="email" placeholder="Email" required>
                </div>
                <div class="input-field">
                    <i class='bx bxs-lock-alt'></i>
                    <input type="password" name="password" id="password"  placeholder="Password" pattern="^[-a-zA-Z0-9@\.+_]+$" required>
                </div>
                <input type="submit" value="Sign Up" class="btn solid">
              	<button type="button" class="btn btn-outline-light" data-toggle="modal" data-target="#exampleModal">
			  Forgot Pasword?
			</button>

            </form> 
            
             <!-- Regis form -->
            </div>
        </div>
        <div class="panels-container">
            <div class="panel left-panel">
                <div class="content">
                    <h3>New here?</h3>                                 
                    <button class="btn transparent" id="sign-up-btn">Sign up</button>
                </div>
                <img src="generic/image/img2/Profiling_Monochromatic.png" class="image" alt="">
            </div>
            <div class="panel right-panel">
                <div class="content">
                    <h3>One of us?</h3>                  
                    <button class="btn transparent" id="sign-in-btn">Sign in</button>
                </div>
                <img src="generic/image/img2/Authentication_Outline.png" class="image" alt="">
            </div>
        </div>
      	
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
		     aria-hidden="true">
		     <form  action="forgotPassword" method="post">
		    <div class="modal-dialog" style="width: 300px;">
		        <div class="modal-content text-center">
		            <div class="modal-header" id="exampleModalLabel">
		                Password Reset
		            </div>
		             
		            <div class="modal-body">
		           
		                <p class="py-2">
		                    
		                </p>
		               
		                <div class="form-outline">
		                    <input type="email" id="email" name="email" class="form-control my-3" placeholder="Nhập Email vào"/>
		                </div>
		                <input type="submit" value="Reset password" class="btn btn-primary w-100">
		                 
		            </div>
		           
		        </div>
		    </div>
		    </form>
		</div>
		
    </div>
   
<!-- Forgot Passwrod Modal -->
    <script src="login/app.js"></script>
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
