using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Trendingevents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
           
            IbIMsg.Text = "Welcome" + Session["Username"].ToString() + "";
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void logout_click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("Default.aspx");
    }

    protected void btnenroll1_onclick(object sender, EventArgs e)
    {

    }

    protected void btnen(object sender, EventArgs e)
    {

    }

    protected void btnenroll2_onclick(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        RepeaterItem item = (RepeaterItem)btn.NamingContainer;
        Label lblevent = (Label)item.FindControl("lbleventgames");
        Session["cossa"] = lblevent.Text;//session for picking the label
        Response.Redirect("particpantpage.aspx");


    }

    protected void btnviewresults_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        RepeaterItem item = (RepeaterItem)btn.NamingContainer;
        Label lblevent = (Label)item.FindControl("lbleventgames");
        Session["cossaid"] = lblevent.Text;//session for picking the label
        Response.Redirect("Results.aspx");


    }

    protected void btnenroll1_Click(object sender, EventArgs e)
    {
        //Session["EventName"] = lblsrcgames.Text;//session for picking the label
        Response.Redirect("particpantpage.aspx");
    }

    public void LoadImg(object sender, RepeaterItemEventArgs e)
    {
        Label lblevent = (Label)e.Item.FindControl("lblid");
        Image img=(Image)e.Item.FindControl("img");
        try
        { 
      
        img.ImageUrl = string.Format("~/imagespage.aspx?facid=" + lblevent.Text);
        
        }
        catch (Exception ex)
        {
            img.ImageUrl = ResolveUrl("~/images/unnamed.png");
        }
    }

   
    




    protected void b(object sender, EventArgs e)
    {
        
    }

    protected void btnenroll3_onclick(object sender, EventArgs e)
    {
        

       // Session["jjnortey"] = ibijjnortey;//session for picking the label
        Response.Redirect("particpantpage.aspx");
    }

    protected void btnenroll_onclick(object sender, EventArgs e)
    {

    }

    protected void btnenroll4_onclick(object sender, EventArgs e)
    {
      //  Session["business"] = ibibusiness;//session for picking the label
        Response.Redirect("particpantpage.aspx");
    }

    protected void btnenroll5_onclick(object sender, EventArgs e)
    {
       // Session["nursa"] = ibinursagames;//session for picking the label
        Response.Redirect("particpantpage.aspx");
    }

    protected void btnenroll6_onclick(object sender, EventArgs e)
    {
       // Session["vvugames"] = ibivvugames;//session for picking the label
        Response.Redirect("particpantpage.aspx");
    }


}