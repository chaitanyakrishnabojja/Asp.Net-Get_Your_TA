<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Get_Your_TA.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/master.css" rel="stylesheet" />
    <link href="Content/insert.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class="col-sm-12">
        <div class="col-sm-10">
            <asp:RadioButtonList ID="rdoGroup" CssClass="spaced" Font-Size="XX-Large" RepeatDirection="Horizontal" RepeatLayout="Flow" runat="server" OnSelectedIndexChanged="rdoGroup_SelectedIndexChanged" Style="width: 100px" Font-Overline="True" BorderStyle="NotSet" ForeColor="#0099FF" AutoPostBack="True">
                <asp:ListItem Selected="True">Tour</asp:ListItem>
                <asp:ListItem>Office</asp:ListItem>
                <asp:ListItem>Holiday</asp:ListItem>
            </asp:RadioButtonList>          
        </div>
        
        <%--<div class="col-sm-3">
            <asp:RadioButton ID="rdoTour" runat="server" Text="Tour" GroupName="radiogroup" OnCheckedChanged="rdoTour_CheckedChanged" />            
        </div>
        <div class="col-sm-3">
            <asp:RadioButton ID="rdoOffice" runat="server" Text="Office" GroupName="radiogroup" OnCheckedChanged="rdoOffice_CheckedChanged" />
        </div>
        <div class="col-sm-3">
            <asp:RadioButton ID="rdoHoliday" runat="server" Text="Holiday" GroupName="radiogroup" OnCheckedChanged="rdoHoliday_CheckedChanged" />
        </div>--%>
         <div class="col-sm-1">
            <asp:Label ID="lblGradePayStatic" runat="server" Text="GradePay:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:Label ID="lblGradePay" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-2">
            <asp:Label ID="lblStartDate" runat="server" Text="Start Date:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvStartDate" runat="server" ControlToValidate="txtStartDate" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Start Date is a required field" >
            </asp:RequiredFieldValidator>
            
        </div>
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblEndDate" runat="server" Text="End Date:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEndDate" runat="server" ControlToValidate="txtEndDate" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="End Date is a required field" >
            </asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvEndDate" runat="server" Display="Dynamic"
                            ControlToValidate="txtEndDate" text="*" CssClass="text-danger"
                            ErrorMessage="End Date must be greater than Start Date" ControlToCompare="txtStartDate" Operator="GreaterThanEqual" Type="Date"></asp:CompareValidator>
        </div>
        <div class="col-sm-offset-3 col-sm-1">
            <asp:Label ID="lblHoursStatic" runat="server" Text="Hours:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:Label ID="lblHours" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="col-sm-12">
        <br />
    </div>
    <div class="col-sm-12">
        <div class="col-sm-2">
            <asp:Label ID="lblStartTime" runat="server" Text="Start Time:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:TextBox ID="txtStartTime" runat="server" TextMode="Time"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvStartTime" runat="server" ControlToValidate="txtStartTime" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Start Time is a required field" >
            </asp:RequiredFieldValidator>
        </div>
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblEndTime" runat="server" Text="End Time:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:TextBox ID="txtEndTime" runat="server" TextMode="Time"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEndTime" runat="server" ControlToValidate="txtEndTime" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="End Time is a required field" >
            </asp:RequiredFieldValidator>
        </div>
        <div class="col-sm-offset-3 col-sm-1">
            <asp:Label ID="lblDARateStatic" runat="server" Text="DA Rate:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:Label ID="lblDARate" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <br />
    </div>

    <div class="col-sm-12">
        <div class="col-sm-2">
            <asp:Label ID="lblOrigin" runat="server" Text="Origin:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:DropDownList ID="ddlOrigin" runat="server">
                <asp:ListItem>Hyderabad</asp:ListItem>
                <asp:ListItem>Banglore</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                <asp:ListItem>Kolcata</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
                <asp:ListItem>Nagpur</asp:ListItem>
                <asp:ListItem>Ahmedabad</asp:ListItem>
                <asp:ListItem>Surat</asp:ListItem>
                <asp:ListItem>Jaipur</asp:ListItem>
                <asp:ListItem>Lucknow</asp:ListItem>
                <asp:ListItem>Varanasi</asp:ListItem>
                <asp:ListItem>Nasik</asp:ListItem>
                <asp:ListItem>Vijayawada</asp:ListItem>
                <asp:ListItem>Visakhapatnam</asp:ListItem>
                <asp:ListItem>Patna</asp:ListItem>
            </asp:DropDownList>            
        </div>
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblDestination" runat="server" Text="Destination:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:DropDownList ID="ddlDestination" runat="server">
                 <asp:ListItem>Hyderabad</asp:ListItem>
                <asp:ListItem>Banglore</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                <asp:ListItem>Kolkata</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
                <asp:ListItem>Nagpur</asp:ListItem>
                <asp:ListItem>Ahmedabad</asp:ListItem>
                <asp:ListItem>Surat</asp:ListItem>
                <asp:ListItem>Jaipur</asp:ListItem>
                <asp:ListItem>Lucknow</asp:ListItem>
                <asp:ListItem>Varanasi</asp:ListItem>
                <asp:ListItem>Nasik</asp:ListItem>
                <asp:ListItem>Vijayawada</asp:ListItem>
                <asp:ListItem>Visakhapatnam</asp:ListItem>
                <asp:ListItem>Patna</asp:ListItem>
            </asp:DropDownList>  
            <asp:CompareValidator ID="cvDestination" runat="server" Display="Dynamic"
                            ControlToValidate="ddlDestination" text="*" CssClass="text-danger"
                            ErrorMessage="Destination must be different from Origin" ControlToCompare="ddlOrigin" 
                Operator="NotEqual" Type="String"></asp:CompareValidator>
        </div>

        <div class="col-sm-offset-1 col-sm-1">
            <asp:Button ID="btnResults" CssClass="btn-primary" runat="server" Text="Results" OnClick="btnResults_Click" />
        </div>

        <div class=" col-sm-offset-1 col-sm-1">
            <asp:Label ID="lblDAStatic" runat="server" Text="DA:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:Label ID="lblDA" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <br />
    </div>

    <div class="col-sm-12">
        <div class="col-sm-2">
            <asp:Label ID="lblStay" runat="server" Text="Stay:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:DropDownList ID="ddlStay" runat="server">
                <asp:ListItem>Hotel</asp:ListItem>
                <asp:ListItem>Without Hotel</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblVehicle" runat="server" Text="Vehicle:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:DropDownList ID="ddlVehicle" runat="server">
                <asp:ListItem>Bus</asp:ListItem>
                <asp:ListItem>Bike</asp:ListItem>
                <asp:ListItem>Car</asp:ListItem>
                <asp:ListItem>Train</asp:ListItem>
                <asp:ListItem>Flight</asp:ListItem>
                <asp:ListItem>Office Jeep</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-sm-offset-3 col-sm-1">
            <asp:Label ID="lblDAPercentStatic" runat="server" Text="DA Percentage:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:Label ID="lblDAPercent" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <br />
    </div>

    <div class="col-sm-12">
        <div class="col-sm-2">
            <asp:Label ID="lblDistance" runat="server" Text="Distance:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:TextBox ID="txtDistance" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDistance" runat="server" ControlToValidate="txtDistance" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Distance is a required field" >
            </asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvDistance" runat="server" Display="Dynamic"
                            ControlToValidate="txtDistance" text="*" CssClass="text-danger"
                            ErrorMessage="Distance must be an integer" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
        </div>
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblFare" runat="server" Text="Fare:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:TextBox ID="txtFare" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFare" runat="server" ControlToValidate="txtFare"
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Fare is a required field" >
            </asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvFare" runat="server" Display="Dynamic"
                            ControlToValidate="txtFare" text="*" CssClass="text-danger"
                            ErrorMessage="Fare must be an integer" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
        </div>
        <div class="col-sm-offset-3 col-sm-1">
            <asp:Label ID="lblTotalStatic" runat="server" Text="Total:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <br />
    </div>

    <div class="col-sm-12">
        <asp:Label ID="lblRemarks" runat="server" Text="Remarks:"></asp:Label>       
    </div>

    <div class="col-sm-12">
         <asp:TextBox ID="txtRemarks" CssClass="col-sm-8" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvRemarks" runat="server" ControlToValidate="txtRemarks"
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Remarks is a required field" >
            </asp:RequiredFieldValidator>
    </div>

    <div class="col-sm-12">
        <br />
    </div>

    <div class="col-sm-offset-5 col-sm-2 col-sm-offset-5">
        <asp:Button ID="btnNext" CssClass="btn-primary" runat="server" Text="Next" OnClick="btnNext_Click" />
    </div>

    <div class="col-sm-12">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [User] ORDER BY [first_name]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Detail] WHERE [detail_id] = @detail_id" InsertCommand="INSERT INTO [Detail] ([user_id], [ta_type], [start_date], [end_date], [start_time], [end_time], [origin], [destination], [stay], [vehicle], [distance], [fare], [remarks], [hours], [DA_rate], [DA], [DA_percent], [total]) VALUES (@user_id, @ta_type, @start_date, @end_date, @start_time, @end_time, @origin, @destination, @stay, @vehicle, @distance, @fare, @remarks, @hours, @DA_rate, @DA, @DA_percent, @total)" SelectCommand="SELECT * FROM [Detail] WHERE ([detail_id] = @detail_id)" UpdateCommand="UPDATE [Detail] SET [user_id] = @user_id, [ta_type] = @ta_type, [start_date] = @start_date, [end_date] = @end_date, [start_time] = @start_time, [end_time] = @end_time, [origin] = @origin, [destination] = @destination, [stay] = @stay, [vehicle] = @vehicle, [distance] = @distance, [fare] = @fare, [remarks] = @remarks, [hours] = @hours, [DA_rate] = @DA_rate, [DA] = @DA, [DA_percent] = @DA_percent, [total] = @total WHERE [detail_id] = @detail_id">
        <DeleteParameters>
            <asp:Parameter Name="detail_id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ta_type" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="start_date"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="end_date"></asp:Parameter>
            <asp:Parameter DbType="Time" Name="start_time"></asp:Parameter>
            <asp:Parameter DbType="Time" Name="end_time"></asp:Parameter>
            <asp:Parameter Name="origin" Type="String"></asp:Parameter>
            <asp:Parameter Name="destination" Type="String"></asp:Parameter>
            <asp:Parameter Name="stay" Type="String"></asp:Parameter>
            <asp:Parameter Name="vehicle" Type="String"></asp:Parameter>
            <asp:Parameter Name="distance" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="fare" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="remarks" Type="String"></asp:Parameter>
            <asp:Parameter Name="hours" Type="String"></asp:Parameter>
            <asp:Parameter Name="DA_rate" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="DA" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="DA_percent" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="total" Type="Decimal"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="detail_id" Name="detail_id" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ta_type" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="start_date"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="end_date"></asp:Parameter>
            <asp:Parameter DbType="Time" Name="start_time"></asp:Parameter>
            <asp:Parameter DbType="Time" Name="end_time"></asp:Parameter>
            <asp:Parameter Name="origin" Type="String"></asp:Parameter>
            <asp:Parameter Name="destination" Type="String"></asp:Parameter>
            <asp:Parameter Name="stay" Type="String"></asp:Parameter>
            <asp:Parameter Name="vehicle" Type="String"></asp:Parameter>
            <asp:Parameter Name="distance" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="fare" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="remarks" Type="String"></asp:Parameter>
            <asp:Parameter Name="hours" Type="String"></asp:Parameter>
            <asp:Parameter Name="DA_rate" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="DA" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="DA_percent" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="total" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="detail_id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
