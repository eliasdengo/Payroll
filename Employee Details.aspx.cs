using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Details : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    SqlDataReader dr = null;

  String strSqlCmd = string.Empty;
 
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.;Initial Catalog=payroll;Integrated Security=True");

        if (!IsPostBack) {
            cascDropdown();
        }

    }

    protected void search_Click(object sender, EventArgs e)
    {

    }

    public void cascDropdown()
    {

        strSqlCmd = "select addempid,name from add_employe";
        SqlCommand cmd = new SqlCommand(strSqlCmd, con);

        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
        semp.DataSource = cmd.ExecuteReader();
        semp.DataTextField = "name";
        semp.DataValueField = "addempid";
        semp.DataBind();
        semp.Items.Insert(0, new ListItem("-Select Employee-", "0"));
        if (con.State != ConnectionState.Closed)
            con.Close();

    }



    protected void semp_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}