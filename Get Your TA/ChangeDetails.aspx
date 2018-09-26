<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.Master" AutoEventWireup="true" CodeBehind="ChangeDetails.aspx.cs" Inherits="Get_Your_TA.ChangeDetails" %>
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
        <asp:DetailsView ID="dvProduct" runat="server" Height="50px" Width="500px"  AutoGenerateRows="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1"
            CssClass="table table-bordered table-condensed" 
                    OnItemDeleted="dvProduct_ItemDeleted"                      
                    OnItemInserted="dvProduct_ItemInserted" 
                    OnItemUpdated="dvProduct_ItemUpdated" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="Black" />
            <Fields>
                <asp:TemplateField HeaderText="salutation" SortExpression="salutation">
                    <%--<EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("salutation") %>' ID="TextBox1"></asp:TextBox>
                    </EditItemTemplate>--%>
                    <InsertItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("salutation") %>' ID="TextBox1"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Bind("salutation") %>' ID="Label1"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="first_name" SortExpression="first_name">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("first_name") %>' ID="TextBox2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" CssClass="text-danger"
                            text="*" ErrorMessage="First Name is a required field"
                            ControlToValidate="TextBox2" Display="Dynamic" ValidationGroup="edit"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("first_name") %>' ID="TextBox2"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Bind("first_name") %>' ID="Label2"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="last_name" SortExpression="last_name">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("last_name") %>' ID="TextBox3"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="TextBox3" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Last Name is a required field"        
                            ValidationGroup="edit"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("last_name") %>' ID="TextBox3"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Bind("last_name") %>' ID="Label3"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="phone" SortExpression="phone">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("phone") %>' ID="TextBox4"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="TextBox4" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Phone is a required field"        
                            ValidationGroup="edit"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPhone" runat="server" CssClass="text-danger"
                            ErrorMessage="Phone must be 10 digit number" ControlToValidate="TextBox4" 
                            ValidationExpression="^[0-9]\d{9}" Text="*" ValidationGroup="edit"></asp:RegularExpressionValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("phone") %>' ID="TextBox4"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Bind("phone") %>' ID="Label4"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="designation" SortExpression="designation">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("designation") %>' ID="TextBox5"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDestination" runat="server" 
                            ControlToValidate="TextBox5" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Designation is a required field"        
                            ValidationGroup="edit"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("designation") %>' ID="TextBox5"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Bind("designation") %>' ID="Label5"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="gradepay" SortExpression="gradepay">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("gradepay") %>' ID="TextBox6"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvGradePay" runat="server" ControlToValidate="TextBox6" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Grade Pay is a required field"        
                            ValidationGroup="edit"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revGradePay" runat="server" CssClass="text-danger"
                            ErrorMessage="Grade Pay must be 8900/6600/4400/4200" ControlToValidate="TextBox6" 
                            ValidationExpression="(8900|6600|4400|4200)" Text="*" ValidationGroup="edit"></asp:RegularExpressionValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("gradepay") %>' ID="TextBox6"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Bind("gradepay", "{0:C}") %>' ID="Label6"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="office" SortExpression="office">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("office") %>' ID="TextBox7"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvOffice" runat="server" ControlToValidate="TextBox7" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Office is a required field"        
                            ValidationGroup="edit"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("office") %>' ID="TextBox7"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Bind("office") %>' ID="Label7"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="headquarter" SortExpression="headquarter">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("headquarter") %>' ID="TextBox8"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvHeadQuarter" runat="server" 
                            ControlToValidate="TextBox8" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Head Quarter is a required field"        
                            ValidationGroup="edit"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("headquarter") %>' ID="TextBox8"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Bind("headquarter") %>' ID="Label8"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="username" SortExpression="username">
                    <%--<EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("username") %>' ID="TextBox9"></asp:TextBox>
                    </EditItemTemplate>--%>
                    <InsertItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("username") %>' ID="TextBox9"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Bind("username") %>' ID="Label9"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="password" SortExpression="password">
                    <EditItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("password") %>' ID="TextBox10"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                            ControlToValidate="TextBox10" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Password is a required field"        
                            ValidationGroup="edit"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox runat="server" Text='<%# Bind("password") %>' ID="TextBox10"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Bind("password") %>' ID="Label10"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:CommandField ShowEditButton="True" ValidationGroup="edit"></asp:CommandField>
            </Fields>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        </asp:DetailsView>

        <div class="col-sm-12">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="edit" CssClass="text-danger"/>
        </div>


        <asp:GridView ID="grdUser" runat="server" CssClass="table table-bordered table-condensed"  AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1"
            OnPreRender="grdUser_PreRender"
            OnRowDeleted="grdUser_RowDeleted"
            OnRowUpdated="grdUser_RowUpdated">
            <Columns>
                
                <asp:BoundField DataField="salutation" HeaderText="salutation" SortExpression="salutation" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="designation" HeaderText="designation" SortExpression="designation" />
                <asp:BoundField DataField="gradepay" HeaderText="gradepay" SortExpression="gradepay" />
                <asp:BoundField DataField="office" HeaderText="office" SortExpression="office" />
                <asp:BoundField DataField="headquarter" HeaderText="headquarter" SortExpression="headquarter" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />

                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />

            </Columns>
        </asp:GridView>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [User] WHERE [user_id] = @original_user_id" InsertCommand="INSERT INTO [User] ([salutation], [first_name], [last_name], [phone], [designation], [gradepay], [office], [headquarter], [username], [password]) VALUES (@salutation, @first_name, @last_name, @phone, @designation, @gradepay, @office, @headquarter, @username, @password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [User] WHERE ([username] = @username)" UpdateCommand="UPDATE [User] SET [salutation] = @salutation, [first_name] = @first_name, [last_name] = @last_name, [phone] = @phone, [designation] = @designation, [gradepay] = @gradepay, [office] = @office, [headquarter] = @headquarter, [username] = @username, [password] = @password WHERE [user_id] = @original_user_id">
        <DeleteParameters>
            <asp:Parameter Name="original_user_id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="salutation" Type="String"></asp:Parameter>
            <asp:Parameter Name="first_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="last_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="phone" Type="Int64"></asp:Parameter>
            <asp:Parameter Name="designation" Type="String"></asp:Parameter>
            <asp:Parameter Name="gradepay" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="office" Type="String"></asp:Parameter>
            <asp:Parameter Name="headquarter" Type="String"></asp:Parameter>
            <asp:Parameter Name="username" Type="String"></asp:Parameter>
            <asp:Parameter Name="password" Type="String"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter SessionField="UserName" Name="username" Type="String"></asp:SessionParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="salutation" Type="String"></asp:Parameter>
            <asp:Parameter Name="first_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="last_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="phone" Type="Int64"></asp:Parameter>
            <asp:Parameter Name="designation" Type="String"></asp:Parameter>
            <asp:Parameter Name="gradepay" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="office" Type="String"></asp:Parameter>
            <asp:Parameter Name="headquarter" Type="String"></asp:Parameter>
            <asp:Parameter Name="username" Type="String"></asp:Parameter>
            <asp:Parameter Name="password" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_user_id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <div class="col-sm-12">
        <asp:Label ID="lblError" runat="server" CssClass="text-danger" Text=""></asp:Label>
    </div>
</asp:Content>
