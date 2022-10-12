<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeAdmin.aspx.cs" Inherits="Disaster_Alleviation_Foundation.HomeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Disaster Alleviation Foundation</title>
    <link href="css/style1.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" />
    <style type="text/css">
        .auto-style1 {
            height: 47px;
            color: coral;
            font-size: 20px;
            margin-left: 5px;
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

        .btn {
            height: 88px;
            background-color: #3e054f;
            color: #fff;
            border: 1px solid transparent;
            padding: 0.375rem 0.75rem;
            font-size: 1rem;
            line-height: 1.5;
            border-radius: 0.25rem;
            border-color: #0062cc;
            display: inline-block;
            font-weight: 400;
            text-align: center;
            vertical-align: middle
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
            margin-bottom: 18px;
        }

        .auto-style7 {
            margin-bottom: 15px;
        }

        .auto-style8 {
            margin-left: 431px;
        }

        .auto-style9 {
            background-image: url(image/cute-purple-aesthetic-abstract-minimal-background.png);
             background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>


<body>
    <form id="form1" runat="server">
        <header>
            <div class="content-wrapper">
                <h1>Disaster Alleviation Foundation</h1>
                <nav>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/HomeAdmin.aspx">Home</a>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/LogIn.aspx">Log-Out</a>
                    
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/CategoryAdmin.aspx">New Category</a>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/GoodsAdmin.aspx">New Goods</a>
                    <a href="https://disasteralleviationfoundation1.azurewebsites.net/DisasterForm.aspx">New Disaster</a>
                </nav>

            </div>


            <div class="auto-style2" style="height: 153px">
                <h2 class="auto-style3">Welcome to Back Administrator</h2>

            </div>
        </header>

        <div class="auto-style9">
        <div class="auto-style8">
 <div class="recentlyadded content-wrapper">
                <h2 class="auto-style1">Users</h2>
                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataGoods" Height="168px" Width="770px" CellSpacing="2" CssClass="auto-style6" DataKeyNames="UserID">
                    <Columns>
                        <asp:BoundField DataField="UserID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                        <asp:BoundField DataField="UserName" HeaderText="Username" SortExpression="UserName" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="UserMoney" HeaderText="User money" SortExpression="UserMoney" />
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
                <asp:SqlDataSource ID="SqlDataGoods" runat="server" ConnectionString="<%$ ConnectionStrings:DisasterAlleviationDatabaseConnectionString %>" SelectCommand="SELECT [UserID], [UserName], [Password], [Email], [UserMoney] FROM [USERS]"></asp:SqlDataSource>

            </div>
            <div class="recentlyadded content-wrapper">
                <h2 class="auto-style1">Goods Donations
                </h2>
                <asp:GridView ID="GridView4" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Height="168px" Width="770px" CellSpacing="2" CssClass="auto-style6">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                        <asp:BoundField DataField="DateDonation" HeaderText="Date Donation" SortExpression="DateDonation" />
                        <asp:BoundField DataField="DonorName" HeaderText="Donor Name" SortExpression="DonorName" />
                        <asp:BoundField DataField="NumItems" HeaderText="Number of Items" SortExpression="NumItems" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DisasterAlleviationDatabaseConnectionString %>" SelectCommand="SELECT [ID], [Description], [Quantity], [Category], [DateDonation], [DonorName], [NumItems], [Price] FROM [Goods]"></asp:SqlDataSource>
               
            </div>

           

            <div class="recentlyadded content-wrapper">
                <h2 class="auto-style4">Monetary Donations
                </h2><asp:GridView ID="GridView3" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="148px" Width="560px" CellSpacing="2" CssClass="auto-style7">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="DateDonation" HeaderText="Date Donation" SortExpression="DateDonation" />
                        <asp:BoundField DataField="DonorName" HeaderText="Donor Name" SortExpression="DonorName" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DisasterAlleviationDatabaseConnectionString %>" SelectCommand="SELECT [Amount], [DateDonation], [DonorName], [ID] FROM [MoneyDonation]"></asp:SqlDataSource>

            </div>
            <div class="recentlyadded content-wrapper">
                <h2 class="auto-style5">Disasters Aid
                </h2>
<asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataDisaster" Height="165px" Width="646px" CellSpacing="2" CssClass="auto-style6">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="AidTypes" HeaderText="Aid Types" SortExpression="AidTypes" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                        <asp:BoundField DataField="EndDate" HeaderText="End Date" SortExpression="EndDate" />
                        <asp:BoundField DataField="StartDate" HeaderText="Start Date" SortExpression="StartDate" />
                        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
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
                <asp:SqlDataSource ID="SqlDataDisaster" runat="server" ConnectionString="<%$ ConnectionStrings:DisasterAlleviationDatabaseConnectionString %>" SelectCommand="SELECT [AidTypes], [Description], [Location], [EndDate], [StartDate], [status], [ID] FROM [Disaster]"></asp:SqlDataSource>
                <asp:Button ID="btnDisaster" class="btn" runat="server" Text="New Disaster Aid" Height="59px" Width="146px" OnClick="btnDisaster_Click" />
            </div>

        </div>

        </div>
       





        <footer class="auto-style9">
            <div class="content-wrapper">
                <p>@2022 Disaster Alleviation Foundation</p>
            </div>
        </footer>



    </form>
</body>
</html>

