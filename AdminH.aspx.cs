using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class AdminH : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
       var c = new countA();
        lemp.Text = "No.Emp :" + c.lemp();
        newleave.Text="leave request:"+ c.newleave();

    }

   
}