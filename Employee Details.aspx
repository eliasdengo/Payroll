<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true" CodeFile="Employee Details.aspx.cs" Inherits="Employee_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center>
        <section>
        <div class="container mb-4">
            <div class="row">
                <div class="col-12">
                    <table>
                               <tr>
                         <td> Select Branch:</td>
                         <td>
                             <asp:DropDownList ID="sbra" runat="server" Width="100%" AutoPostBack="True" >
                                 <asp:ListItem Selected="True">Deppartment</asp:ListItem>
                                 <asp:ListItem>IT</asp:ListItem>
                                 <asp:ListItem>Finance</asp:ListItem>
                                 <asp:ListItem>Bord</asp:ListItem>
                                 <asp:ListItem>Manager</asp:ListItem>
                                 <asp:ListItem>CEO</asp:ListItem>
                                 <asp:ListItem>Presedant</asp:ListItem>
                                 <asp:ListItem>Vice Presedent</asp:ListItem>
                             </asp:DropDownList>
                         </td>
                    </tr>
                               <tr>
                         <td>Select Employee:</td>
                         <td>
                             <asp:DropDownList ID="semp" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="semp_SelectedIndexChanged" >
                                 <asp:ListItem Selected="True">employee</asp:ListItem>
                             </asp:DropDownList>
                         </td>
                    </tr>
                               <tr>
                         <td></td>
                         <td>
                           <asp:Button ID="search" runat="server" Text="Search" class="btn btn-primary me-md-3 m-3" OnClick="search_Click" />
                         </td>
                    </tr>
                    </table>
                </div>
            </div>
        </div>
    </section>
    </center>

      <center>
        <section>
        <div class="container mb-4">
            <div class="row">
                <div class="col-12">
                    <h1>Employee Details</h1>
                </div>
            </div>
        </div>
    </section>
    </center>
    <center>
     <section> 
    <div class="container">
        <div class="row">
            <div class="col-6">
                
                <table>
                    <tr>
                        <td>Name:</td>
                         <td>
                            <asp:Label ID="lname" runat="server" Text=""></asp:Label>

                         </td>
                    </tr>
                    <tr>
                         <td>Address:</td>
                         <td>
                             <asp:Label ID="laddress" runat="server" Text=""></asp:Label>
                         </td>
                    </tr>
                       <tr>
                        <td>City:</td>
                         <td>
                            <asp:Label ID="lcity" runat="server" Text=""></asp:Label>
                         </td>
                    </tr>
                    <tr>
                         <td>PinCode:</td>
                         <td>
                             <asp:Label ID="lpincode" runat="server" Text=""></asp:Label>

                         </td>
                    </tr>
                       <tr>
                        <td>Mobile:</td>
                         <td>
                            <asp:Label ID="lmobile" runat="server" Text=""></asp:Label>

                         </td>
                    </tr>
                    <tr>
                         <td>Degree:</td>
                         <td>
                           <asp:Label ID="ldegree" runat="server" Text=""></asp:Label>
                         </td>
                    </tr>
                       <tr>
                        <td>Designation:</td>
                         <td>
                             <asp:Label ID="ldesignation" runat="server" Text=""></asp:Label>

                         </td>
                    </tr>
                    <tr>
                         <td>Branch:</td>
                         <td>
                            <asp:Label ID="lbranch" runat="server" Text=""></asp:Label>
                         </td>
                    </tr>
                </table>
            </div>

             <div class="col-6">
                <table>
                    <tr>
                        <td>Class:</td>
                         <td>
                            <asp:Label ID="lclass" runat="server" Text=""></asp:Label>

                         </td>
                    </tr>
                    <tr>
                         <td>Basic Pay:</td>
                         <td>
                            <asp:Label ID="lbp" runat="server" Text=""></asp:Label>
                         </td>
                    </tr>
                       <tr>
                        <td>Salary:</td>
                         <td>
                            <asp:Label ID="lsalary" runat="server" Text=""></asp:Label>
                         </td>
                    </tr>
                    <tr>
                         <td>Bank Account:</td>
                         <td>
                            <asp:Label ID="lba" runat="server" Text=""></asp:Label>
                         </td>
                    </tr>
                       <tr>
                        <td>Email:</td>
                         <td>
                             <asp:Label ID="email" runat="server" Text=""></asp:Label>
                         </td>
                    </tr>
                    <tr>
                         <td>Password:</td>
                         <td>
                             <asp:Label ID="lpass" runat="server" Text=""></asp:Label>
                         </td>
                    </tr>
                       <tr>
                        <td>Status:</td>
                         <td>
                      <asp:Label ID="lstatus" runat="server" Text=""></asp:Label>

                         </td>
                    </tr>
                    <tr>
                         <td></td>
                         <td>
                             <asp:Button ID="active" runat="server" Text="Active" class="btn btn-primary me-md-3 m-3" />

                         </td>
                         <td>
                             <asp:Button ID="delete" runat="server" Text="Delete" class="btn btn-primary me-md-3 m-3" />
                         </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    </section>
    </center>
</asp:Content>

