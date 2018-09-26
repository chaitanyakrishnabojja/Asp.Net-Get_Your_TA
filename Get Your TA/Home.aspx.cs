using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Get_Your_TA
{
    public partial class Home : System.Web.UI.Page
    {
        private DataView userTable;
        protected void Page_Load(object sender, EventArgs e)
        {
            userTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            foreach (DataRowView row in userTable)
            {
                if (row["username"].ToString() == Session["UserName"].ToString())
                {
                   
                    Session["GradePay"] = row["gradepay"].ToString();
                    Session["UserID"] = row["user_id"].ToString();
                }

            }

        }
    }
}