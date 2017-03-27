<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminpage.aspx.cs" Inherits="Adminpage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register assembly="BasicFrame.WebControls.BasicDatePicker" namespace="BasicFrame.WebControls" tagprefix="DP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta  charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Administrator</title>

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
     <!-- navbar-->
     <div class="navbar-default navbar-fixed-top" role="navigation">
        <div class ="container"><!--contains the elements in the navigation bar-->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="navbar-collapse" id="btnlogin">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    </button>
                 <a class="navbar-brand"> SPORTS EVENTS MANAGEMENT SYSTEM</a><!-- branding the website-->
                <p class="navbar-text">Powered By Sports</p> 
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href ="login.aspx">Login</a></>
                   
                </ul>
            </div>
            </div>
        </div>
        <!-- navnbar end-->
            <h2>
                  <asp:Label ID="IbIMsg" runat="server"></asp:Label>
              </h2>
          
          <!-- Desigining the Admin Form-->
       <div class="container">
        <div class="form-horizontal">
            <h3>Mount an Event</h3>
                 <hr />
           
                 <div class="form-group">
               
                    <asp:Label ID="Label1" runat="server" Text="EventName" CssClass="col-md-1 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txteventname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div> 
                </div>
                              
            <br />
                 <hr />
         
                <div class="form-group">
               
                    <asp:Label ID="eventvenue" runat="server" Text="Venue" CssClass="col-md-1 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtvenue" runat="server" CssClass ="form-control" placeholder="Enter the venue"></asp:TextBox> 
                </div>
                
               <asp:Label ID="Date" runat="server" CssClass="col-md-1 control-label" Text="Date"></asp:Label>
                <div class="col-md-3"  >
                 <DP:BasicDatePicker ID="Datetimepicker" runat="server" CssClass="glyphicon-calendar"  />
                  </div>
                 </div>
             <div class="form-group">
               
                    <asp:Label ID="Description" runat="server" Text="Description:" CssClass="col-md-1 control-label"></asp:Label>
                   <div class="col-md-3">
                        <asp:TextBox ID="txtdescription" runat="server" CssClass ="contact-message form-control" placeholder="Enter the event decription" Height="73px" Width="358px"></asp:TextBox> 
                </div>
                 <asp:Label ID="Supervisor" runat="server" Text="Supervisor:" CssClass="col-md-1 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlsupervisorid" runat="server" CssClass="form-control" DataSourceID="SqlDataSource3" DataTextField="SupervisorName" DataValueField="SupervisorName"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SMESConnectionString1 %>" SelectCommand="SELECT [SupervisorName] FROM [Supervisor]"></asp:SqlDataSource>
                </div>
                 <div class="form-group">
                  <asp:Label ID="imageuploader" runat="server" Text="Upload image" CssClass="col-md-1 control-label"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="imageuploader1" runat="server" />
                    </div> 
                     </div>
                </div>
           </div>
           </div>
       
                
           <br />
                   <div class="form-group">
               <div  align="center">
                   <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn btn-danger btn-lg" OnClick="btnsubmit_onclick" />
                   </div>
           </div>

        </div>
            <!-- footer begins-->
   <footer>    
         <div class="container">
       <div class="row">
           <div class="col-lg-4">
             <asp:ImageButton ID="editresults" runat="server" CssClass="img-circle" Height="75px" ImageUrl="~/images/edit-icon.png" Width="75px" OnClick="btneditresults_onclick" />
               <h4>Edit Results</h4> 
           </div>
            <div class="col-lg-4">
             <asp:ImageButton ID="imgstats" runat="server" CssClass="img-circle" Height="75px" ImageUrl="~/images/Graphicloads-100-Flat-Analytics.ico" Width="75px" OnClick="imgstats_onclick"/>
               <h4>View Stats</h4>
           </div>
       </div>
       </div>
        <p>&copy; ; <%: DateTime.Now.Year %>- POWERED BY SPORTS</p>
            </footer>
        <!-- footer ends-->
    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>
