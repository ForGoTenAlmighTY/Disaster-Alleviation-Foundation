<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoodsForm.aspx.cs" Inherits="Disaster_Alleviation_Foundation.GoodsForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Donate Goods</title>
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
            margin-left: 431px;
        }

        .p {
            color: darkmagenta;
        }

        .auto-style9 {
            background-image: url(image/cute-purple-aesthetic-abstract-minimal-background.png);
            background-repeat: no-repeat;
            background-size: cover;
        }

        .auto-style6 {
            color: darkmagenta;
            margin-bottom: 0px;
        }
        .auto-style10 {
            position: relative;
            left: 0px;
            top: 0px;
            margin-bottom: 1rem;
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
            <h2 class="auto-style3">Donate Goods</h2>

        </div>
    </header>

    <div class="auto-style9">
        <div class="auto-style8">
            <div class="recentlyadded content-wrapper">
                <h2 class="auto-style5">Active Disasters Aid</h2>
                <asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataDisaster" Height="165px" Width="646px" CellSpacing="2" CssClass="auto-style6" DataKeyNames="Disaster Number">
                    <Columns>
                        <asp:BoundField DataField="AidTypes" HeaderText="AidTypes" SortExpression="AidTypes" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                        <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                        <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                        <asp:BoundField DataField="Disaster Number" HeaderText="Disaster Number" InsertVisible="False" ReadOnly="True" SortExpression="Disaster Number" />
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
                <asp:SqlDataSource ID="SqlDataDisaster" runat="server" ConnectionString="<%$ ConnectionStrings:DisasterAlleviationDatabaseConnectionString %>" SelectCommand="SELECT AidTypes, Description, Location, EndDate, StartDate, DisID AS 'Disaster Number' FROM Disaster WHERE (status = 'Active')"></asp:SqlDataSource>
            </div>
        </div>

        <section class="ftco-section">
            <div class="container">


                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-5">
                        <div class="login-wrap p-4 p-md-5">

                            <h3 class="text-center mb-4">Goods Donation</h3>
                           
                                <div class="form-group">

                                    <asp:TextBox ID="txtNumItems" type="text" class="form-control rounded-left" placeholder="Number of Items" runat="server" required></asp:TextBox>
                                </div>

                                

                                <div class="form-group d-flex">

                                    <asp:TextBox ID="txtQuantity" type="number" class="form-control rounded-left" placeholder="Quantity" runat="server" required></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <p class="auto-style6">Category</p>
                                    <asp:DropDownList ID="DropCategory" class="form-control rounded-left" placeholder="Select Category" runat="server" DataSourceID="SqlDataCategory" DataValueField="Name">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataCategory" runat="server" ConnectionString="<%$ ConnectionStrings:DisasterAlleviationDatabaseConnectionString %>" SelectCommand="SELECT [Name] FROM [CATEGORY]"></asp:SqlDataSource>
                                   
                                </div>
                            <div class="form-group">
                                    <p class="auto-style6">Select Items</p>
                                    <asp:DropDownList ID="DropItem" runat="server" class="form-control rounded-left" DataSourceID="SqlDataSource2" DataTextField="GoodsName" DataValueField="GoodsName"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DisasterAlleviationDatabaseConnectionString %>" SelectCommand="SELECT GoodsName FROM Item"></asp:SqlDataSource>
                                </div>
                            <div class="auto-style10">
                                    <p class="auto-style6" >Select Disaster</p>
                                <asp:DropDownList ID="DropDisaster" class="form-control rounded-left"  runat="server" DataSourceID="SqlDataDisaster" DataTextField="Disaster Number" DataValueField="Disaster Number"></asp:DropDownList>
                                 </div>

                                <div class="form-group">
                                    <p class="auto-style6">Date of Donation</p>
                                    <asp:TextBox ID="txtDateDonation" type="date" class="form-control rounded-left" placeholder="Date of Donation" runat="server" required></asp:TextBox>

                                </div>




                                <div class="form-group">

                                    <asp:TextBox ID="txtDonorName" type="text" class="form-control rounded-left" placeholder="Name(Anonymous if empty)" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group d-md-flex">
                                    <div class="w-50">
                                        <label class="checkbox-wrap checkbox-primary">
                                        </label>
                                    </div>
                                    <div class="w-50 text-md-right">
                                        <a href="https://disasteralleviationfoundation20220901090608.azurewebsites.net/Category.aspx">Create New Category</a>
                                    </div>
                                </div>


                                <div class="form-group">

                                    <asp:Button ID="btnAddGoods" runat="server" class="btn btn-primary rounded submit p-3 px-5" Text="Donate" OnClick="btnAddGoods_Click" />
                                </div>
                            
                        </div>
                    </div>
                </div>
        </section>

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
