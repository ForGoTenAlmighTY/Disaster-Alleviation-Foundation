<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="Disaster_Alleviation_Foundation.Inventory" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Register New Account</title>
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
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/Home.aspx">Home</a>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/LogIn.aspx">Log-Out</a>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/GoodsForm.aspx">Donate Goods</a>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/MoneyForm.aspx">Donate Money</a>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/Inventory.aspx">Inventory</a>
                </nav>

        </div>


        <div class="auto-style2" style="height: 153px">
            <h2 class="auto-style3">Your Inventory</h2>

        </div>
    </header>
    <div>
        <div>

            <div>
                <div class="auto-style8">
                    <div class="recentlyadded content-wrapper">
                        <h2 class="auto-style5">Inventory</h2>
                        <asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataDisaster" Height="165px" Width="646px" CellSpacing="2" CssClass="auto-style6">
                            <Columns>
                                <asp:BoundField DataField="GoodsName" HeaderText="GoodsName" SortExpression="GoodsName" />
                                <asp:BoundField DataField="Allocated Disaster" HeaderText="Allocated Disaster" SortExpression="Allocated Disaster" />
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
                        <asp:SqlDataSource ID="SqlDataDisaster" runat="server" ConnectionString="<%$ ConnectionStrings:DisasterAlleviationDatabaseConnectionString %>" SelectCommand="SELECT Inventory.UserID, Item.GoodsName, Disaster.Location AS 'Allocated Disaster' FROM Inventory INNER JOIN Item ON Inventory.ItemID = Item.ID INNER JOIN USERS ON Inventory.UserID = USERS.UserID INNER JOIN Disaster ON Inventory.DisID = Disaster.DisID"></asp:SqlDataSource>
                    </div>
                </div>

            </div>

        </div>
        <div>
            <div>
                <div class="auto-style8">
                    <div class="recentlyadded content-wrapper">
                        <h2 class="auto-style5">Available Items To Purchase</h2>
                        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="165px" Width="646px" CellSpacing="2" CssClass="auto-style6">
                            <Columns>
                                <asp:BoundField DataField="GoodsName" HeaderText="GoodsName" SortExpression="GoodsName" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DisasterAlleviationDatabaseConnectionString %>" SelectCommand="SELECT [GoodsName], [Price] FROM [Item]"></asp:SqlDataSource>
                    </div>
                </div>

            </div>


        </div>
        <section class="ftco-section">
            <div class="container">

                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-5">
                        <div class="login-wrap p-4 p-md-5">

                            <h3 class="text-center mb-4">Add Category</h3>
                            <form id="form2" runat="server">
                                <div class="form-group">
                                    <p class="auto-style6">Choose Item</p>
                                    <asp:DropDownList ID="DropDisaster" class="form-control rounded-left" placeholder="Select Category" runat="server" DataSourceID="SqlDataCategory" DataValueField="Name" required>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DisasterAlleviationDatabaseConnectionString %>" SelectCommand="SELECT [GoodsName] FROM [Item]"></asp:SqlDataSource>

                                </div>


                                <div class="form-group">

                                    <asp:Button ID="btnAddCategory" runat="server" class="btn btn-primary rounded submit p-3 px-5" Text="Purchase Item" OnClick="btnAddCategory_Click" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
        </section>
    </div>

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
