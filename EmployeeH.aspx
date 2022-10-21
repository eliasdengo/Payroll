<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true" CodeFile="EmployeeH.aspx.cs" Inherits="EmployeeH" %>

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
  <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Total Leave</h5>
      <asp:Label ID="tleave" class="card-subtitle mb-2 text-muted" runat="server" Text=""></asp:Label>
  </div>
</div>
                        </td>
                        <td>
   <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Approved Leave</h5>
    <asp:Label ID="aleave" class="card-subtitle mb-2 text-muted" runat="server" Text=""></asp:Label>
  </div>
</div>
                        </td>
                           <td>
   <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Canceled Leave</h5>
    <asp:Label ID="cleave" class="card-subtitle mb-2 text-muted" runat="server" Text=""></asp:Label>
  </div>
</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
   <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Last Salary</h5>
    <asp:Label ID="lastsalary" class="card-subtitle mb-2 text-muted" runat="server" Text=""></asp:Label>
  </div>
</div>
                        </td>
                        <td>
 <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Allowance</h5>
    <asp:Label ID="allowance" class="card-subtitle mb-2 text-muted" runat="server" Text=""></asp:Label>
  </div>
</div>
                        </td>
                         <td>
  <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Deduction</h5>
    <asp:Label ID="eduction" class="card-subtitle mb-2 text-muted" runat="server" Text=""></asp:Label>
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

