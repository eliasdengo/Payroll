using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddClass : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=payroll;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void addclass_Click(object sender, EventArgs e)
    {

        using (SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=payroll;Integrated Security=True"))
        {
            using (SqlCommand cmd = new SqlCommand("insert into addclass values( @cname,@basicsalary,@salary,@Tallowance,@Mallowance,@Wallowance )"))
            {
                cmd.Parameters.Add("@cname", SqlDbType.NVarChar).Value = txtname.Text;
                cmd.Parameters.Add("@basicsalary", SqlDbType.NVarChar).Value = txtbsalary.Text;
                cmd.Parameters.Add("@salary", SqlDbType.NVarChar).Value = txtnsalary.Text;
                cmd.Parameters.Add("@Tallowance", SqlDbType.Int).Value = txttallowance.Text;
                cmd.Parameters.Add("@Mallowance", SqlDbType.Int).Value = txtmallowance.Text;
                cmd.Parameters.Add("@Wallowance", SqlDbType.NVarChar).Value = txtwallowance.Text;
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }


    }
}