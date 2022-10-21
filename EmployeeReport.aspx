<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true" CodeFile="EmployeeReport.aspx.cs" Inherits="EmployeeReport" %>

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
                      <td><asp:Label for="txtname"  runat="server" Text="Select Branch:"></asp:Label></td>
                      <td><asp:DropDownList ID="sbranch" runat="server">
                          <asp:ListItem Selected="True">Deppartment</asp:ListItem>
                                 <asp:ListItem>IT</asp:ListItem>
                                 <asp:ListItem>Finance</asp:ListItem>
                                 <asp:ListItem>Bord</asp:ListItem>
                                 <asp:ListItem>HR</asp:ListItem>
                          </asp:DropDownList> </td>
                        
                   </tr>
                   <tr>
                       <td>  <asp:Label for="txtbsalary" runat="server" Text="Slect Employee:"></asp:Label></td>
                       <td> <asp:DropDownList ID="semployee" runat="server"></asp:DropDownList> </td>
                   </tr>
                   <tr>
                       <td> </td>
                       <td> <asp:Button ID="psearch" runat="server" Text="search" class="btn btn-primary me-md-3 m-3" OnClick="psearch_Click"></asp:Button></td>
                   </tr>
              
               </table>
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

                      <tr>
                        <td><asp:Label ID="lstatus" runat="server" Text="Status:"/></td>
                        <td><asp:Label ID="status" runat="server" Text=""></asp:Label></td>
                    </tr>
                     
                         <td>
                            
                                 <asp:RadioButtonList ID="rblg" runat="server">
                                 <asp:ListItem>Active</asp:ListItem>
                                 <asp:ListItem>InActive</asp:ListItem>
                                 </asp:RadioButtonList>
                         </td>
                          <td>
                         <asp:Button ID="btnsearch" runat="server" Text="Delete" class="btn btn-primary me-md-3 m-3" OnClick="btnsearch_Click"></asp:Button>
                         </td>   
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