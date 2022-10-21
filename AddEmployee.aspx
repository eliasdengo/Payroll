<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true" CodeFile="AddEmployee.aspx.cs" Inherits="AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <center>
        <section>
        <div class="container mb-4">
            <div class="row">
                <div class="col-12">
                     <h1> Add New Employee </h1>
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
                <table >
                     <tr>
                        <td>Class ID:</td>
                         <td>
                             <asp:DropDownList ID="classid" runat="server" Width="100%"  >
                                 <asp:ListItem Value="select id">Select Class Id</asp:ListItem>
                                 <asp:ListItem Value="1">Class 1</asp:ListItem>
                                 <asp:ListItem Value="2">class 2</asp:ListItem>
                                 <asp:ListItem Value="3">Class 3</asp:ListItem>
                                 <asp:ListItem Value="4">Class 4</asp:ListItem>
                             </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>Name:</td>
                         <td>
                             <asp:TextBox ID="name" runat="server"></asp:TextBox>

                         </td>
                    </tr>
                    <tr>
                         <td>Address:</td>
                         <td>
                             <asp:TextBox ID="address" runat="server"></asp:TextBox>
                         </td>
                    </tr>
                       <tr>
                        <td>City:</td>
                         <td>
                             <asp:TextBox ID="city" runat="server"></asp:TextBox>
                         </td>
                    </tr>
                    <tr>
                         <td>PinCode:</td>
                         <td>
                             <asp:TextBox ID="pincode" runat="server" TextMode="Number"></asp:TextBox>

                         </td>
                    </tr>
                       <tr>
                        <td>Mobile:</td>
                         <td>
                             <asp:TextBox ID="mobile" runat="server" TextMode="Phone"></asp:TextBox>

                         </td>
                    </tr>
                    <tr>
                         <td>Degree:</td>
                         <td>
                             <asp:DropDownList ID="degree" runat="server" Width="100%">
                                 <asp:ListItem Selected="True">Education Degree</asp:ListItem>
                                 <asp:ListItem>PHD</asp:ListItem>
                                 <asp:ListItem>MSC</asp:ListItem>
                                 <asp:ListItem>BSC</asp:ListItem>
                                 <asp:ListItem>Depi</asp:ListItem>
                             </asp:DropDownList>
                         </td>
                    </tr>
                       <tr>
                        <td>Designation:</td>
                         <td>
                             <asp:DropDownList ID="designation" runat="server" Width="100%">
                                 <asp:ListItem>Profesor</asp:ListItem>
                                 <asp:ListItem>Doctor</asp:ListItem>
                                 <asp:ListItem>Engineer</asp:ListItem>
                             </asp:DropDownList>

                         </td>
                    </tr>
                    <tr>
                      
                </table>
            </div>

             <div class="col-6">
                <table>
                      <td>Branch:</td>
                         <td>
                             <asp:DropDownList ID="branch" runat="server" Width="100%">
                                 <asp:ListItem Selected="True">Deppartment</asp:ListItem>
                                 <asp:ListItem>IT</asp:ListItem>
                                 <asp:ListItem>Finance</asp:ListItem>
                                 <asp:ListItem>Bord</asp:ListItem>
                                 <asp:ListItem>HR</asp:ListItem>
                             </asp:DropDownList>
                         </td>
                    </tr>
                    <tr>
                         <td>Basic Pay:</td>
                         <td>
                             <asp:TextBox ID="basicpay" runat="server" TextMode="Number"></asp:TextBox>
                         </td>
                    </tr>
                       <tr>
                        <td>Salary:</td>
                         <td>
                             <asp:TextBox ID="salary" runat="server" ></asp:TextBox>
                         </td>
                    </tr>
                    <tr>
                         <td>Bank Account:</td>
                         <td>
                             <asp:TextBox ID="bankacco" runat="server" ></asp:TextBox>
                         </td>
                    </tr>
                       <tr>
                        <td>Email:</td>
                         <td>
                             <asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
                         </td>
                    </tr>
                    <tr>
                         <td>Password:</td>
                         <td>
                             <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
                         </td>
                    </tr>
                       <tr>
                        <td>Confirm-password:</td>
                         <td>
                             <asp:TextBox ID="cpass" runat="server" TextMode="Password"></asp:TextBox>

                         </td>
                    </tr>
                    <tr>
                         <td></td>
                         <td>
                             <asp:Button ID="addemployee" runat="server" Text="Add Employee" class="btn btn-primary me-md-3 m-3" OnClick="addemployee_Click" /></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    </section>
    </center>
</asp:Content>

