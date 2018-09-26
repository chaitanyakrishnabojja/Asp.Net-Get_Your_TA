<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="Get_Your_TA.Landing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    
    
  
    
    

    <%-- Start Template --%>

     <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
       <title>Get Your TA</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500"/>
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <%--<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>--%>
        <link href="assets/font-awesome.min.css" rel="stylesheet" />
        <%--<link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css" />--%>
        <link href="assets/form-elements.css" rel="stylesheet" />
		<%--<link rel="stylesheet" href="assets/css/form-elements.css" />--%>
        <link href="assets/style.css" rel="stylesheet" />
        <%--<link rel="stylesheet" href="assets/css/style.css" />--%>

        <script src="Scripts/jquery-2.2.4.min.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>

      
        


    <%-- end template --%>
</head>
<body>
    <%--  --%>
    <form id="form1" runat="server" cssclass="text-danger">
    <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                	
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Get Your Travel Allowance</strong></h1>
                           
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-sm-5">
                        	
                        	<div class="form-box">
	                        	<div class="form-top">
	                        		<div class="form-top-left">
	                        			<h3>Login to our site</h3>
	                            		<p>Enter username and password to log on:</p>
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-key"></i>
	                        		</div>
	                            </div>
	                            <div class="form-bottom">
				                    <%--<form role="form" runat="server" method="post" class="login-form">--%>
				                    	<div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:Label ID="lblUserName" runat="server" Text="User Name:"></asp:Label>
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                                                    CssClass="text-danger" Display="None"
                                                    Text="*" ErrorMessage="User Name is a required field"
                                                    ValidationGroup="login"></asp:RequiredFieldValidator>
                                            </div>
				                        </div>
				                        <div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                                                    CssClass="text-danger" Display="None"
                                                    Text="*" ErrorMessage="Password is a required field"
                                                    ValidationGroup="login"></asp:RequiredFieldValidator>
                                            </div>
				                        </div>
                                        <asp:Button ID="btnLogin" CssClass="btn-primary" runat="server" Text="Login" OnClick="btnLogin_Click"
                                            ValidationGroup="login" />
                                        <asp:Label ID="lblInvalid" runat="server" CssClass="text-danger"></asp:Label>
                                        <asp:ValidationSummary ID="ValidationSummary2" ValidationGroup="login" runat="server"  CssClass="text-danger" />
				                   <%-- </form>--%>
			                    </div>
		                    </div>
		                
		                	<%--<div class="social-login">
	                        	<h3>...or login with:</h3>
	                        	<div class="social-login-buttons">
		                        	<a class="btn btn-link-1 btn-link-1-facebook" href="#">
		                        		<i class="fa fa-facebook"></i> Facebook
		                        	</a>
		                        	<a class="btn btn-link-1 btn-link-1-twitter" href="#">
		                        		<i class="fa fa-twitter"></i> Twitter
		                        	</a>
		                        	<a class="btn btn-link-1 btn-link-1-google-plus" href="#">
		                        		<i class="fa fa-google-plus"></i> Google Plus
		                        	</a>
	                        	</div>
	                        </div>--%>
	                        
                        </div>
                        
                        <div class="col-sm-1 middle-border"></div>
                        <div class="col-sm-1"></div>
                        	
                        <div class="col-sm-5">
                        	
                        	<div class="form-box">
                        		<div class="form-top">
	                        		<div class="form-top-left">
	                        			<h3>Sign up now</h3>
	                            		<p>Fill in the form below to get instant access:</p>
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-pencil"></i>
	                        		</div>
	                            </div>
	                            <div class="form-bottom">
				                    <%--<form role="form" method="post" class="registration-form">--%>
				                    	<div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:Label ID="lblSalutation" runat="server" Text="Salutation:"></asp:Label>
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:DropDownList ID="ddlSalutation" runat="server" AutoPostBack="True">
                                                    <asp:ListItem Value="Mr">Mr.</asp:ListItem>
                                                    <asp:ListItem Value="Mrs">Mrs.</asp:ListItem>
                                                    <asp:ListItem Value="Ms">Ms.</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
				                        </div>
				                        <div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
                                            </div>   
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                                            </div>  
                                            <div class="col-sm-12">
                                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" CssClass="text-danger"
                                                    Text="*" ErrorMessage="First Name is a required field"
                                                    ControlToValidate="txtFirstName" Display="None" ValidationGroup="registration"></asp:RequiredFieldValidator>
                                            </div> 
				                        </div>
				                        <div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="col-sm-12">
                                                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName"
                                                    CssClass="text-danger" Display="None" 
                                                    Text="*" ErrorMessage="Last Name is a required field"
                                                    ValidationGroup="registration"></asp:RequiredFieldValidator>
                                            </div>
				                        </div>
				                        <div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:Label ID="lblPhone" runat="server" Text="Phone:"></asp:Label>
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="col-sm-12">
                                                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone"
                                                    CssClass="text-danger" Display="None" 
                                                    ErrorMessage="Phone is a required field"
                                                    ValidationGroup="registration"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="revPhone" runat="server" CssClass="text-danger" Display="None" 
                                                    ErrorMessage="Phone must be 10 digit number" ControlToValidate="txtPhone"
                                                    ValidationExpression="^[0-9]\d{9}" Text="*" ValidationGroup="registration"></asp:RegularExpressionValidator>
                                            </div>
				                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:Label ID="lblDesignation" runat="server" Text="Designation:"></asp:Label>
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtDesignation" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvDestination" runat="server"
                                                    ControlToValidate="txtDesignation"
                                                    CssClass="text-danger" Display="None"
                                                    Text="*" ErrorMessage="Designation is a required field"
                                                    ValidationGroup="registration"></asp:RequiredFieldValidator>
                                            </div>
				                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:Label ID="lblGradePay" runat="server" Text="Grade Pay:"></asp:Label>
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:DropDownList ID="ddlGradePay" runat="server">
                                                    <asp:ListItem>8900</asp:ListItem>
                                                    <asp:ListItem>6600</asp:ListItem>
                                                    <asp:ListItem>4400</asp:ListItem>
                                                    <asp:ListItem>4200</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
				                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:Label ID="lblOffice" runat="server" Text="Office:"></asp:Label>
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtOffice" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvOffice" runat="server" ControlToValidate="txtOffice"
                                                    CssClass="text-danger" Display="None"
                                                    Text="*" ErrorMessage="Office is a required field"
                                                    ValidationGroup="registration"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:Label ID="lblHeadQuarter" runat="server" Text="Head Quarter:"></asp:Label>
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtHeadQuarter" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvHeadQuarter" runat="server"
                                                    ControlToValidate="txtHeadQuarter"
                                                    CssClass="text-danger" Display="None"
                                                    Text="*" ErrorMessage="Head Quarter is a required field"
                                                    ValidationGroup="registration"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:Label ID="lblUserName1" runat="server" Text="User Name:"></asp:Label>
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtUserName1" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvUserName1" runat="server"
                                                    ControlToValidate="txtUserName1"
                                                    CssClass="text-danger" Display="None"
                                                    Text="*" ErrorMessage="User Name is a required field"
                                                    ValidationGroup="registration"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-4">
                                                <asp:Label ID="lblPassword1" runat="server" Text="Password:"></asp:Label>
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtPassword1" runat="server" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvPassword1" runat="server"
                                                    ControlToValidate="txtPassword1"
                                                    CssClass="text-danger" Display="None"
                                                    Text="*" ErrorMessage="Password is a required field"
                                                    ValidationGroup="registration"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    <%--<div class="form-group col-sm-8">--%>
                                        <asp:Button ID="btnRegister" CssClass="btn-primary" runat="server" Text="Sign Up!" OnClick="btnRegister_Click"
                                            ValidationGroup="registration" />
                                    <%--</div>--%>
                                        <div class="form-group">
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" ValidationGroup="registration" />
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                                        </div>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [user_id], [salutation], [first_name], [last_name], [phone], [designation], [gradepay], [office], [headquarter], [username], [password] FROM [User]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [User] WHERE [user_id] = @original_user_id AND [salutation] = @original_salutation AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [phone] = @original_phone AND [designation] = @original_designation AND [gradepay] = @original_gradepay AND [office] = @original_office AND [headquarter] = @original_headquarter AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL))" InsertCommand="INSERT INTO [User] ([salutation], [first_name], [last_name], [phone], [designation], [gradepay], [office], [headquarter], [username], [password]) VALUES (@salutation, @first_name, @last_name, @phone, @designation, @gradepay, @office, @headquarter, @username, @password)" UpdateCommand="UPDATE [User] SET [salutation] = @salutation, [first_name] = @first_name, [last_name] = @last_name, [phone] = @phone, [designation] = @designation, [gradepay] = @gradepay, [office] = @office, [headquarter] = @headquarter, [username] = @username, [password] = @password WHERE [user_id] = @original_user_id AND [salutation] = @original_salutation AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [phone] = @original_phone AND [designation] = @original_designation AND [gradepay] = @original_gradepay AND [office] = @original_office AND [headquarter] = @original_headquarter AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL))">
                                            <DeleteParameters>
                                                <asp:Parameter Name="original_user_id" Type="Int32"></asp:Parameter>
                                                <asp:Parameter Name="original_salutation" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="original_first_name" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="original_last_name" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="original_phone" Type="Int64"></asp:Parameter>
                                                <asp:Parameter Name="original_designation" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="original_gradepay" Type="Int32"></asp:Parameter>
                                                <asp:Parameter Name="original_office" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="original_headquarter" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="original_username" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
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
                                                <asp:Parameter Name="original_salutation" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="original_first_name" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="original_last_name" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="original_phone" Type="Int64"></asp:Parameter>
                                                <asp:Parameter Name="original_designation" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="original_gradepay" Type="Int32"></asp:Parameter>
                                                <asp:Parameter Name="original_office" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="original_headquarter" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="original_username" Type="String"></asp:Parameter>
                                                <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
				                    </form>
			                    </div>
                        	</div>
                        	
                        </div>
                    </div>
                    
                </div>
            </div>
            
        </div>
    </form>
        <!-- Footer -->
        <footer>
        	<div class="container">
        		<div class="row">
        			
        			<div class="col-sm-8 col-sm-offset-2">
        				<div class="footer-border"></div>
                        
                        <p>
                            <h5 id="footer">&copy;Copyright Get Your TA 
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="mailto:getyourta@gmail.com">getyourta@gmail.com</asp:HyperLink>
                            </h5>
                        </p>
        			</div>
        			
        		</div>
        	</div>
        </footer>

        <!-- Javascript -->
        
    <script src="assets/jquery.backstretch.min.js"></script>
    <script src="assets/scripts.js"></script>
        

    <%--  --%>
    <%--<form id="form1" runat="server" cssclass="text-danger">
        <div class="container">
            <h1>Get Your TA</h1>
            <div class="col-sm-12">
                <h2 class="col-sm-offset-1 col-sm-5">Register:</h2>
                <h2 class="col-sm-offset-1 col-sm-5">Login:</h2>
            </div>
            <div class="col-sm-12">
             
                    <div class="col-sm-offset-1 col-sm-2">
                        <asp:Label ID="lblSalutation" runat="server" Text="Salutation:"></asp:Label>
                    </div>
                    <div class="col-sm-2">
                        <asp:DropDownList ID="ddlSalutation" runat="server" AutoPostBack="True">
                            <asp:ListItem Value="Mr">Mr.</asp:ListItem>
                            <asp:ListItem Value="Mrs">Mrs.</asp:ListItem>
                            <asp:ListItem Value="Ms">Ms.</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-offset-1 col-sm-2">
                        <asp:Label ID="lblUserName" runat="server" Text="User Name:"></asp:Label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="User Name is a required field"        
                            ValidationGroup="login"></asp:RequiredFieldValidator>
                    </div>
               
            </div>

            <div class="col-sm-12">
                
                    <div class="col-sm-offset-1 col-sm-2">
                        <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" CssClass="text-danger"
                            text="*" ErrorMessage="First Name is a required field"
                            ControlToValidate="txtFirstName" Display="Dynamic" ValidationGroup="registration"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-sm-offset-1 col-sm-2">
                        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Password is a required field"        
                            ValidationGroup="login"></asp:RequiredFieldValidator>
                    </div>
                
            </div>

            <div class="col-sm-12">
                
                    <div class="col-sm-offset-1 col-sm-2">
                        <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Last Name is a required field"        
                            ValidationGroup="registration"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-sm-offset-1 col-sm-2">
                       
                    </div>
                    <div class="col-sm-2">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" 
                            ValidationGroup="login" /> 
                    </div>
                
            </div>

            <div class="col-sm-12">
                
                    <div class="col-sm-offset-1 col-sm-2">
                        <asp:Label ID="lblPhone" runat="server" Text="Phone:"></asp:Label>
                    </div>
                    <div class="col-sm-2">
                        <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Phone is a required field"        
                            ValidationGroup="registration"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPhone" runat="server" CssClass="text-danger"
                            ErrorMessage="Phone must be 10 digit number" ControlToValidate="txtPhone" 
                            ValidationExpression="^[0-9]\d{9}" Text="*" ValidationGroup="registration"></asp:RegularExpressionValidator>
                    </div> 
                    <div class="col-sm-offset-1 col-sm-6">
                        
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" CssClass="text-danger" ValidationGroup="login" />
                    
                       <asp:Label ID="lblInvalid" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                
            </div>

            <div class="col-sm-12">
                
                    <div class="col-sm-offset-1 col-sm-2">
                        <asp:Label ID="lblDesignation" runat="server" Text="Designation:"></asp:Label>
                    </div>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtDesignation" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDestination" runat="server" 
                            ControlToValidate="txtDesignation" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Designation is a required field"        
                            ValidationGroup="registration"></asp:RequiredFieldValidator>
                    </div>                  
                
            </div>

            <div class="col-sm-12">
                
                    <div class="col-sm-offset-1 col-sm-2">
                        <asp:Label ID="lblGradePay" runat="server" Text="Grade Pay:"></asp:Label>
                    </div>
                    <div class="col-sm-9">
                        <asp:DropDownList ID="ddlGradePay" runat="server">
                            <asp:ListItem>8900</asp:ListItem>
                            <asp:ListItem>6600</asp:ListItem>
                            <asp:ListItem>4400</asp:ListItem>
                            <asp:ListItem>4200</asp:ListItem>
                        </asp:DropDownList>


                        
                    </div>                  
                
            </div>

            <div class="col-sm-12">
                
                    <div class="col-sm-offset-1 col-sm-2">
                        <asp:Label ID="lblOffice" runat="server" Text="Office:"></asp:Label>
                    </div>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtOffice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvOffice" runat="server" ControlToValidate="txtOffice" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Office is a required field"        
                            ValidationGroup="registration"></asp:RequiredFieldValidator>
                    </div>                  
                
            </div>

            <div class="col-sm-12">
                
                    <div class="col-sm-offset-1 col-sm-2">
                        <asp:Label ID="lblHeadQuarter" runat="server" Text="Head Quarter:"></asp:Label>
                    </div>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtHeadQuarter" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvHeadQuarter" runat="server" 
                            ControlToValidate="txtHeadQuarter" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Head Quarter is a required field"        
                            ValidationGroup="registration"></asp:RequiredFieldValidator>
                    </div>                  
                
            </div>

            <div class="col-sm-12">
                
                    <div class="col-sm-offset-1 col-sm-2">
                        <asp:Label ID="lblUserName1" runat="server" Text="User Name:"></asp:Label>
                    </div>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtUserName1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUserName1" runat="server" 
                            ControlToValidate="txtUserName1" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="User Name is a required field"        
                            ValidationGroup="registration"></asp:RequiredFieldValidator>

                    </div>                  
                
            </div>

            <div class="col-sm-12">
                
                    <div class="col-sm-offset-1 col-sm-2">
                        <asp:Label ID="lblPassword1" runat="server" Text="Password:"></asp:Label>
                    </div>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtPassword1" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword1" runat="server" 
                            ControlToValidate="txtPassword1" 
                            CssClass="text-danger" Display="Dynamic" 
                            text="*" ErrorMessage="Password is a required field"        
                            ValidationGroup="registration"></asp:RequiredFieldValidator>
                    </div>                  
                
            </div>

            <div class="col-sm-12">
                
                    <div class="col-sm-offset-1 col-sm-11">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" 
                            ValidationGroup="registration" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [user_id], [salutation], [first_name], [last_name], [phone], [designation], [gradepay], [office], [headquarter], [username], [password] FROM [User]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [User] WHERE [user_id] = @original_user_id AND [salutation] = @original_salutation AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [phone] = @original_phone AND [designation] = @original_designation AND [gradepay] = @original_gradepay AND [office] = @original_office AND [headquarter] = @original_headquarter AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL))" InsertCommand="INSERT INTO [User] ([salutation], [first_name], [last_name], [phone], [designation], [gradepay], [office], [headquarter], [username], [password]) VALUES (@salutation, @first_name, @last_name, @phone, @designation, @gradepay, @office, @headquarter, @username, @password)" UpdateCommand="UPDATE [User] SET [salutation] = @salutation, [first_name] = @first_name, [last_name] = @last_name, [phone] = @phone, [designation] = @designation, [gradepay] = @gradepay, [office] = @office, [headquarter] = @headquarter, [username] = @username, [password] = @password WHERE [user_id] = @original_user_id AND [salutation] = @original_salutation AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [phone] = @original_phone AND [designation] = @original_designation AND [gradepay] = @original_gradepay AND [office] = @original_office AND [headquarter] = @original_headquarter AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_user_id" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="original_salutation" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_first_name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_last_name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_phone" Type="Int64"></asp:Parameter>
                                <asp:Parameter Name="original_designation" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_gradepay" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="original_office" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_headquarter" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_username" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
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
                                <asp:Parameter Name="original_salutation" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_first_name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_last_name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_phone" Type="Int64"></asp:Parameter>
                                <asp:Parameter Name="original_designation" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_gradepay" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="original_office" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_headquarter" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_username" Type="String"></asp:Parameter>
                                <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div> 
                <div class="col-sm-12">
                    <div class="col-sm-offset-1 col-sm-5">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" ValidationGroup="registration" />
                    </div>
                    
                    
                </div>
                
                    <div class="col-sm-12">
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
            </div>

        </div>
    </form>--%>
    
</body>
</html>
