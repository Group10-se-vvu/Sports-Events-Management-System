<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta  charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Login</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        body{
            padding-top:50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
       <div>
    <div class="navbar-default navbar-fixed-top" role="navigation">
        <div class ="container"><!--contains the elements in the navigation bar-->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    </button>
                 <a class="navbar-brand"> SPORTS EVENTS MANAGEMENT SYSTEM</a><!-- branding the website-->
                <p class="navbar-text">Powered By Sports</p> 
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href ="Sign Up.aspx">Sign Up</a></li>
                   
                </ul>
            </div>
            </div>
        </div>
           </div>
        
        <p>&nbsp;</p><!-- this code is to leave space-->
        <p>&nbsp;</p><!-- this code is to leave space-->
        <!-- Login start-->
        <div class="container">
            <div class="form-horizontal">
                <h2>Login</h2>
                 <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username" placeholder="Enter your ID"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" Cssclass="text-danger" runat="server" ErrorMessage="Username is Required!!" ControlToValidate="Username"></asp:RequiredFieldValidator>
                    <div class="col-md-3">
                        <asp:TextBox ID="Username" CssClass="form-control" runat="server" ></asp:TextBox>
                    </div>
                      </div>
                 <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" Cssclass="text-danger" runat="server" ErrorMessage="Password is Required!!" ControlToValidate="Password"></asp:RequiredFieldValidator>
                    <div class="col-md-3">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password" ></asp:TextBox>
                    </div>
                </div>
                
                 <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                         <asp:Label ID="Label3" runat="server" CssClass=" control-label" Text="Remember me?"></asp:Label>
                         
                    </div>
                </div>

                 <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-primary " OnClick="Button1_Click" />  
                         &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Btnback" runat="server" Text="Back" CssClass="btn btn-info" OnClick="btnback_onclick" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="IbIerror" runat="server"></asp:Label>

                    </div>
                </div>
            </div>
        </div>
         <hr />
        <!-- login start-->
        <footer>
                <p>&copy; <%: DateTime.Now.Year %>- POWERED BY SPORTS</p>
            </footer>
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>
