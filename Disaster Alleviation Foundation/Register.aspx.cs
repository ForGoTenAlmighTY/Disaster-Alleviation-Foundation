using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Disaster_Alleviation_Foundation
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Server=tcp:disasterfoundation.database.windows.net,1433;Initial Catalog=DisasterAlleviationDatabase;Persist Security Info=False;User ID=DisasterAlleviation;Password=Vikitar15!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            //INSERT QUERY TO THE DATABASE
            SqlCommand sqlCommand = new SqlCommand("INSERT INTO USERS VALUES ('" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtEmail.Text + "')", con);
            con.Open();



            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            SqlDataReader reader = dataReader;



            con.Close();
            Response.Redirect("~/LogIn.aspx");
        }
    }
}