<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoneyForm.aspx.cs" Inherits="Disaster_Alleviation_Foundation.MoneyForm" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Monetery Donation</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/StyleSheet1.css">
    <link rel="stylesheet" href="css/style1.css">
    <style type="text/css">
        .auto-style1 {
            height: 47px;
            color: coral;
            font-size: 20px;
        }

        .auto-style2 {
            background-image: url(image/bg.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            height: 500px;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .auto-style3 {
            display: inline-block;
            margin: 0;
            width: 1050px;
            font-family: Rockwell, Courier Bold, Courier, Georgia, Times, Times New Roman, serif;
            font-size: 30px;
            color: coral;
            padding-top: 40px;
            padding-bottom: 10px;
            text-align: center;
            height: 74px;
        }

        .auto-style4 {
            height: 37px;
            color: coral;
            font-size: 20px;
        }

        .auto-style5 {
            height: 45px;
            color: coral;
            font-size: 20px;
        }
        .auto-style6 {
    color: darkmagenta;
    margin-bottom: 0px;
}
    </style>
</head>
<body>

    <header>
        <div class="content-wrapper">
            <h1>Disaster Alleviation Foundation</h1>
            <nav>
                <a href="https://disasteralleviationfoundation20220901090608.azurewebsites.net/Home.aspx">Home</a>
                <a href="https://disasteralleviationfoundation20220901090608.azurewebsites.net/LogIn.aspx">Log-Out</a>
                <a href="https://disasteralleviationfoundation20220901090608.azurewebsites.net/GoodsForm.aspx">Donate Goods</a>
                <a href="https://disasteralleviationfoundation20220901090608.azurewebsites.net/MoneyForm.aspx">Donate Money</a>
                <a href="https://disasteralleviationfoundation20220901090608.azurewebsites.net/DisasterForm.aspx">New Disaster</a>
            </nav>

        </div>


        <div class="auto-style2" style="height: 153px">
            <h2 class="auto-style3">Donate Money</h2>

        </div>
    </header>

    <section class="ftco-section">
        <div class="container">

            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-5">
                    <div class="login-wrap p-4 p-md-5">

                        <h3 class="text-center mb-4">Monetery Donation</h3>
                        <form id="form1" runat="server">
                            <div class="form-group">

                                <asp:TextBox ID="txtAmount" type="text" class="form-control rounded-left" placeholder="Enter Amount" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <p class="auto-style6">Date of Donation</p>
                                <asp:TextBox ID="txtDateDonation" type="date" class="form-control rounded-left" placeholder="Date of Donation" runat="server" required></asp:TextBox>

                            </div>

                            <div class="form-group">

                                <asp:TextBox ID="txtDonorName" type="text" class="form-control rounded-left" placeholder="Name(Anonymous if empty)" runat="server"></asp:TextBox>
                            </div>


                            <div class="form-group">

                                <asp:Button ID="btnAddMoney" runat="server" class="btn btn-primary rounded submit p-3 px-5" Text="Donate" OnClick="btnAddMoney_Click" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="content-wrapper">
            <p>@2022 Disaster Alleviation Foundation</p>
        </div>
    </footer>

</body>
&nbsp;
</html>
