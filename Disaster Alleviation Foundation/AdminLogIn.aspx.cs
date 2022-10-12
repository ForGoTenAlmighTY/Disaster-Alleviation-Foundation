using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Disaster_Alleviation_Foundation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //CONNECTION TO THE DATABASE
            SqlConnection con = new SqlConnection(@"Server=tcp:disasterfoundation.database.windows.net,1433;Initial Catalog=DisasterAlleviationDatabase;Persist Security Info=False;User ID=DisasterAlleviation;Password=Vikitar15!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) FROM WebAdmin WHERE email='" + txtEmail.Text + "' AND AdminPassword ='" + txtPassword.Text + "'", con);
            con.Open();

            //EXECUTES THE QUERY DECLARED
            DataTable dt = new DataTable();
            sda.Fill(dt);


            bool check = false;

            //ASSIGNS A SESSION NUMBER TO THE USER WHO HAS LOGIN OR REGISTERED


            if (dt.Rows[0][0].ToString() == "1")
            {
                check = true;

            }


            //CHECKS IF THE USER ENTERS THE CORRECT DETAIS TO LOGIN
            if (check == true)
            {
                Response.Redirect("~/HomeAdmin.aspx");
            }
            else
            {
                Response.Redirect("~/AdminLogIn.aspx");
            }

            con.Close();
        }
    }
}