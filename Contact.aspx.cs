using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    SqlConnection con;
    SqlCommand cmd;

    protected void submit_Click(object sender, EventArgs e)
    {
        String server = "Data Source=DESKTOP-MGVG5O7\\SQLEXPRESS;Initial Catalog=EEA;Integrated Security=True";
        string query = "insert into Query values(@Name,@phone_no,@course,@query)";
        con = new SqlConnection(server);
        con.Open();
        cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@Name",name.Text);
        cmd.Parameters.AddWithValue("@phone_no",phone.Text);
        cmd.Parameters.AddWithValue("@course",course.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@query",qry.Text);

        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Hello Dear '+'" + name.Text + " we will reply in under 24 hr. Thanks for asked question.')</script>");
        name.Text = phone.Text = qry.Text = "";
        course.SelectedIndex = 0;
    }
}