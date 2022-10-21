using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for count
/// </summary>
public class countA
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=payroll;Integrated Security=True");

    public String lemp(){
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = " select count(addempid) from add_employe";
            var emp = cmd.ExecuteScalar();
            con.Close();
        return emp.ToString();
    }

    public string newleave()
    {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = " select count(leaveappid) from leaveapp";
            var lea = cmd.ExecuteScalar();
            con.Close();
            return lea.ToString();
    }




}