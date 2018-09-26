<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.Master" AutoEventWireup="true" CodeBehind="CalculatedPage.aspx.cs" Inherits="Get_Your_TA.CalculatedPage" %>
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
        <asp:Label ID="lblError" CssClass="text-info" runat="server" Text=""></asp:Label>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [User] ORDER BY [first_name]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Detail]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Detail] WHERE [detail_id] = @original_detail_id AND (([user_id] = @original_user_id) OR ([user_id] IS NULL AND @original_user_id IS NULL)) AND (([ta_type] = @original_ta_type) OR ([ta_type] IS NULL AND @original_ta_type IS NULL)) AND (([start_date] = @original_start_date) OR ([start_date] IS NULL AND @original_start_date IS NULL)) AND (([end_date] = @original_end_date) OR ([end_date] IS NULL AND @original_end_date IS NULL)) AND (([start_time] = @original_start_time) OR ([start_time] IS NULL AND @original_start_time IS NULL)) AND (([end_time] = @original_end_time) OR ([end_time] IS NULL AND @original_end_time IS NULL)) AND (([origin] = @original_origin) OR ([origin] IS NULL AND @original_origin IS NULL)) AND (([destination] = @original_destination) OR ([destination] IS NULL AND @original_destination IS NULL)) AND (([stay] = @original_stay) OR ([stay] IS NULL AND @original_stay IS NULL)) AND (([vehicle] = @original_vehicle) OR ([vehicle] IS NULL AND @original_vehicle IS NULL)) AND (([distance] = @original_distance) OR ([distance] IS NULL AND @original_distance IS NULL)) AND (([fare] = @original_fare) OR ([fare] IS NULL AND @original_fare IS NULL)) AND (([remarks] = @original_remarks) OR ([remarks] IS NULL AND @original_remarks IS NULL)) AND (([hours] = @original_hours) OR ([hours] IS NULL AND @original_hours IS NULL)) AND (([DA_rate] = @original_DA_rate) OR ([DA_rate] IS NULL AND @original_DA_rate IS NULL)) AND (([DA] = @original_DA) OR ([DA] IS NULL AND @original_DA IS NULL)) AND (([DA_percent] = @original_DA_percent) OR ([DA_percent] IS NULL AND @original_DA_percent IS NULL)) AND (([total] = @original_total) OR ([total] IS NULL AND @original_total IS NULL))" InsertCommand="INSERT INTO [Detail] ([user_id], [ta_type], [start_date], [end_date], [start_time], [end_time], [origin], [destination], [stay], [vehicle], [distance], [fare], [remarks], [hours], [DA_rate], [DA], [DA_percent], [total]) VALUES (@user_id, @ta_type, @start_date, @end_date, @start_time, @end_time, @origin, @destination, @stay, @vehicle, @distance, @fare, @remarks, @hours, @DA_rate, @DA, @DA_percent, @total)" UpdateCommand="UPDATE [Detail] SET [user_id] = @user_id, [ta_type] = @ta_type, [start_date] = @start_date, [end_date] = @end_date, [start_time] = @start_time, [end_time] = @end_time, [origin] = @origin, [destination] = @destination, [stay] = @stay, [vehicle] = @vehicle, [distance] = @distance, [fare] = @fare, [remarks] = @remarks, [hours] = @hours, [DA_rate] = @DA_rate, [DA] = @DA, [DA_percent] = @DA_percent, [total] = @total WHERE [detail_id] = @original_detail_id AND (([user_id] = @original_user_id) OR ([user_id] IS NULL AND @original_user_id IS NULL)) AND (([ta_type] = @original_ta_type) OR ([ta_type] IS NULL AND @original_ta_type IS NULL)) AND (([start_date] = @original_start_date) OR ([start_date] IS NULL AND @original_start_date IS NULL)) AND (([end_date] = @original_end_date) OR ([end_date] IS NULL AND @original_end_date IS NULL)) AND (([start_time] = @original_start_time) OR ([start_time] IS NULL AND @original_start_time IS NULL)) AND (([end_time] = @original_end_time) OR ([end_time] IS NULL AND @original_end_time IS NULL)) AND (([origin] = @original_origin) OR ([origin] IS NULL AND @original_origin IS NULL)) AND (([destination] = @original_destination) OR ([destination] IS NULL AND @original_destination IS NULL)) AND (([stay] = @original_stay) OR ([stay] IS NULL AND @original_stay IS NULL)) AND (([vehicle] = @original_vehicle) OR ([vehicle] IS NULL AND @original_vehicle IS NULL)) AND (([distance] = @original_distance) OR ([distance] IS NULL AND @original_distance IS NULL)) AND (([fare] = @original_fare) OR ([fare] IS NULL AND @original_fare IS NULL)) AND (([remarks] = @original_remarks) OR ([remarks] IS NULL AND @original_remarks IS NULL)) AND (([hours] = @original_hours) OR ([hours] IS NULL AND @original_hours IS NULL)) AND (([DA_rate] = @original_DA_rate) OR ([DA_rate] IS NULL AND @original_DA_rate IS NULL)) AND (([DA] = @original_DA) OR ([DA] IS NULL AND @original_DA IS NULL)) AND (([DA_percent] = @original_DA_percent) OR ([DA_percent] IS NULL AND @original_DA_percent IS NULL)) AND (([total] = @original_total) OR ([total] IS NULL AND @original_total IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_detail_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_ta_type" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_start_date"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_end_date"></asp:Parameter>
            <asp:Parameter DbType="Time" Name="original_start_time"></asp:Parameter>
            <asp:Parameter Name="original_end_time" DbType="Time"></asp:Parameter>
            <asp:Parameter Name="original_origin" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_destination" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_stay" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_vehicle" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_distance" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_fare" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_remarks" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_hours" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_DA_rate" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_DA" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_DA_percent" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_total" Type="Decimal"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ta_type" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="start_date"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="end_date"></asp:Parameter>
            <asp:Parameter DbType="Time" Name="start_time"></asp:Parameter>
            <asp:Parameter Name="end_time" DbType="Time"></asp:Parameter>
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
        <UpdateParameters>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ta_type" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="start_date"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="end_date"></asp:Parameter>
            <asp:Parameter DbType="Time" Name="start_time"></asp:Parameter>
            <asp:Parameter Name="end_time" DbType="Time"></asp:Parameter>
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
            <asp:Parameter Name="original_detail_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_ta_type" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_start_date"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_end_date"></asp:Parameter>
            <asp:Parameter Name="original_start_time" DbType="Time"></asp:Parameter>
            <asp:Parameter Name="original_end_time" DbType="Time"></asp:Parameter>
            <asp:Parameter Name="original_origin" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_destination" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_stay" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_vehicle" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_distance" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_fare" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_remarks" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_hours" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_DA_rate" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_DA" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_DA_percent" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_total" Type="Decimal"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
