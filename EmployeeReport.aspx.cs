using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeReport : System.Web.UI.Page
{
    SqlConnection con;
    string strSqlCmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.;Initial Catalog=payroll;Integrated Security=True");

        if (!IsPostBack)
        {
            cascDropdown();
        }

        if (con.State == ConnectionState.Open)
        {

            con.Close();
        }
        con.Close();
    }

    protected void psearch_Click(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from add_employe where name='" + semployee.SelectedItem.ToString() +  "' and branch='" + sbranch.SelectedItem.ToString() + "'";

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

        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }
    public void cascDropdown()
    {

        strSqlCmd = "select addempid,name from add_employe";
        SqlCommand cmd = new SqlCommand(strSqlCmd, con);

        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        semployee.DataSource = cmd.ExecuteReader();
        semployee.DataTextField = "name";
        semployee.DataValueField = "addempid";
        semployee.DataBind();
        semployee.Items.Insert(0, new ListItem("-Select Employee-", "0"));
        if (con.State != ConnectionState.Closed)
            con.Close();

    }




    protected void btnsearch_Click(object sender, EventArgs e)
    {
        try
        {
                using (SqlCommand command = new SqlCommand("DELETE FROM add_employe where name='" + semployee.SelectedItem.ToString() + "' and branch='" + sbranch.SelectedItem.ToString() + "'", con))
                {
                    command.ExecuteNonQuery();
                }
                con.Close();
        }
        catch (SystemException ex)
        {
            Response.Write("<script>alert('Something wrong happen !!')</script>");

        }
    }
      
    }

