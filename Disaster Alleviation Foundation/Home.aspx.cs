using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Disaster_Alleviation_Foundation.image
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGoods_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GoodsForm.aspx");
        }

        protected void btnMoney_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/MoneyForm.aspx");
        }

        
    }
}
