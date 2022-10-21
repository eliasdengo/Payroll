<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true" CodeFile="PersonalInfo.aspx.cs" Inherits="PersonalInfo" %>

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
                <table class="table table-dark table-striped">
                    <tr>
                        <td><asp:Label ID="dname" runat="server" Text="Name:"/></td>
                        <td><asp:Label ID="name" runat="server" Text=""></asp:Label></td>
                    </tr>
                      <tr>
                        <td><asp:Label ID="demail" runat="server" Text="Email:"/></td>
                        <td><asp:Label ID="email" runat="server" Text=""></asp:Label></td>
                    </tr>
                      <tr>
                        <td><asp:Label ID="dmobile" runat="server" Text="Mobile:"/></td>
                        <td><asp:Label ID="mobile" runat="server" Text=""></asp:Label></td>
                    </tr>
                      <tr>
                        <td> <asp:Label ID="dbacc" runat="server" Text="Bacc:"/></td>
                        <td><asp:Label ID="bacc" runat="server" Text=""></asp:Label></td>
                    </tr>
                      <tr>
                        <td><asp:Label ID="dcity" runat="server" Text="City:"/></td>
                        <td><asp:Label ID="city" runat="server" Text=""></asp:Label></td>
                    </tr>
                      <tr>
                        <td><asp:Label ID="daddress" runat="server" Text="Address:"/></td>
                        <td><asp:Label ID="address" runat="server" Text=""></asp:Label></td>
                    </tr>
                      <tr>
                        <td><asp:Label ID="ddesignation" runat="server" Text="Designation:"/></td>
                        <td><asp:Label ID="designation" runat="server" Text=""></asp:Label></td>
                    </tr>
                      <tr>
                        <td> <asp:Label ID="ddegree" runat="server" Text="Begree:"/> </td>
                        <td><asp:Label ID="degree" runat="server" Text=""></asp:Label></td>
                    </tr>
                         <tr>
                        <td><asp:Label ID="dbranch" runat="server" Text="Branch:"/></td>
                        <td><asp:Label ID="branch" runat="server" Text=""></asp:Label></td>
                    </tr>
                         <tr>
                        <td><asp:Label ID="dsalary" runat="server" Text="Salary:"/></td>
                        <td><asp:Label ID="salary" runat="server" Text=""></asp:Label></td>
                    </tr>
                         <tr>
                        <td><asp:Label ID="ddate" runat="server" Text="Date:"/></td>
                        <td><asp:Label ID="date" runat="server" Text=""></asp:Label></td>
                    </tr>

                </table>
           </div>
        </div>
     </div>
            </section>
                </center>
</asp:Content>

