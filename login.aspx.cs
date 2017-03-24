using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
public partial class login : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    SqlDataAdapter da = new SqlDataAdapter();// hold the select command
    DataSet ds = new DataSet();// to fetch from the database/ holds data
    string connstr = "Data Source = (localdb)\\v11.0;Initial Catalog=SMES;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnback_onclick(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connstr);// creating an instance of the sql connection
        da.SelectCommand = new SqlCommand("Select* from Login where Username='" + Username.Text + "'and Password='" + Password.Text + "' ", conn);
        conn.Open();

        da.Fill(dt);
        if (dt.Rows.Count != 0)
        {// checks if remember me checkbox is ticked
            if (CheckBox1.Checked)
            {
                // stores username and password
                Response.Cookies["Username"].Value = Username.Text;
                Response.Cookies["Password"].Value = Password.Text;

                //set number of days for cookies to expire or to delete
                Response.Cookies["Username"].Expires = DateTime.Now.AddDays(15);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(15);
            }

        }
        else// when the user does not tick the"remeber me box"
        {
            Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
        }

        string Utype;
        // asign a column value to user type string
      Utype = dt.Rows[0][5].ToString().Trim();
        //checks the user type values and redirect it to the appropriate pages
       
        if (Utype == "S")
        {
            Session["Username"] = Username.Text;
            Response.Redirect("Trendingevents.aspx");
        }
        if (Utype == "A")
        {
            Session["Username"] = Username.Text;
            Response.Redirect("Adminpage.aspx");
        }
        if (Utype == "E")
        {
            Session["Username"] = Username.Text;
            Response.Redirect("Supervisorpage.aspx");
        }
        IbIerror.Text = "Login Sucessfull";
        IbIerror.ForeColor = Color.Green;

    }

   
}
      
        
    
        
   
         
    
   

    


  