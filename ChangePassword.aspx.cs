using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=payroll;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (conn.State == ConnectionState.Open)
        {

            conn.Close();
        }
        conn.Open();

    }

    protected void btnok_Click(object sender, EventArgs e)
    {    
        var oldpass = oldpassword.Text.ToString();
        var newpass = newpassword.Text.ToString();
        var emailchangep = emailchangepass.Text.ToString();
        try {

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update  add_employe set password='" + newpass + "' where password='" + oldpass + "' and email='" + emailchangep + "'";
            var changepass = cmd.ExecuteNonQuery();
            if (changepass != 0)
            {

                Response.Write("<script>alert('User Change Password successful')</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("<script>alert('User not Change Password Try Again!!')</script>");
                Response.Redirect("ChangePassword.aspx");
            }

        } catch (Exception ex) {
            Response.Write(ex);
        }
        
    }
}