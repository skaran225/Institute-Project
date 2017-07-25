using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlConnection con;
    SqlCommand cmd;
    protected void login_admin_Click(object sender, EventArgs e)
    {
        Session["user"] = "Admin";
        String server = "Data Source=DESKTOP-MGVG5O7\\SQLEXPRESS;Initial Catalog=EEA;Integrated Security=True";
        string query = "select *from Admin where username=@username and password=@password";
        con = new SqlConnection(server);
        con.Open();
        cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@username", user.Text);
        cmd.Parameters.AddWithValue("@password", pass.Text);
        SqlDataReader dbr = cmd.ExecuteReader();

        if (dbr.HasRows == false)
        {
            Response.Write("<script>alert('username or password is incorrect.')</script>");
        }
        else
        {
            while (dbr.Read())
            {
                

                    Response.Redirect("Student_Details.aspx");

                
            
            }
        }
        con.Close();

    }
    protected void queryLogin_Click(object sender, EventArgs e)
    {

        Session["query"] = "queries";
        String server = "Data Source=DESKTOP-MGVG5O7\\SQLEXPRESS;Initial Catalog=EEA;Integrated Security=True";
        string query = "select *from Admin where username=@username and password=@password";
        con = new SqlConnection(server);
        con.Open();
        cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@username", user.Text);
        cmd.Parameters.AddWithValue("@password", pass.Text);
        SqlDataReader dbr = cmd.ExecuteReader();

        if (dbr.HasRows == false)
        {
            Response.Write("<script>alert('username or password is incorrect.')</script>");
        }
        else
        {
            while (dbr.Read())
            {


                Response.Redirect("Student_Query.aspx");



            }
        }
        con.Close();

    }
}