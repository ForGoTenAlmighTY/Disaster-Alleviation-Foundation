<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Disaster_Alleviation_Foundation.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Register New Account</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <link rel="stylesheet" href="css/style.css">
    <style type="text/css">

    </style>
</head>
<body>
    <section class="ftco-section">
        <div class="container">
           
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-5">
                    <div class="login-wrap p-4 p-md-5">
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="fa fa-user-o"></span>
                        </div>
                        <h3 class="text-center mb-4">Register</h3>
                        <form id="form1" runat="server">
                            <div class="form-group">

                                <asp:TextBox ID="txtUsername" type="text" class="form-control rounded-left" placeholder="Name/Organization" runat="server" required></asp:TextBox>
                            </div>
                            <div class="form-group">

                                <asp:TextBox ID="txtMoney" type="text" class="form-control rounded-left" placeholder="Starting amount of money" runat="server" required></asp:TextBox>
                            </div>
                            <div class="form-group">

                                <asp:TextBox ID="txtEmail" type="email" class="form-control rounded-left" placeholder="Email Address" runat="server" required></asp:TextBox>
                            </div>
                            <div class="form-group d-flex">

                                <asp:TextBox ID="txtPassword" type="password" class="form-control rounded-left" placeholder="Password" runat="server" required></asp:TextBox>
                            </div>

                            <div class="form-group">

                                <asp:Button ID="btnRegister" runat="server" class="btn btn-primary rounded submit p-3 px-5" Text="Register" OnClick="btnRegister_Click" />
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

</body>
&nbsp;
</html>
