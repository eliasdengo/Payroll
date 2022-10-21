using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeH : System.Web.UI.Page
{
    private string email=null;
    private string pass=null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
             email = Session["UserName"].ToString();
        }
        if (Session["Pwd"] != null)
        {
             pass = Session["Pwd"].ToString();

        }
            var sql = " select salary from add_employe where email='"+ email + "' and password='"+ pass + "'";
        var sqlc = " select count(adempid) from View_leave_personal where email='" + email + "' and password='" + pass + "'";
        var salary = new countE();
            lastsalary.Text = "Last Salary :" + salary.salary(sql);
            tleave.Text = "Total leave Request :" + salary.totalLeave(sqlc);
    }
}