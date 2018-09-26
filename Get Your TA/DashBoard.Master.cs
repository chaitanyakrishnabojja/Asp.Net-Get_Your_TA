using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Get_Your_TA
{
    public partial class DashBoard : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUserName.Text = Session["UserName"].ToString();
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("~/Landing.aspx");
        }
    }
}