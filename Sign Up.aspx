<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sign Up.aspx.cs" Inherits="Sign_Up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta  charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign Up</title>

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
        .center-page{
width:300px;
height:300px;
position:absolute;
 top:-80px;
 bottom:0;
 left:0;
 right:0;
  margin:auto

        }
        .space-vert{
            margin-top:20px;
        }
        .footer{
            width:auto;
height:auto;
position:absolute;
 top:600px;
 bottom:0;
 left:0;
 right:0;
  margin:auto 
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
               <div class="navbar-header"><button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                   <span class="sr-only">Toggle navigation</span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                       </button>
                    <img class="img-responsive" src="images/fast-sport-logo.png" alt="logo" width="50" height="50"></div>
                  <a class="navbar-brand"> S.E.M.S</a><!-- branding the website-->
                <p class="navbar-text">Powered By Sports</p> 
                    <nav class="collapse navbar-collapse navbar-right">
                  <ul class="nav navbar-nav">
                     <li class="active"><a href="login.aspx">Login</a></li>
                      </ul>
               </nav>
            </div>
         </div>
      </div>
   
          <!-- Sign up form starts-->
        <div  class="center-page">
            <label class="col-xs-11">UserID</label>
            <div  class="col-xs-11">      
            <asp:TextBox ID="Username" runat="server" CssClass="form-control" placeholder="Enter your ID"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" Cssclass="text-danger" runat="server" ErrorMessage="Username is Required!!" ControlToValidate="Username"></asp:RequiredFieldValidator>
             </div>

            <label class="col-xs-11">Password</label>
            <div  class="col-xs-11">
            <asp:TextBox ID="Password" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" Cssclass="text-danger" runat="server" ErrorMessage="Password is Required!!" ControlToValidate="Password"></asp:RequiredFieldValidator>
            </div> 

            <label class="col-xs-11">Confirm Password</label>
            <div  class="col-xs-11">
            <asp:TextBox ID="Confirmpassword" runat="server" CssClass="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
             <asp:CompareValidator  runat="server" ControlToValidate="Password" ControlToCompare="Confirmpassword" Cssclass="text-danger" ErrorMessage="Passwords do not match." />
            </div>

             <label class="col-xs-11">Name</label>
            <div  class="col-xs-11">
            <asp:TextBox ID="Name" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" Cssclass="text-danger" runat="server" ErrorMessage="Your name is required!!" ControlToValidate="Name"></asp:RequiredFieldValidator>
            </div>

             <label class="col-xs-11">Email</label>
            <div  class="col-xs-11">
            <asp:TextBox ID="Email" runat="server" CssClass="form-control" placeholder="Email" OnTextChanged="Email_TextChanged" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" Cssclass="text-danger" runat="server" ErrorMessage="Your Email is required!!" ControlToValidate="Email"></asp:RequiredFieldValidator>
            </div>
            
            <div class="col-xs-11">
            <asp:Button ID="Btnsignup" runat="server" CssClass="btn btn-success space-vert" Text="Sign Up" OnClick="Btnsignup_Click" />
                <asp:Label ID="IbIMsg" runat="server"></asp:Label>
            </div>
            
        </div>
        <!-- it ends here-->
            
        <!-- login start-->
      
        <footer class="footer">
              <hr />
               <p>&copy; <%: DateTime.Now.Year %>- POWERED BY SPORTS</p>
                
            </footer>
    </form>
     
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
