using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PersonalInfo : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=payroll;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
        var em = Session["UserName"];
        var pass = Session["Pwd"];
        if (conn.State == ConnectionState.Closed)
        {
            conn.Open();
        }
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = " select * from add_employe where email='" + em + "' and password='" + pass + "'";
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
       DataSet ds = new DataSet();
      da.Fill(ds);
        //   if (ds.Tables[0].Rows.Count > 0)
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {
            if (sdr.Read())
            {
                name.Text = sdr["name"].ToString();
                email.Text = sdr["email"].ToString();
                mobile.Text = sdr["mobile"].ToString();
                bacc.Text = sdr["baccount"].ToString();
                city.Text = sdr["city"].ToString();
                address.Text = sdr["address"].ToString();
                designation.Text = sdr["designation"].ToString();
                degree.Text = sdr["degree"].ToString();
                branch.Text = sdr["branch"].ToString();
                salary.Text = sdr["salary"].ToString();
                date.Text = sdr["date"].ToString();

            }
        }
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
    }
}