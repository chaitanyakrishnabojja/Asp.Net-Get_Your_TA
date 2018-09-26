using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Get_Your_TA
{
    public partial class Insert : System.Web.UI.Page
    {
        private DataView userTable;
        private TimeSpan dateDiff;
        private TimeSpan timeDiff;
        private double hours;
        int i;
        double DAPercentvar;
        int DARateVar;
        int GradePayVar;
        double DAVar;
        double total;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            userTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            
            foreach (DataRowView row in userTable)
            {
                if (row["username"].ToString() == Session["UserName"].ToString())
                {
                    lblGradePay.Text = row["gradepay"].ToString();
                    Session["GradePay"] = row["gradepay"].ToString();
                    GradePayVar = int.Parse(Session["GradePay"].ToString());
                    Session["UserID"] = row["user_id"].ToString();
                }

            }
            
        }

        protected void rdoGroup_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rdoGroup.SelectedValue == "Tour")
            {
                initializingControls();

                txtEndDate.Enabled = true;
                txtStartTime.Enabled = true;
                txtEndTime.Enabled = true;
                ddlOrigin.Enabled = true;
                ddlDestination.Enabled = true;
                ddlStay.Enabled = true;
                ddlVehicle.Enabled = true;
                txtDistance.Enabled = true;
                txtFare.Enabled = true;
            }else if (rdoGroup.SelectedValue == "Office")
            {
                
                initializingControls();

                rfvDistance.Enabled = false;
                cvDistance.Enabled = false;
                cvDestination.Enabled = false;
                rfvFare.Enabled = false;
                cvFare.Enabled = false;

                txtEndDate.Enabled = true;
                txtStartTime.Enabled = true;
                txtEndTime.Enabled = true;
                ddlOrigin.Enabled = true;
                ddlDestination.Enabled = false;
                ddlStay.Enabled = false;
                ddlVehicle.Enabled = false;
                txtDistance.Enabled = false;
                txtFare.Enabled = false;
            }
            else if (rdoGroup.SelectedValue == "Holiday")
            {
                initializingControls();

                rfvEndDate.Enabled = false;
                cvEndDate.Enabled = false;
                rfvStartTime.Enabled = false;
                rfvEndTime.Enabled = false;
                cvDestination.Enabled = false;
                rfvDistance.Enabled = false;
                cvDistance.Enabled = false;
                rfvFare.Enabled = false;
                cvFare.Enabled = false;

                txtEndDate.Enabled = false;
                txtStartTime.Enabled = false;
                txtEndTime.Enabled = false;
                ddlOrigin.Enabled = false;
                ddlDestination.Enabled = false;
                ddlStay.Enabled = false;
                ddlVehicle.Enabled = false;
                txtDistance.Enabled = false;
                txtFare.Enabled = false;
            }
        }

        protected void initializingControls()
        {

            txtStartDate.Text = "";
            txtEndDate.Text = "";
            txtStartTime.Text = "";
            txtEndTime.Text = "";
            ddlOrigin.SelectedIndex = 0;
            ddlDestination.SelectedIndex = 0;
            ddlStay.SelectedIndex = 0;
            ddlVehicle.SelectedIndex = 0;
            txtDistance.Text = "";
            txtFare.Text = "";
            txtRemarks.Text = "";
            lblHours.Text = "";
            lblDARate.Text = "";
            lblDA.Text = "";
            lblDAPercent.Text = "";
            lblTotal.Text = "";

            rfvStartDate.Enabled = true;
            rfvEndDate.Enabled = true;
            cvEndDate.Enabled = true;
            rfvStartTime.Enabled = true;
            rfvEndTime.Enabled = true;
            cvDestination.Enabled = true;
            rfvDistance.Enabled = true;
            cvDistance.Enabled = true;
            rfvFare.Enabled = true;
            cvFare.Enabled = true;
        }

        

        protected void btnResults_Click(object sender, EventArgs e)
        {
            if (rdoGroup.SelectedValue == "Holiday")
            {
                hours = 0;
            }
            else
            {
                dateDiff = DateTime.Parse(txtEndDate.Text).Subtract(DateTime.Parse(txtStartDate.Text));
                timeDiff = DateTime.Parse(txtEndTime.Text).Subtract(DateTime.Parse(txtStartTime.Text));
                hours = dateDiff.TotalHours + timeDiff.TotalHours;
                hours = Math.Truncate(hours);
            }


            
            lblHours.Text = hours.ToString();
            
            for(i = 0; hours >= 24; i++)
            {
                hours = hours - 24;
            }

            if(hours > 0 && hours <= 6)
            {
                DAPercentvar = 0.3;
            }else if(hours > 6 && hours <= 12)
            {
                DAPercentvar = 0.5;
            }
            else if (hours > 12 && hours <= 24)
            {
                DAPercentvar = 1;
            }

            DAPercentvar = DAPercentvar + i;
            lblDAPercent.Text = DAPercentvar.ToString();

            if ((ddlDestination.SelectedValue == "Hyderabad") || (ddlDestination.SelectedValue == "Banglore") || (ddlDestination.SelectedValue == "Chennai")
               || (ddlDestination.SelectedValue == "Kolkata") || (ddlDestination.SelectedValue == "Mumbai"))
            {
                if (ddlStay.SelectedValue == "Hotel")
                {
                    if (GradePayVar == 8900)
                    {
                        DARateVar = 1000;
                    }
                    else if (GradePayVar == 6600)
                    {
                        DARateVar = 750;
                    }
                    else if (GradePayVar == 4400)
                    {
                        DARateVar = 575;
                    }
                    else if (GradePayVar == 4200)
                    {
                        DARateVar = 300;
                    }
                }
                else if (ddlStay.SelectedValue == "Without Hotel")
                {
                    if (GradePayVar == 8900)
                    {
                        DARateVar = 325;
                    }
                    else if (GradePayVar == 6600)
                    {
                        DARateVar = 290;
                    }
                    else if (GradePayVar == 4400)
                    {
                        DARateVar = 225;
                    }
                    else if (GradePayVar == 4200)
                    {
                        DARateVar = 160;
                    }
                }
            }

            if ((ddlDestination.SelectedValue == "Pune") || (ddlDestination.SelectedValue == "Nagpur") || (ddlDestination.SelectedValue == "Ahmedabad")
                    || (ddlDestination.SelectedValue == "Surat") || (ddlDestination.SelectedValue == "Jaipur") || (ddlDestination.SelectedValue == "Lucknow"))
            {
                    if (ddlStay.SelectedValue == "Hotel")
                    {
                        if (GradePayVar == 8900)
                        {
                            DARateVar = 800;
                        }
                        else if (GradePayVar == 6600)
                        {
                            DARateVar = 600;
                        }
                        else if (GradePayVar == 4400)
                        {
                            DARateVar = 450;
                        }
                        else if (GradePayVar == 4200)
                        {
                            DARateVar = 225;
                        }
                    }
                    else if (ddlStay.SelectedValue == "Without Hotel")
                    {
                        if (GradePayVar == 8900)
                        {
                            DARateVar = 200;
                        }
                        else if (GradePayVar == 6600)
                        {
                            DARateVar = 180;
                        }
                        else if (GradePayVar == 4400)
                        {
                            DARateVar = 150;
                        }
                        else if (GradePayVar == 4200)
                        {
                            DARateVar = 125;
                        }
                    }

            }

            if ((ddlDestination.SelectedValue == "Varanasi") || (ddlDestination.SelectedValue == "Nasik") || (ddlDestination.SelectedValue == "Vijayawada")
                    || (ddlDestination.SelectedValue == "Visakhapatnam") || (ddlDestination.SelectedValue == "Patna"))
            {
                        if (ddlStay.SelectedValue == "Hotel")
                        {
                            if (GradePayVar == 8900)
                            {
                                DARateVar = 650;
                            }
                            else if (GradePayVar == 6600)
                            {
                                DARateVar = 500;
                            }
                            else if (GradePayVar == 4400)
                            {
                                DARateVar = 375;
                            }
                            else if (GradePayVar == 4200)
                            {
                                DARateVar = 225;
                            }
                        }
                        else if (ddlStay.SelectedValue == "Without Hotel")
                        {
                            if (GradePayVar == 8900)
                            {
                                DARateVar = 160;
                            }
                            else if (GradePayVar == 6600)
                            {
                                DARateVar = 140;
                            }
                            else if (GradePayVar == 4400)
                            {
                                DARateVar = 140;
                            }
                            else if (GradePayVar == 4200)
                            {
                                DARateVar = 130;
                            }
                        }
            }


            if((rdoGroup.SelectedValue == "Office") || (rdoGroup.SelectedValue == "Holiday"))
            {
                DARateVar = 0;
                
            }


                    lblDARate.Text = DARateVar.ToString();
                    DAVar = DARateVar * DAPercentvar;
                    lblDA.Text = DAVar.ToString();

            if ((rdoGroup.SelectedValue == "Office") || (rdoGroup.SelectedValue == "Holiday"))
            {

                lblTotal.Text = "0";
            }
            else
            {
                total = DAVar + double.Parse(txtFare.Text);
                lblTotal.Text = total.ToString();
            }

                    
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                
                Session["ta_type"] = rdoGroup.SelectedItem.Value;
                Session["StartDate"] = txtStartDate.Text;
                Session["EndDate"] = txtEndDate.Text;
                Session["StartTime"] = txtStartTime.Text;
                Session["EndTime"] = txtEndTime.Text;
                Session["Origin"] = ddlOrigin.SelectedValue;
                Session["Destination"] = ddlDestination.SelectedValue;
                Session["Stay"] = ddlStay.SelectedValue;
                Session["Vehicle"] = ddlVehicle.SelectedValue;
                Session["Distance"] = txtDistance.Text;
                Session["Fare"] = txtFare.Text;
                Session["Remarks"] = txtRemarks.Text;
                Session["Hours"] = lblHours.Text;
                Session["DARate"] = lblDARate.Text;
                Session["DA"] = lblDA.Text;
                Session["DAPercent"] = lblDAPercent.Text;
                Session["Total"] = lblTotal.Text;

                if (rdoGroup.SelectedValue == "Office")
                {
                    Session["Destination"] = "---";
                    Session["Stay"] = "---";
                    Session["Vehicle"] = "---";
                    Session["Distance"] = 0;
                    Session["Fare"] = 0;

                }
                else if (rdoGroup.SelectedValue == "Holiday")
                {
                    Session["EndDate"] = "---";
                    Session["StartTime"] = "---";
                    Session["EndTime"] = "---";
                    Session["Origin"] = "---";
                    Session["Destination"] = "---";
                    Session["Stay"] = "---";
                    Session["Vehicle"] = "---";
                    Session["Distance"] = 0;
                    Session["Fare"] = 0;
                }

                Response.Redirect("~/CalculatedPage.aspx");
            }
        }
    }
}