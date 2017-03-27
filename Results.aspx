<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Results" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <meta  charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title> Results</title>

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
           .auto-style4 {
               width: 119px;
           }
         
           .auto-style5 {
               width: 37px;
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
                    <li class="active"><a href ="login.aspx">Log out</a></li>
                   
                </ul>
            </div>
            </div>
        </div>
        <br />
        <br />
         <td>
                    
   <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemDataBound="Page_Load" >
            <ItemTemplate>
                <div >
                  <table Width="100%" Height="100%" align="center"  border="1" class="table table-striped table-responsive">
                         <tr class="danger">
              <!--this is for date-- place codes-->
               <td colspan="3" align="center"><asp:Label ID="Lbleventname" runat="server" Text='<%#Eval("EventName") %>'></asp:Label> </td>
                             <!-- begin eventname fetch-->
                             <td align="center" colspan="2"><asp:Label ID="Lblresults" runat="server" Text="Results"></asp:Label> </td>
                             <!-- begin eventname fetch-->
           </tr>
                <!-- end date-->
            <tr ><!--time label no code-->
                <td align="center">
                    <asp:Label ID="lbltime" runat="server" Text="Time"></asp:Label>
                    </td><!--timedisplay end-->
                <td align="center"><!-- teamsdisplay-->
                    <asp:Label ID="Lblteams" runat="server" Text="Teams"></asp:Label>
                   </td>
                <!-- display events from database-->
                <td align="center"> <asp:Label ID="lblevents" runat="server"  Text='<%#Eval("Event") %>'></asp:Label></td>
               
                
               
                <!--  end display events from database-->
             </tr><!-- end teamdisplay-->
            <tr class="success">
                <td><!-- times form database-->
                    <asp:Label ID="Lbltimesdb" runat="server" Text='<%#Eval("Date") %>'></asp:Label></td><!--  end times form database-->
                <td><!-- fetch teama-->
                    <asp:Label ID="lblteama" runat="server" Text='<%#Eval("TeamA") %>'></asp:Label></td><!--  end fetch teama-->
                                               
                <td><!-- fetch teamb-->
                   <asp:Label ID="Lblteamb" runat="server" Text='<%#Eval("TeamB") %>'></asp:Label></td><!--  end fetch teamb-->
                                            
                  <td class="auto-style4"><!-- Fetch scorea-->
                    <asp:Label ID="lblscorea" runat="server" Text='<%#Eval("Scorea") %>'></asp:Label> <span class=" glyphicon glyphicon-eye-open"></span></td><!--  end Fetch scorea-->
                <td class="auto-style5"><!-- Fetch scoreb-->
                    <asp:Label ID="lblscoreb" runat="server" Text='<%#Eval("Scoreb") %>'></asp:Label><span class=" glyphicon glyphicon-eye-open"></span></td><!-- end Fetch scoreb-->
                  </tr>
                </table>   
                    </div>
                </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMESConnectionString1 %>" SelectCommand="SELECT Eventname, Event, TeamA, TeamB, ScoreA, ScoreB, Date FROM Records WHERE (Eventname = @Eventname)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Hdfeventid" Name="Eventname" PropertyName="Value" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HiddenField ID="Hdfeventid" runat="server" />
        <br />
    </div>
             
          <!-- footer begins-->
     <footer>
      <p>&copy; <%: DateTime.Now.Year %>- POWERED BY SPORTS</p>
           </footer>

        <!-- footer ends-->
    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
