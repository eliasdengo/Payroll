<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

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
                       <td> <asp:Label  runat="server" Text="Enter Your Email" Font-Bold="True" Font-Italic="True" Font-Size="20pt"></asp:Label></td>
                      <td >
                               
                       </td>
                   </tr>
                      
                     <tr>
                       <td> <asp:Label  runat="server" Text=" Email"></asp:Label></td>
                   </tr>
                  <tr>
                      <td> <asp:TextBox ID="emailchangepass" runat="server" CssClass="img-fluid m-3" TextMode="Email"> </asp:TextBox></td>
                  </tr>
                      <tr >
                      
                       <td >
                           <asp:Button ID="btncancel" runat="server" Text="Reset Password" class="btn btn-primary me-md-3 m-3" OnClick="btncancel_Click"></asp:Button>

                       </td>
                   </tr>
               </table>
               </div>
           </div>
            </div>
                   </center>
          </section>
</asp:Content>

