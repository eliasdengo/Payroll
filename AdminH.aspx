<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true" CodeFile="AdminH.aspx.cs" Inherits="AdminH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <style type="text/css">
#leave,#salary,#yearwisereport,#personalinfo,#adminlogin
{
 display:none;
}

</style>
      <center>
     <section>
     <div class="container">
        <div class="row">
            <div class="col-6" style="width: 100%; text-align: center; vertical-align: middle">
                <table border=1 align="center" class="m-lg-4  navbar-collapse">
                      <tr class="accordion-collapse">
                        <td>
  <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Employee</h5>
       </div><asp:Label ID="lemp" runat="server" Text=""></asp:Label>
  </div>
</div>
                        </td>
                        <td>
   <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Active</h5>
     </div><asp:Label ID="active" runat="server" Text=""></asp:Label>
  </div>
</div>
                        </td>
                           <td>
   <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Deactive</h5>
  </div><asp:Label ID="deactivate" runat="server" Text=""></asp:Label>
</div>
                        </td>
                    </tr>
                    <tr class="accordion-collapse">
                        <td>
   <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">New Leave</h5>
     </div><asp:Label ID="newleave" runat="server" Text=""></asp:Label>
  </div>
</div>
                        </td>
                        <td>
 <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Approved</h5>
     </div><asp:Label ID="approved" runat="server" Text=""></asp:Label>
  </div>
</div>
                        </td>
                         <td>
  <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Rejected</h5>
     </div><asp:Label ID="rejected" runat="server" Text=""></asp:Label>
  </div>
</div>
                        </td>
                    </tr>
                    
                </table>
            </div>
        </div>
    </div>
         </section>
   </center>
</asp:Content>

