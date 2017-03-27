using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class imagespage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SMESConnectionString1"].ConnectionString);
        string facid = Request.QueryString["facid"];
        //string studentid = Session["username"].ToString();
        string imageSql = "Select image FROM [dbo].[Events] WHERE EventID='" + facid + "' ";
        SqlCommand cmd = new SqlCommand(imageSql, conn);
        //cmd.Parameters.AddWithValue("@instid", Request.QueryString["ID"]);

        try
        {
            conn.Open();

            SqlDataReader myImageReader = cmd.ExecuteReader();
            if (myImageReader.Read())
            {
                // Emit the Content Type
                //Response.ContentType = myImageReader["ContentType"].ToString();

                // Squirt out the ImageData binary contents
                Response.BinaryWrite((byte[])myImageReader["image"]);

                myImageReader.Close();
            }
            else
            {

                byte[] b = System.IO.File.ReadAllBytes(ResolveUrl("~/images/unnamed.png"));
                Response.BinaryWrite(b);
            }
            myImageReader.Close();
        }
        catch (Exception ex)
        {

        }
        finally { if (conn != null) conn.Close(); }
    }


}