using System;
using System.Collections.Generic;
using Microsoft.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Disaster_Alleviation_Foundation
{
    public partial class MoneyForm : System.Web.UI.Page
    {
        public Custom custom;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddMoney_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Server=tcp:disasterfoundation.database.windows.net,1433;Initial Catalog=DisasterAlleviationDatabase;Persist Security Info=False;User ID=DisasterAlleviation;Password=Vikitar15!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            if (txtDonorName.Text == "")
            {
                txtDonorName.Text = "Anonymous";
            }
            
            //INSERT QUERY TO THE DATABASE
            SqlCommand sqlCommand = new SqlCommand("INSERT INTO MoneyDonation VALUES ('" + txtAmount.Text + "','" + txtDateDonation.Text + "','" + txtDonorName.Text + "','" + Convert.ToInt32(DropDisaster.Text) + "')", con);

            con.Open();



            SqlDataReader dataReader = sqlCommand.ExecuteReader();

            SqlDataReader reader = dataReader;


            con.Close();
            Response.Redirect("~/Home.aspx");

            txtAmount.Text = "";
            txtDateDonation.Text = "";
            txtDonorName.Text = "";

        }
    }
}