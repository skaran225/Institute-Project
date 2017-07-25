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

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    SqlCommand cmd;
    SqlConnection con;


    protected void Button1_Click(object sender, EventArgs e)
    {
        Random ram = new Random();
        int random_no = ram.Next(0,10000);

        string body = "Hi " + name.Text + ", Welcome to the  http://www.easyeacademy.com .we will contact to you under the 24 hr.  you are interested in " +course.SelectedValue.ToString()+" or if you want immediate contact to me . Click here http://www.easyeacademy.com ";
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential("yourmailid", "yourmailpassword");
            // smtp.Timeout = 2000;
        }
        smtp.Send("yourmailid", email.Text, "Easy Engineering Academy", body); 


        string dob="";
        dob+=dd.SelectedValue.ToString();
        dob+="/"+mm.SelectedValue.ToString();
        dob+="/"+yyyy.SelectedValue.ToString();

        string path = "~/images/"+photo.FileName.ToString();
        photo.SaveAs(Server.MapPath(path));

        String server = "Data Source=DESKTOP-MGVG5O7\\SQLEXPRESS;Initial Catalog=EEA;Integrated Security=True";
        string query = "insert into Registration values(@Name,@F_Name,@D_O_B,@Branch,@Apply_Course,@Catagory,@Address,@Phone_no,@E_Mail,@Photo,@random_no)";
        con = new SqlConnection(server);
        con.Open();
        cmd = new SqlCommand(query, con);

        cmd.Parameters.AddWithValue("@Name", name.Text);
        cmd.Parameters.AddWithValue("@F_Name",fname.Text);
        cmd.Parameters.AddWithValue("@D_O_B",dob);
        cmd.Parameters.AddWithValue("@Branch",Branch.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@Apply_Course",course.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@Catagory",catagory.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@Address",address.Text);
        cmd.Parameters.AddWithValue("@Phone_no",phone.Text);
        cmd.Parameters.AddWithValue("@E_Mail",email.Text);
        cmd.Parameters.AddWithValue("@Photo",path);
        cmd.Parameters.AddWithValue("@random_no", random_no);

         cmd.ExecuteNonQuery();
        con.Close();
         Response.Write("<script>alert('Registration Successfull! Dear '+'"+name.Text+" please check your mail.')</script>");
         name.Text = fname.Text = address.Text = phone.Text = email.Text = "";
         dd.SelectedIndex = mm.SelectedIndex = yyyy.SelectedIndex = Branch.SelectedIndex = course.SelectedIndex = catagory.SelectedIndex = 0;
    }

}