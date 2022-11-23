<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Statistics.aspx.cs" Inherits="Disaster_Alleviation_Foundation.Statistics" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Statistics</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/StyleSheet1.css">
    <link rel="stylesheet" href="css/style1.css">
    <style type="text/css">
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

        .auto-style5 {
            height: 45px;
            color: coral;
            font-size: 20px;
        }

        .auto-style8 {
            margin-left: 513px;
        }

        .p {
            color: darkmagenta;
        }

        .auto-style9 {
            background-image: url('image/cute-purple-aesthetic-abstract-minimal-background.png');
            background-repeat: no-repeat;
            background-size: cover;
            height: 1368px;
        }

        .auto-style6 {
            color: darkmagenta;
            margin-bottom: 0px;
        }

        .auto-style11 {
            color: darkmagenta;
            margin-bottom: 48px;
        }
        .auto-style12 {
            margin-left: 510px;
            margin-top: 76px;
            margin-bottom: 88px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">


        <header>
            <div class="content-wrapper">
                <h1>Disaster Alleviation Foundation</h1>
                <nav>
                    <a href="https://.azurewebsites.net/Home.aspx">Home</a>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/LogIn.aspx">Log-Out</a>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/GoodsForm.aspx">Donate Goods</a>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/MoneyForm.aspx">Donate Money</a>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/Inventory.aspx">Inventory</a>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/Statistics.aspx">Statistics</a>
                </nav>

            </div>


            <div class="auto-style2" style="height: 153px">
                <h2 class="auto-style3">Statistics</h2>

            </div>
        </header>

        <div class="auto-style9">

            <section class="ftco-section">
                <div class="container">


                    <div class="row justify-content-center">
                        <div class="col-md-6 col-lg-5">
                            <div class="login-wrap p-4 p-md-5">

                                <h3 class="text-center mb-4">Total Donations</h3>


                                <div class="form-group">
                                    <p class="auto-style6">Total Monetary Donations:</p>
                                    <asp:Label ID="LabelAmount" class="form-control rounded-left" Text="R " runat="server"></asp:Label>
                                </div>
                                <div class="form-group">
                                    <p class="auto-style6">Donor With The Most Monetary Donations:</p>
                                    <asp:Label ID="LabelDonor" class="form-control rounded-left" runat="server"></asp:Label>
                                </div>

                                <div class="form-group">
                                    <p class="auto-style6">Total Goods Recieved:</p>
                                    <asp:Label ID="LabelGoods" class="form-control rounded-left" runat="server"></asp:Label>
                                </div>


                            </div>
                        </div>
                    </div>
            </section>

            <div class="auto-style8">
                <div class="recentlyadded content-wrapper">
                    <h2 class="auto-style5">Active Disasters Aid With Goods Donated</h2>
                    <asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataDisaster" Height="165px" Width="772px" CellSpacing="2" CssClass="auto-style6">
                        <Columns>
                            <asp:BoundField DataField="AidTypes" HeaderText="Aid Types" SortExpression="AidTypes" />
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                            <asp:BoundField DataField="EndDate" HeaderText="End Date" SortExpression="EndDate" />
                            <asp:BoundField DataField="StartDate" HeaderText="Start Date" SortExpression="StartDate" />
                            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                            <asp:BoundField DataField="Expr1" HeaderText="Description" SortExpression="Expr1" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataDisaster" runat="server" ConnectionString="<%$ ConnectionStrings:DisasterAlleviationDatabaseConnectionString %>" SelectCommand="SELECT Disaster.AidTypes, Disaster.Description, Disaster.Location, Disaster.EndDate, Disaster.StartDate, Goods.Category, Goods.Description AS Expr1, Goods.Quantity FROM Disaster INNER JOIN Goods ON Disaster.DisID = Goods.DisID WHERE (Disaster.status = 'Active')"></asp:SqlDataSource>
                </div>
            </div>

            <div class="auto-style12">
                <div class="recentlyadded content-wrapper">
                    <h2 class="auto-style5">Active Disasters Aid With Monetary Donations</h2>
                    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Height="165px" Width="646px" CellSpacing="2" CssClass="auto-style11">
                        <Columns>
                            <asp:BoundField DataField="AidTypes" HeaderText="Aid Types" SortExpression="AidTypes" />
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DisasterAlleviationDatabaseConnectionString %>" SelectCommand="SELECT Disaster.AidTypes, Disaster.Description, Disaster.Location, MoneyDonation.Amount FROM Disaster INNER JOIN MoneyDonation ON Disaster.DisID = MoneyDonation.DisID"></asp:SqlDataSource>
                </div>
            </div>



        </div>


    </form>





    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>

    <footer>
        <div class="content-wrapper">
            <p>@2022 Disaster Alleviation Foundation</p>
        </div>
    </footer>

</body>
&nbsp;
</html>
