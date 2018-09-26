<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.Master" AutoEventWireup="true" CodeBehind="CalculatedPage1.aspx.cs" Inherits="Get_Your_TA.CalculatedPage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/master.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblStartDateStatic" runat="server" Text="Start Date:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblStartDate" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblEndDateStatic" runat="server" Text="End Date:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblEndDate" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblStartTimeStatic" runat="server" Text="Start Time:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblStartTime" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblEndTimeStatic" runat="server" Text="End Time:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblEndTime" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblOriginStatic" runat="server" Text="Origin:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblOrigin" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblDestinationStatic" runat="server" Text="Destination:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblDestination" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblStayStatic" runat="server" Text="Stay:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblStay" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblVehicleStatic" runat="server" Text="Vehicle:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblVehicle" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblDistanceStatic" runat="server" Text="Distance:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblDistance" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblFareStatic" runat="server" Text="Fare:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblFare" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblRemarksStatic" runat="server" Text="Remarks:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblRemarks" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblGradePayStatic" runat="server" Text="Grade Pay:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblGradePay" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblUserIDStatic" runat="server" Text="User ID:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblUserID" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblHoursStatic" runat="server" Text="Hours:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblHours" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblDARateStatic" runat="server" Text="DA Rate:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblDARate" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblDAStatic" runat="server" Text="DA:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblDA" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblDAPercentStatic" runat="server" Text="DA Percent:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblDAPercent" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Label ID="lblTotalStatic" runat="server" Text="Total:"></asp:Label>
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="col-sm-12">
        <div class="col-sm-offset-2 col-sm-2">
            <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
        </div>
        <div class="col-sm-offset-1 col-sm-7">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </div>
    <div class="col-sm-offset-3 col-sm-7">
        <asp:Label ID="lblError" cssClass="text-info" runat="server" Text=""></asp:Label>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [User] ORDER BY [first_name]"></asp:SqlDataSource>
    
</asp:Content>
