using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GenerateSalary : System.Web.UI.Page
{
    SqlConnection con = null;
    SqlCommand cmd = null;
    SqlDataReader dr = null;

    String strSqlCmd = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=.;Initial Catalog=payroll;Integrated Security=True");

        if (!IsPostBack)
        {
            cascDropdown();
        }

        if (con.State==ConnectionState.Open) {

            con.Close();
        }
        con.Close();
    }

    protected void search_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from add_employe where name='" + semp.SelectedItem.ToString()+ "'and date='"+ day.ToString()+ "' and acid='"+ sclass.SelectedItem.ToString()+"'";
        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())

        {//this last part is solely for testing if the text changed the way I wanted.
            lempname.Text = dr["name"].ToString();
            //lempname.Text = dr.GetValue(1).ToString();
            lbp.Text = dr["bpay"].ToString();
            lsalary.Text = dr["salary"].ToString();
            laccno.Text = dr["baccount"].ToString();

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
        semp.DataSource = cmd.ExecuteReader();
        semp.DataTextField = "name";
        semp.DataValueField = "addempid";
        semp.DataBind();
        semp.Items.Insert(0, new ListItem("-Select Employee-", "0"));
        if (con.State != ConnectionState.Closed)
            con.Close();

    }
}