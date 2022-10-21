<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section>
        <center>
        <div class="container ">
       <div class="row justify-content-center" >
           <div class="col-4 m-3 p-3 ">
               <table>
                   <tr>
                       <td> <asp:Label for="emailchangepass" runat="server" Text="Email:"></asp:Label></td>
                      <td> <asp:TextBox ID="emailchangepass" runat="server" CssClass="img-fluid m-3" TextMode="Email"> </asp:TextBox></td>
                   </tr>
                   <tr>
                       <td> <asp:Label for="oldpassword" runat="server" Text="Old Password:"></asp:Label></td>
                      <td> <asp:TextBox ID="oldpassword" runat="server" CssClass="img-fluid m-3" TextMode="Password"> </asp:TextBox></td>
                   </tr>
                      <tr>
                      <td> <asp:Label for="newpassword" runat="server" Text="New Password:"></asp:Label></td>
                      <td> <asp:TextBox ID="newpassword" runat="server" CssClass="img-fluid m-3" TextMode="Password"> </asp:TextBox></td>
                   </tr>
                      <tr>
                       <td> <asp:Label for="confimpassword" runat="server" Text="Confim Password:"></asp:Label></td>
                       <td> <asp:TextBox ID="confimpassword" runat="server" CssClass="img-fluid m-3" TextMode="Password"> </asp:TextBox></td>
                   </tr>
                      <tr >
                       
                        <td >
                               
                       </td>
                      
                       <td >

                           <asp:Button ID="btnok" runat="server" Text="OK" class="btn btn-primary me-md-3 m-3" OnClick="btnok_Click"></asp:Button>
                           <asp:Button ID="btncancel" runat="server" Text="Cancel" class="btn btn-primary me-md-3 m-3"></asp:Button>

                       </td>
                   </tr>
               </table>
               </div>
           </div>
            </div>
                   </center>
          </section>

</asp:Content>

