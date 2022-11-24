using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Disaster_Alleviation_Foundation
{
    public partial class Statistics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Server=tcp:disasterfoundation.database.windows.net,1433;Initial Catalog=DisasterAlleviationDatabase;Persist Security Info=False;User ID=DisasterAlleviation;Password=Vikitar15!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            
            
            
            con.Open();
            string query1 = "SELECT Sum(Amount) FROM MoneyDonation";
            //EXECUTES THE QUERY DECLARED
            SqlCommand sqlCommand1 = new SqlCommand(query1, con);
            
            SqlDataReader dataReader1 = sqlCommand1.ExecuteReader();
            dataReader1.Read();
         
            LabelAmount.Text= dataReader1.GetValue(0).ToString();
 
            con.Close();

            con.Open();

            string query2 = "SELECT DonorName,Max(Amount) FROM MoneyDonation Group By DonorName";
            SqlCommand sqlCommand2 = new SqlCommand(query2, con);
            SqlDataReader dataReader2 = sqlCommand2.ExecuteReader();
            dataReader2.Read();
            LabelDonor.Text = dataReader2.GetValue(0).ToString();

            con.Close();

            con.Open();

            string query3 = "SELECT Sum(Quantity) FROM Goods";
            SqlCommand sqlCommand3 = new SqlCommand(query3, con);
            SqlDataReader dataReader3 = sqlCommand3.ExecuteReader();
            dataReader3.Read();
            LabelGoods.Text = dataReader3.GetValue(0).ToString();

            con.Close();
;


        }
    }
}