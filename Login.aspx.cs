using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

public partial class Login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=payroll;Integrated Security=True");

    
    protected void Page_Load(object sender, EventArgs e)
    {

        
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            var uemail = email.Text.ToString();
            var pass = password.Text.ToString();
            conn.Open();
            string qry = "select * from add_employe where email='" + uemail + "' and password='" + pass + "'";
            SqlCommand cmd = new SqlCommand(qry, conn);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Response.Write("<script>alert('Login Sucess......!!')</script>");
                if (admin.Checked == true)
                {
                   // (Panel)Master.FindControl("addclass").Visible = true;
                    Response.Redirect("AdminH.aspx");

                    LinkButton addclass = this.Master.FindControl("addclass") as LinkButton;
                    addclass.Visible = false;
                    
                }
                else if(emp.Checked == true)
                {
                    Session["UserName"] = email.Text.ToString();
                    Session["Pwd"] = password.Text.ToString();
                    Response.Redirect("EmployeeH.aspx");
                    
                }
            }
            else
            {
                Response.Write("<script>alert('email & password Is not correct Try again..!!')</script>");
            }
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
