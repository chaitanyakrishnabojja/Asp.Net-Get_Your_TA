<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationSuccess.aspx.cs" Inherits="Get_Your_TA.RegistrationSuccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
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
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="top-content">

            <div class="inner-bg">
                <div class="container">

                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>Get Your Travel Allowance</strong></h1>
                            <h1>Registration Success</h1>
            
            <asp:HyperLink ID="hlGoToLoginPage" CssClass="text-danger" runat="server" NavigateUrl="~/Landing.aspx" Font-Bold="True">Go To Login Page</asp:HyperLink>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            
        </div>
            <footer>
        	<div class="container">
        		<div class="row">
        			
        			<div class="col-sm-8 col-sm-offset-2">
        				<div class="footer-border"></div>
                        
                        <p>
                            <h5 id="footer" >&copy;Copyright Get Your TA 
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="mailto:getyourta@gmail.com">getyourta@gmail.com</asp:HyperLink>
                            </h5>
                        </p>
        			</div>
        			
        		</div>
        	</div>
        </footer>
        <script src="assets/jquery.backstretch.min.js"></script>
    <script src="assets/scripts.js"></script>
    </form>
</body>
</html>


<%--<h1>Registration Success</h1>
            
            <asp:HyperLink ID="hlGoToLoginPage" runat="server" NavigateUrl="~/Landing.aspx">Go To Login Page</asp:HyperLink>--%>