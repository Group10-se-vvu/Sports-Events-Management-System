﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.IO;

public partial class Adminpage : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    SqlDataAdapter da = new SqlDataAdapter();// hold the select command
    DataSet ds = new DataSet();// to fetch from the database/ holds data
    string connstr = "Data Source = (localdb)\\v11.0;Initial Catalog=SMES;Integrated Security=True";
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

    protected void btnlogout_click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("Default.aspx");
    }

    protected void btnsubmit_onclick(object sender, EventArgs e)
    {
        byte[] img = null;
        if(imageuploader1.HasFile)
        {
           img= Thumbnail(imageuploader1);

        }
        SqlConnection conn = new SqlConnection(connstr);// creating an instance of the sql connection
        da.InsertCommand = new SqlCommand("Insert into[SMES].[dbo].[Events] values (@Event_Venue,@Event_Date,@SupervisorID,@Eventname,@Description,@image)", conn);
        da.InsertCommand.Parameters.AddWithValue("@Event_Venue", txtvenue.Text);
        da.InsertCommand.Parameters.AddWithValue("@Event_Date", Convert.ToDateTime(Datetimepicker.Text));
        da.InsertCommand.Parameters.AddWithValue("@SupervisorID", ddlsupervisorid.SelectedValue);
        da.InsertCommand.Parameters.AddWithValue("@Eventname", txteventname.Text);
        da.InsertCommand.Parameters.AddWithValue("@Description",txtdescription.Text);
        da.InsertCommand.Parameters.AddWithValue("@image",img);
  
        conn.Open();
        da.InsertCommand.ExecuteNonQuery();
        conn.Close();
       

    }

    private byte[] Thumbnail(FileUpload upLoadimg)
    {
        Bitmap oldimg = new Bitmap(upLoadimg.FileContent);
        MemoryStream stream = new MemoryStream();
        int height = 128;
        int width = 103;


        Bitmap thbNail = new Bitmap(oldimg, width, height);
        thbNail.Save(stream, System.Drawing.Imaging.ImageFormat.Bmp);
        byte[] buffer = stream.ToArray();
        return buffer;
    }


    protected void btneditresults_onclick(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Editresults.aspx");
    }

    protected void imgstats_onclick(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Statistics.aspx");
    }
}
