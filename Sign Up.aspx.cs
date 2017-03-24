using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

public partial class Sign_Up : System.Web.UI.Page
{
    SqlDataAdapter da = new SqlDataAdapter();// hold the select command
    DataSet ds = new DataSet();// to fetch from the database/ holds data
    
    string connstr = "Data Source = (localdb)\\v11.0;Initial Catalog=SMES;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Btnsignup_Click(object sender, EventArgs e)
    {

        {
            SqlConnection conn = new SqlConnection(connstr);// creating an instance of the sql connection
            da.InsertCommand = new SqlCommand("Insert into[SMES].[dbo].[Login] values (@Username,@Password,@Name,@Email,'S')", conn);
            da.InsertCommand.Parameters.AddWithValue("@Username", Username.Text);
            da.InsertCommand.Parameters.AddWithValue("@Password", Password.Text);
            da.InsertCommand.Parameters.AddWithValue("@Name", Name.Text);
            da.InsertCommand.Parameters.AddWithValue("@Email", Email.Text);

            conn.Open();
            da.InsertCommand.ExecuteNonQuery();
            conn.Close();
            IbIMsg.Text = "Registeration Sucessfull";
            IbIMsg.ForeColor = Color.Green;
            Response.Redirect("login.aspx");
            
        }
    }
       
    
      

protected void Email_TextChanged(object sender, EventArgs e)
{

}


}
