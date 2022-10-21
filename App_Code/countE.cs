using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for countE
/// </summary>
public class countE
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=payroll;Integrated Security=True");

    public string salary(String sql) {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sql;
        var sal = cmd.ExecuteScalar();
        return sal.ToString();
    if (con.State == ConnectionState.Open)
        {
            con.Close();
        }

    }

    public String totalLeave(String sqlc) {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sqlc;
        var tleave = cmd.ExecuteScalar();
        return tleave.ToString();
    if(con.State == ConnectionState.Open)
           {
            con.Close();
        }
    }

}