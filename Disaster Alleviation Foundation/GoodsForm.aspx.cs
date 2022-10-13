using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Disaster_Alleviation_Foundation
{
    public partial class GoodsForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddGoods_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Server=tcp:disasterfoundation.database.windows.net,1433;Initial Catalog=DisasterAlleviationDatabase;Persist Security Info=False;User ID=DisasterAlleviation;Password=Vikitar15!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            if (txtDonorName.Text == "")
            {
                txtDonorName.Text = "Anonymous";
            }

            //INSERT QUERY TO THE DATABASE
            SqlCommand sqlCommand = new SqlCommand("INSERT INTO Goods VALUES ('" + DropItem.Text + "','" + txtQuantity.Text + "','" + DropCategory.Text + "','" + txtDateDonation.Text + "','" + txtDonorName.Text + "','" + txtNumItems.Text + "','" + Convert.ToInt32(DropDisaster.Text) + "')", con);
            //  SqlCommand sqlCommand = new SqlCommand("INSERT INTO Goods VALUES ('" + txtNumItems.Text + "','" + txtDescription.Text + "','" + txtQuantity.Text + "','" + DropCategory.Text + "','" + txtDateDonation.Text + "','" + txtDonorName.Text + "')", con);

            con.Open();



            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            SqlDataReader reader = dataReader;



            con.Close();
            Response.Redirect("~/Home.aspx");

           
            txtQuantity.Text = "";
            DropCategory.Text = "";
            txtDateDonation.Text = "";
            txtDonorName.Text = "";
            txtNumItems.Text = "";



        }
    }
}