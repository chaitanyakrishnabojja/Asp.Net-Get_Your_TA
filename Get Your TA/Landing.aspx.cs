using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Get_Your_TA
{
    public partial class Landing : System.Web.UI.Page
    {
        private DataView userTable;
        bool valid = false;
        bool userNameExists = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                userTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                //userTable.RowFilter = $"username = {txtUserName.Text}";
                foreach (DataRowView row in userTable)
                {
                    if (row["username"].ToString() == txtUserName1.Text)
                    {
                        userNameExists = true;
                    }

                }
                if (userNameExists)
                {
                    lblError.Text = "Username already exists, please try with different username";
                }
                else
                {
                    var parameters = SqlDataSource1.InsertParameters;

                    parameters["salutation"].DefaultValue = ddlSalutation.SelectedValue;
                    parameters["first_name"].DefaultValue = txtFirstName.Text;
                    parameters["last_name"].DefaultValue = txtLastName.Text;
                    parameters["phone"].DefaultValue = txtPhone.Text;
                    parameters["designation"].DefaultValue = txtDesignation.Text;
                    parameters["gradepay"].DefaultValue = ddlGradePay.SelectedValue;
                    parameters["office"].DefaultValue = txtOffice.Text;
                    parameters["headquarter"].DefaultValue = txtHeadQuarter.Text;
                    parameters["username"].DefaultValue = txtUserName1.Text;
                    parameters["password"].DefaultValue = txtPassword1.Text;


                    try
                    {
                        SqlDataSource1.Insert();
                        ddlSalutation.SelectedIndex = 0;
                        txtFirstName.Text = "";
                        txtLastName.Text = "";
                        txtPhone.Text = "";
                        txtDesignation.Text = "";
                        ddlGradePay.SelectedIndex = 0;
                        txtOffice.Text = "";
                        txtHeadQuarter.Text = "";
                        txtUserName1.Text = "";
                        txtPassword1.Text = "";
                        Response.Redirect("~/RegistrationSuccess.aspx");
                    }
                    catch (Exception ex)
                    {
                        lblError.Text = DatabaseErrorMessage(ex.Message);
                    }

                }
                
            }
        }

        private string DatabaseErrorMessage(string errorMsg)
        {
            return $"<b>A database error has occurred:</b> {errorMsg}";
        }
        private string ConcurrencyErrorMessage()
        {
            return "Another user may have updated that category. Please try again";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Session["UserName"] = txtUserName.Text;
                
                userTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                //userTable.RowFilter = $"username = {txtUserName.Text}";
                foreach (DataRowView row in userTable)
                {
                    if((row["username"].ToString() == txtUserName.Text) && (row["password"].ToString() == txtPassword.Text))
                    {
                        valid = true;
                    }
                    
                }
                 
                if (valid)
                {

                    Response.Redirect("~/Home.aspx");
                }
                else
                {
                    lblInvalid.Text = "Invalid username or password";
                }
            }
            
            
        }
    }
}