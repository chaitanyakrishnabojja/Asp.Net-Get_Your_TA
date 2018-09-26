<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.Master" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="Get_Your_TA.Insert" %>
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
            <asp:TextBox ID="txtStartDate" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvStartDate" runat="server" ControlToValidate="txtStartDate" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Start Date is a required field" >
            </asp:RequiredFieldValidator>
            
        </div>
        <div class="col-sm-offset-1 col-sm-2">
            <asp:Label ID="lblEndDate" runat="server" Text="End Date:"></asp:Label>
        </div>
        <div class="col-sm-1">
            <asp:TextBox ID="txtEndDate" runat="server" TextMode="Date"></asp:TextBox>
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
</asp:Content>
