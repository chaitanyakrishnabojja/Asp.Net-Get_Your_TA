using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Get_Your_TA
{
    public partial class CalculatedPage1 : System.Web.UI.Page
    {
        private SqlConnection _con;
        private SqlCommand _cmd;
        private DataView userTable;
        private DataView detailTable;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblStartDate.Text = Session["StartDate"].ToString();
            lblEndDate.Text = Session["EndDate"].ToString();
            lblStartTime.Text = Session["StartTime"].ToString();
            lblEndTime.Text = Session["EndTime"].ToString();
            lblOrigin.Text = Session["Origin"].ToString();
            lblDestination.Text = Session["Destination"].ToString();
            lblStay.Text = Session["Stay"].ToString();
            lblVehicle.Text = Session["Vehicle"].ToString();
            lblDistance.Text = Session["Distance"].ToString();
            lblFare.Text = Session["Fare"].ToString();
            lblRemarks.Text = Session["Remarks"].ToString();
            lblGradePay.Text = Session["GradePay"].ToString();
            lblUserID.Text = Session["UserID"].ToString();
            lblHours.Text = Session["Hours"].ToString();
            lblDARate.Text = Session["DARate"].ToString();
            lblDA.Text = Session["DA"].ToString();
            lblDAPercent.Text = Session["DAPercent"].ToString();
            lblTotal.Text = Session["Total"].ToString();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Update.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {

                _con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\getyourta.mdf;Integrated Security=True");
                _con.Open();
                _cmd = new SqlCommand("UPDATE Detail SET start_date=@a1 , end_date=@a2 , start_time=@a3 , end_time=@a4 , origin=@a5 , destination=@a6 , stay=@a7 , vehicle=@a8 , distance=@a9 , fare=@a10 , remarks=@a11 , hours=@a12 , DA_rate=@a13 , DA=@a14 , DA_percent=@a15 , total=@a16 , ta_type=@a18 WHERE detail_id=@a17", _con);
                _cmd.Parameters.Add("a1", Session["StartDate"].ToString());
                _cmd.Parameters.Add("a2", Session["EndDate"].ToString());
                _cmd.Parameters.Add("a3", Session["StartTime"].ToString());
                _cmd.Parameters.Add("a4", Session["EndTime"].ToString());
                _cmd.Parameters.Add("a5", Session["Origin"].ToString());
                _cmd.Parameters.Add("a6", Session["Destination"].ToString());
                _cmd.Parameters.Add("a7", Session["Stay"].ToString());
                _cmd.Parameters.Add("a8", Session["Vehicle"].ToString());
                _cmd.Parameters.Add("a9", Session["Distance"].ToString());
                _cmd.Parameters.Add("a10", Session["Fare"].ToString());
                _cmd.Parameters.Add("a11", Session["Remarks"].ToString());
                _cmd.Parameters.Add("a12", Session["Hours"].ToString());
                _cmd.Parameters.Add("a13", Session["DARate"].ToString());
                _cmd.Parameters.Add("a14", Session["DA"].ToString());
                _cmd.Parameters.Add("a15", Session["DAPercent"].ToString());
                _cmd.Parameters.Add("a16", Session["Total"].ToString());
                _cmd.Parameters.Add("a17", Session["detail_id"].ToString());
                _cmd.Parameters.Add("a18", Session["ta_type"].ToString());
                _cmd.ExecuteNonQuery();


                lblError.Text = "Data Updated Successfully";
                //detailTable = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
                ////userTable.RowFilter = $"username = {txtUserName.Text}";


                //var parameters = SqlDataSource2.UpdateParameters;

                //parameters["user_id"].DefaultValue = Session["UserID"].ToString();
                //parameters["ta_type"].DefaultValue = Session["ta_type"].ToString();
                //parameters["start_date"].DefaultValue = Session["StartDate"].ToString();
                //parameters["remarks"].DefaultValue = Session["Remarks"].ToString();
                //parameters["hours"].DefaultValue = Session["Hours"].ToString();
                //parameters["DA_rate"].DefaultValue = Session["DARate"].ToString();
                //parameters["DA"].DefaultValue = Session["DA"].ToString();
                //parameters["DA_percent"].DefaultValue = Session["DAPercent"].ToString();
                //parameters["total"].DefaultValue = Session["Total"].ToString();


                //if (Session["ta_type"].ToString() == "Tour")
                //{
                //    parameters["end_date"].DefaultValue = Session["EndDate"].ToString();
                //    parameters["start_time"].DefaultValue = Session["StartTime"].ToString();
                //    parameters["end_time"].DefaultValue = Session["EndTime"].ToString();
                //    parameters["origin"].DefaultValue = Session["Origin"].ToString();
                //    parameters["destination"].DefaultValue = Session["Destination"].ToString();
                //    parameters["stay"].DefaultValue = Session["Stay"].ToString();
                //    parameters["vehicle"].DefaultValue = Session["Vehicle"].ToString();
                //    parameters["distance"].DefaultValue = Session["Distance"].ToString();
                //    parameters["fare"].DefaultValue = Session["Fare"].ToString();

                //}
                //else if (Session["ta_type"].ToString() == "Office")
                //{
                //    parameters["end_date"].DefaultValue = Session["EndDate"].ToString();
                //    parameters["start_time"].DefaultValue = Session["StartTime"].ToString();
                //    parameters["end_time"].DefaultValue = Session["EndTime"].ToString();
                //    parameters["origin"].DefaultValue = Session["Origin"].ToString();
                //}





                //try
                //{
                //    SqlDataSource2.Update();
                //    lblStartDate.Text = "";
                //    lblEndDate.Text = "";
                //    lblStartTime.Text = "";
                //    lblEndTime.Text = "";
                //    lblOrigin.Text = "";
                //    lblDestination.Text = "";
                //    lblStay.Text = "";
                //    lblVehicle.Text = "";
                //    lblDistance.Text = "";
                //    lblFare.Text = "";
                //    lblRemarks.Text = "";
                //    lblGradePay.Text = "";
                //    lblHours.Text = "";
                //    lblDARate.Text = "";
                //    lblDA.Text = "";
                //    lblDAPercent.Text = "";
                //    lblTotal.Text = "";
                //    Response.Redirect("~/Home.aspx");
                //}
                //catch (Exception ex)
                //{
                //    lblError.Text = DatabaseErrorMessage(ex.Message);
                //}

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
    }
}