using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.IO;

using ClosedXML.Excel;
using System.Configuration;
using System.Data.SqlClient;

namespace Get_Your_TA
{
    public partial class Edit : System.Web.UI.Page
    {
        private DataView detailData;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataView userTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            DataRowView userRow = userTable[0];
            lblName.Text = userRow["first_name"].ToString()+ " " + userRow["last_name"].ToString();
            lblDesignation.Text = userRow["designation"].ToString();
            lblGradePay.Text = "$" + userRow["gradepay"].ToString();
            lblHeadQuarter.Text = userRow["headquarter"].ToString();
            lblOffice.Text = userRow["office"].ToString();
        }

        //protected void grdData_PreRender(object sender, EventArgs e)
        //{
        //    grdData.HeaderRow.TableSection = TableRowSection.TableHeader;
        //}

        protected void grdData_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                lblError.Text = DatabaseErrorMessage(e.Exception.Message);
                e.ExceptionHandled = true;
                e.KeepInEditMode = true;
            }
            else if (e.AffectedRows == 0)
            {
                lblError.Text = ConcurrencyErrorMessage();
            }
        }

        protected void grdData_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (e.Exception != null)
            {
                lblError.Text = DatabaseErrorMessage(e.Exception.Message);
                e.ExceptionHandled = true;
            }
            else if (e.AffectedRows == 0)
            {
                lblError.Text = ConcurrencyErrorMessage();
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

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            detailData = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
            if(detailData != null)
            {
                DataRowView detailRow = detailData[0];
                Session["detail_id"] = detailRow["detail_id"];
                Response.Redirect("~/Update.aspx");
            }
            else
            {
                lblError.Text = "Please select a record";
            }
            
        }

        protected void ExportExcel(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT ta_type, start_date, end_date, start_time, end_time, origin, destination, stay, vehicle, distance, fare, hours, DA_rate, DA, DA_percent, total, remarks FROM Detail WHERE user_id = '" + Session["UserID"] + "'"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            using (XLWorkbook wb = new XLWorkbook())
                            {
                                wb.Worksheets.Add(dt, "Detail");

                                Response.Clear();
                                Response.Buffer = true;
                                Response.Charset = "";
                                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                                Response.AddHeader("content-disposition", "attachment;filename=SqlExport.xlsx");
                                using (MemoryStream MyMemoryStream = new MemoryStream())
                                {
                                    wb.SaveAs(MyMemoryStream);
                                    MyMemoryStream.WriteTo(Response.OutputStream);
                                    Response.Flush();
                                    Response.End();
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}