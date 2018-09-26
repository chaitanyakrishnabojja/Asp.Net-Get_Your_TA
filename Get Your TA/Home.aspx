<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Get_Your_TA.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/master.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <div class="col-sm-12">
        <div class="col-sm-3">          
            <asp:ImageButton ID="imgInsert" CssClass="img-rounded img-responsive" runat="server" ImageUrl="~/Images/insert.png" PostBackUrl="~/Insert.aspx" />
        </div>
        <div class="col-sm-3">            
            <asp:ImageButton ID="imgEdit" CssClass="img-rounded img-responsive" runat="server" ImageUrl="~/Images/edit.png" PostBackUrl="~/Edit.aspx" />
        </div>
        <div class="col-sm-3">
            <asp:ImageButton ID="imgChangeDetails" CssClass="img-rounded img-responsive" runat="server" ImageUrl="~/Images/changedetails.png" PostBackUrl="~/ChangeDetails.aspx" />
        </div>
        <div class="col-sm-3">
            <asp:ImageButton ID="imgHelp" CssClass="img-rounded img-responsive" runat="server" ImageUrl="~/Images/help.png" PostBackUrl="~/Help.aspx" />
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [User] ORDER BY [first_name]"></asp:SqlDataSource>
</asp:Content>
