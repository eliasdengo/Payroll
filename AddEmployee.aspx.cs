using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddEmployee : System.Web.UI.Page
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

    protected void addemployee_Click(object sender, EventArgs e)
    {
        if (pass.Text == cpass.Text)
        {

            try
            {

                var emails = email.Text.ToString();
                var classids = classid.Text.ToString();
                var names = name.Text.ToString();
                var addr = address.Text.ToString();
                var citys = city.Text;
                var pinc = Convert.ToInt32(pincode.Text.Trim());
                var mob = Convert.ToInt32(mobile.Text.Trim());
                var deg = degree.Text.ToString();
                var des = designation.Text.ToString();
                var branchs = branch.Text.ToString();
                var bpays = Convert.ToInt32(basicpay.Text.Trim());
                var salarys = Convert.ToInt32(salary.Text.Trim());
                var baccounts = Convert.ToInt32(bankacco.Text.Trim());
                var password = pass.Text.ToString();
                var date = DateTime.Now;
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into add_employe values (@classid,@name,@address,@city,@pincode,@mobile,@degree,@designation,@branch,@bpay,@salary,@baccount,@email,@password,@date)";
                cmd.Parameters.AddWithValue("@classid", classids);
                cmd.Parameters.AddWithValue("@name", names);
                cmd.Parameters.AddWithValue("@address", addr);
                cmd.Parameters.AddWithValue("@city", citys);
                cmd.Parameters.AddWithValue("@pincode", pinc);
                cmd.Parameters.AddWithValue("@mobile", mob);
                cmd.Parameters.AddWithValue("@degree", deg);
                cmd.Parameters.AddWithValue("@designation", des);
                cmd.Parameters.AddWithValue("@branch", branchs);
                cmd.Parameters.AddWithValue("@bpay", bpays);
                cmd.Parameters.AddWithValue("@salary", salarys);
                cmd.Parameters.AddWithValue("@baccount", baccounts);
                cmd.Parameters.AddWithValue("@email", emails);
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@date", date);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

                Response.Write(ex);
            }
        }


    }
}