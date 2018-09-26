<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Get_Your_TA.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/master.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class="col-sm-12">
        <div class="col-sm-2">
            <asp:Label ID="lblNameStatic" runat="server" Text="Name:" Font-Bold="True" ></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="lblName" runat="server" Text="" Font-Bold="True"  ForeColor="#0066CC"></asp:Label>            
        </div>
        <div class="col-sm-2">
            <asp:Label ID="lblDesignationStatic" runat="server" Text="Designation:"  Font-Bold="True"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="lblDesignation" runat="server" Text="" Font-Bold="True"  ForeColor="#0066CC"></asp:Label>
            
        </div>
        <div class="col-sm-2">
            <asp:Label ID="lblGradePayStatic" runat="server" Text="Grade Pay:"  Font-Bold="True"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="lblGradePay" runat="server" Text="" Font-Bold="True"  ForeColor="#0066CC"></asp:Label>
        </div>
    </div>

     <div class="col-sm-12">
        <div class="col-sm-2">
            <asp:Label ID="lblHeadQuarterStatic" runat="server" Text="Head Quarter:" Font-Bold="True" ></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="lblHeadQuarter" runat="server" Text="" Font-Bold="True"  ForeColor="#0066CC"></asp:Label>            
        </div>
        <div class="col-sm-2">
            <asp:Label ID="lblOfficeStatic" runat="server" Text="Office:"  Font-Bold="True"></asp:Label>
        </div>
        <div class="col-sm-2">
            <asp:Label ID="lblOffice" runat="server" Text="" Font-Bold="True"  ForeColor="#0066CC"></asp:Label>
            
        </div>
        
    </div>

    <div class="col-sm-12">
        <asp:GridView ID="grdData" runat="server" CssClass="table table-bordered table-condensed col-sm-12 table-responsive table-striped" AutoGenerateColumns="False" DataKeyNames="detail_id" DataSourceID="SqlDataSource2"
            
            OnRowDeleted="grdData_RowDeleted"
            OnRowUpdated="grdData_RowUpdated" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="Black">
            <Columns>
                <asp:BoundField DataField="ta_type" HeaderText="ta_type" SortExpression="ta_type"></asp:BoundField>
                <asp:TemplateField HeaderText="start_date" SortExpression="start_date">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("start_date", "{0:d}") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("start_date", "{0:d}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="end_date" SortExpression="end_date">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("end_date", "{0:d}") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("end_date", "{0:d}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="start_time" HeaderText="start_time" SortExpression="start_time"></asp:BoundField>
                <asp:BoundField DataField="end_time" HeaderText="end_time" SortExpression="end_time"></asp:BoundField>
                <asp:BoundField DataField="origin" HeaderText="origin" SortExpression="origin"></asp:BoundField>
                <asp:BoundField DataField="destination" HeaderText="destination" SortExpression="destination"></asp:BoundField>
                <asp:BoundField DataField="stay" HeaderText="stay" SortExpression="stay"></asp:BoundField>
                <asp:BoundField DataField="vehicle" HeaderText="vehicle" SortExpression="vehicle"></asp:BoundField>
                <asp:BoundField DataField="distance" HeaderText="distance" SortExpression="distance"></asp:BoundField>
                <asp:BoundField DataField="fare" HeaderText="fare" SortExpression="fare"></asp:BoundField>
                <asp:BoundField DataField="hours" HeaderText="hours" SortExpression="hours"></asp:BoundField>
                <asp:BoundField DataField="DA_rate" HeaderText="DA_rate" SortExpression="DA_rate"></asp:BoundField>
                <%--<asp:BoundField DataField="DA" HeaderText="DA" SortExpression="DA"></asp:BoundField>--%>
                <asp:BoundField DataField="DA_percent" HeaderText="DA%" SortExpression="DA_percent"></asp:BoundField>
                <asp:BoundField DataField="total" HeaderText="total" SortExpression="total"></asp:BoundField>
                <%--<asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks"></asp:BoundField>--%>
                
                <asp:CommandField ShowSelectButton="True"></asp:CommandField>

                <asp:CommandField CausesValidation="False" ShowDeleteButton="True"></asp:CommandField>
            </Columns>

<HeaderStyle BackColor="Black" ForeColor="White"></HeaderStyle>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Detail] WHERE [detail_id] = @original_detail_id" InsertCommand="INSERT INTO [Detail] ([user_id], [ta_type], [start_date], [end_date], [start_time], [end_time], [origin], [destination], [stay], [vehicle], [distance], [fare], [remarks], [hours], [DA_rate], [DA], [DA_percent], [total]) VALUES (@user_id, @ta_type, @start_date, @end_date, @start_time, @end_time, @origin, @destination, @stay, @vehicle, @distance, @fare, @remarks, @hours, @DA_rate, @DA, @DA_percent, @total)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Detail] WHERE ([user_id] = @user_id) ORDER BY [start_date], [end_date], [hours]" UpdateCommand="UPDATE [Detail] SET [user_id] = @user_id, [ta_type] = @ta_type, [start_date] = @start_date, [end_date] = @end_date, [start_time] = @start_time, [end_time] = @end_time, [origin] = @origin, [destination] = @destination, [stay] = @stay, [vehicle] = @vehicle, [distance] = @distance, [fare] = @fare, [remarks] = @remarks, [hours] = @hours, [DA_rate] = @DA_rate, [DA] = @DA, [DA_percent] = @DA_percent, [total] = @total WHERE [detail_id] = @original_detail_id">
            <DeleteParameters>
                <asp:Parameter Name="original_detail_id" Type="Int32"></asp:Parameter>
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
                <asp:SessionParameter SessionField="UserID" Name="user_id" Type="Int32"></asp:SessionParameter>
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
                <asp:Parameter Name="original_detail_id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>


    <div class="col-sm-12">
        <asp:Label ID="lblError" runat="server" CssClass="text-danger" Text=""></asp:Label>
    </div>

    <%--<div class="col-sm-offset-5 col-sm-7">
        <asp:Label ID="lblDetailID" runat="server" Text="Detail ID:"></asp:Label>
    </div>--%>
    <div class="col-sm-12">
        <div class="col-sm-offset-4 col-sm-2">
            <asp:Button ID="btnEdit" CssClass="btn-primary" runat="server" Text="Edit" OnClick="btnEdit_Click" />
        </div>
        <div class="col-sm-offset-2 col-sm-4">
            <asp:Button ID="btnExport" Text="Export" CssClass="btn-primary" OnClick="ExportExcel" runat="server" />
        </div>
    </div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [User] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter SessionField="UserName" Name="username" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Detail] WHERE ([detail_id] = @detail_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="grdData" PropertyName="SelectedValue" Name="detail_id" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
