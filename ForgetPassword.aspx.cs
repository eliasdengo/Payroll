using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForgetPassword : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=payroll;Integrated Security=True");
    private object lbmsg;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        var username = "";
       var password = "";
       
        SqlCommand cmd = new SqlCommand("select name, password from add_employe where email=@email", conn);
        cmd.Parameters.AddWithValue("email", emailchangepass.Text);
        conn.Open();
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {

            if (sdr.Read())
            {
                username = sdr["name"].ToString();
                password = sdr["password"].ToString();

            }

        }
        conn.Close();

        if (!string.IsNullOrEmpty(password))
        {

            try {

                MailMessage mail = new MailMessage();
                mail.From = new System.Net.Mail.MailAddress("eliasdengo5@gmail.com");
                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential(mail.From.Address, "elias@amu4");
                smtp.Host = "smtp.gmail.com";

                //recipient
                mail.To.Add(new MailAddress(emailchangepass.Text.ToString()));

                mail.IsBodyHtml = true;
                mail.Body = ("Your Username is:" + username + "<br/><br/>" + "Your Password is:" + password);
                smtp.Send(mail);

                Response.Write("<Script>Username and Password Sent Successfully</script>");


            }
            catch (Exception ex) {
                Response.Write(ex);

            }
           
        }
    }

}