<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true" CodeFile="Leave.aspx.cs" Inherits="Leave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
#addclass,#addemployee,#employeereport,#adminlogin
{
 display:none;
}

</style>
                  <center>
     <section>
     <div class="container">
        <div class="row">
            <div class="col-6" style="width: 100%; text-align: center; vertical-align: middle">
                <table border=1 align="center" class="m-lg-4">
                      <tr>
                        <td>
                            Employee ID:
                        </td>
                        <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="number" Width="100%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            From Date:
                        </td>
                        <td>
                        <asp:TextBox ID="fdate" runat="server" TextMode="Date" Width="100%" Format="yyyy-MM-DD"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            No of Days
                        </td>
                        <td>
                        <asp:TextBox ID="noofday" runat="server" TextMode="Number" Width="100%"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            Reasson
                        </td>
                        <td>
                       <textarea id="reason" rows="2" cols="20" ></textarea>
                        </td>
                    </tr>
                       <tr>
                        <td>
                  
                        </td>
                        <td>
                        <asp:Button ID="leaveapply" runat="server" Text="Leave Apply"  class="btn btn-primary me-md-3 m-3"></asp:Button>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
         </section>
   </center>
</asp:Content>

