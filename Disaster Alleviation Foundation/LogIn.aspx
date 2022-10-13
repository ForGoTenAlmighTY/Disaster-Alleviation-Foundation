<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Disaster_Alleviation_Foundation.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  	<title>Login </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

	<style type="text/css">
        .auto-style1 {
            left: 0px;
            top: -3px;
        }
    </style>

	</head>
	<body >
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
		
			</div>
			<div class="row justify-content-center">
				<div class="auto-style1">
					<div class="login-wrap p-4 p-md-5">
		      	<div class="icon d-flex align-items-center justify-content-center">
		      		<span class="fa fa-user-o"></span>
		      	</div>
		      	<h3 class="text-center mb-4">Log-in</h3>
						<form id="form1" runat="server">
		      		<div class="form-group">
		      		
						  <asp:TextBox ID="txtEmail" type="email" class="form-control rounded-left" placeholder="Email Address" runat="server" required></asp:TextBox>
		      		</div>
	            <div class="form-group d-flex">
	             
                    <asp:TextBox ID="txtPassword" type="password" class="form-control rounded-left" placeholder="Password" runat="server" required></asp:TextBox>
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
	            		<label class="checkbox-wrap checkbox-primary">
									</label>
								</div>
								<div class="w-50 text-md-left">
									<a href="https://disasteralleviationfoundation1.azurewebsites.net/Register.aspx">Create Account?</a><br />
								</div>
					<div class="w-50 text-md-right">
									<a href="https://disasteralleviationfoundation1.azurewebsites.net/AdminLogIn.aspx">Administrator Only</a>
								</div>
	            </div>
	            <div class="form-group">
	            	
					<asp:Button ID="btnLogin" runat="server" class="btn btn-primary rounded submit p-3 px-5" Text="Log-in" OnClick="btnLogin_Click" />
	            </div>
	                    </form>
	        </div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>>
</html>
