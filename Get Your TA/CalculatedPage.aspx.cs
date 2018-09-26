using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Get_Your_TA
{
    public partial class CalculatedPage : System.Web.UI.Page
    {
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
            Response.Redirect("~/Insert.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                detailTable = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
                //userTable.RowFilter = $"username = {txtUserName.Text}";


                var parameters = SqlDataSource2.InsertParameters;

                parameters["user_id"].DefaultValue = Session["UserID"].ToString();
                parameters["ta_type"].DefaultValue = Session["ta_type"].ToString();
                parameters["start_date"].DefaultValue = Session["StartDate"].ToString();
                parameters["remarks"].DefaultValue = Session["Remarks"].ToString();
                parameters["hours"].DefaultValue = Session["Hours"].ToString();
                parameters["DA_rate"].DefaultValue = Session["DARate"].ToString();
                parameters["DA"].DefaultValue = Session["DA"].ToString();
                parameters["DA_percent"].DefaultValue = Session["DAPercent"].ToString();
                parameters["total"].DefaultValue = Session["Total"].ToString();

                //parameters["user_id"].DefaultValue = lblUserID.Text;
                //parameters["start_date"].DefaultValue = lblStartDate.Text;
                //parameters["end_date"].DefaultValue = lblEndDate.Text;
                //parameters["start_time"].DefaultValue = lblStartTime.Text;
                //parameters["end_time"].DefaultValue = lblEndTime.Text;
                //parameters["origin"].DefaultValue = lblOrigin.Text;
                //parameters["destination"].DefaultValue = lblDestination.Text;
                //parameters["stay"].DefaultValue = lblStay.Text;
                //parameters["vehicle"].DefaultValue = lblVehicle.Text;
                //parameters["distance"].DefaultValue = lblDistance.Text;
                //parameters["fare"].DefaultValue = lblFare.Text;
                //parameters["remarks"].DefaultValue = lblRemarks.Text;
                //parameters["hours"].DefaultValue = lblHours.Text;
                //parameters["DA_rate"].DefaultValue = lblDARate.Text;
                //parameters["DA"].DefaultValue = lblDA.Text;
                //parameters["DA_percent"].DefaultValue = lblDAPercent.Text;
                //parameters["total"].DefaultValue = lblTotal.Text;
                if (Session["ta_type"].ToString() == "Tour")
                {
                    parameters["end_date"].DefaultValue = Session["EndDate"].ToString();
                    parameters["start_time"].DefaultValue = Session["StartTime"].ToString();
                    parameters["end_time"].DefaultValue = Session["EndTime"].ToString();
                    parameters["origin"].DefaultValue = Session["Origin"].ToString();
                    parameters["destination"].DefaultValue = Session["Destination"].ToString();
                    parameters["stay"].DefaultValue = Session["Stay"].ToString();
                    parameters["vehicle"].DefaultValue = Session["Vehicle"].ToString();
                    parameters["distance"].DefaultValue = Session["Distance"].ToString();
                    parameters["fare"].DefaultValue = Session["Fare"].ToString();

                }else if(Session["ta_type"].ToString() == "Office")
                {
                    parameters["end_date"].DefaultValue = Session["EndDate"].ToString();
                    parameters["start_time"].DefaultValue = Session["StartTime"].ToString();
                    parameters["end_time"].DefaultValue = Session["EndTime"].ToString();
                    parameters["origin"].DefaultValue = Session["Origin"].ToString();
                }

                
                
                

                try
                {
                    SqlDataSource2.Insert();
                    //lblStartDate.Text = "";
                    //lblEndDate.Text = "";
                    //lblStartTime.Text = "";
                    //lblEndTime.Text = "";
                    //lblOrigin.Text = "";
                    //lblDestination.Text = "";
                    //lblStay.Text = "";
                    //lblVehicle.Text = "";
                    //lblDistance.Text = "";
                    //lblFare.Text = "";
                    //lblRemarks.Text = "";
                    //lblGradePay.Text = "";
                    //lblHours.Text = "";
                    //lblDARate.Text = "";
                    //lblDA.Text = "";
                    //lblDAPercent.Text = "";
                    //lblTotal.Text = "";
                    lblError.Text = "Data Inserted Successfully";
                }
                catch (Exception ex)
                {
                    lblError.Text = DatabaseErrorMessage(ex.Message);
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
    }
}