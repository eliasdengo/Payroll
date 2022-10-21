<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true" CodeFile="AddClass.aspx.cs" Inherits="AddClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
      #leave,#salary,#yearwisereport,#personalinfo,#adminlogin
        {
                display:none;
        }

     </style>
     <section>
        <center>
        <div class="container ">
       <div class="row justify-content-center" >
           <div class="col-4 m-3 p-3 ">
               <table>
                   <tr>
                       <td><asp:Label for="txtname"  runat="server" Text="Class Name:"></asp:Label></td>
                       <td> <asp:TextBox ID="txtname" runat="server"  CssClass="img-fluid m-3">  </asp:TextBox> <br /></td>
                   </tr>
                   <tr>
                       <td>  <asp:Label for="txtbsalary" runat="server" Text="Basic Salary:"></asp:Label></td>
                       <td>  <asp:TextBox ID="txtbsalary" runat="server"  CssClass="img-fluid m-3"> </asp:TextBox><br /></td>
                   </tr>
                   <tr>
                       <td> <asp:Label for="txtnsalary" runat="server" Text="Salary:" > </asp:Label></td>
                       <td> <asp:TextBox ID="txtnsalary" runat="server" CssClass="img-fluid m-3" >  </asp:TextBox><br /></td>
                   </tr>
              
                   <tr>
              
                       <td> <asp:Label for="txttallowance" runat="server" Text="Travel Allowance:"></asp:Label></td>
                       <td> <asp:TextBox ID="txttallowance" runat="server" CssClass="img-fluid m-3"> </asp:TextBox><br /></td>
                   </tr>
                   <tr>
                       <td> <asp:Label for="txtmallowance" runat="server" Text="Medical Allowance:"></asp:Label></td>
                       <td> <asp:TextBox ID="txtmallowance" runat="server" CssClass="img-fluid m-3" >  </asp:TextBox><br /></td>
                   </tr>
                   <tr>
                       <td> <asp:Label for="txtwallowance" runat="server" Text="Washing Allowance:"></asp:Label></td>
                      <td> <asp:TextBox ID="txtwallowance" runat="server" CssClass="img-fluid m-3"> </asp:TextBox></td>
                   </tr>
                    <tr>
                       <td> </td>
                      <td> <asp:Button ID="addclass" runat="server" Text="Add Class"  class="btn btn-primary me-md-3 m-3" OnClick="addclass_Click"></asp:Button> </asp:TextBox></td>
                   </tr>
               </table>

           </div>
       </div>
    </div>
        </center>

    </section>
    <section>
       <div class="container">
           <div class="row">
               <div class="col-4">
                   <asp:Label ID="addGV" runat="server" Text="Add class"></asp:Label>
                   <asp:GridView ID="ACgv" runat="server" class="table table-bordered border-primary m-4" ></asp:GridView>
               </div>
           </div>
       </div>
    </section>
</asp:Content>

