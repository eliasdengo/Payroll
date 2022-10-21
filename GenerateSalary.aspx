<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true" CodeFile="GenerateSalary.aspx.cs" Inherits="GenerateSalary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <section>
            <center>
        <div class="container mb-4">
            <div class="row">
                <div class="col-12">
                     <h1> Generate Salary</h1>
                </div>
            </div>
        </div>
             </center>
    </section>
    
        <section>
      <center>
      <div class="container mb-5">
        <div class="row">
            <div class="col-4">
               
                <table>
                    <tr>
                        <td>
                            Date:
                        </td>
                        <td>
                     <asp:TextBox ID="day" runat="server" TextMode="Date" Format="yyyy-MM-DD"></asp:TextBox>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            Select Class:
                        </td>
                        <td>
                        <asp:DropDownList ID="sclass" runat="server" Width="100%">
                            <asp:ListItem Value="1">class 1</asp:ListItem>
                            <asp:ListItem Value="2">class 2</asp:ListItem>
                            <asp:ListItem Value="3">class 3</asp:ListItem>
                            <asp:ListItem Value="4">class 4</asp:ListItem>
                            <asp:ListItem Value="5">class 5</asp:ListItem>
                            <asp:ListItem Value="6">class 6</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
              
            </div>
             <div class="col-4">
               
                <table>
                   
                      <tr>
                        <td>
                            Select Employee:
                        </td>
                        <td>
                            <asp:DropDownList ID="semp" runat="server" Width="100%"></asp:DropDownList>
                        </td>

                          <td>
                               <asp:Button ID="select" runat="server" Text="Select" class="btn btn-primary me-md-3 m-3" />
                          </td>
                    </tr>
                </table>
              
            </div>
        </div>
    </div>
   </center>
     </section>

    <section>
            <center>
        <div class="container mb-4">
            <div class="row">
                <div class="col-12">
                   <table style="background:orange">
                       <tr>
                           <td>Employee Name</td>
                            <td>
                                <asp:Label ID="lempname" runat="server" Text=""></asp:Label>

                            </td>
                           <td>,Account NO</td>
                            <td>
                                <asp:Label ID="laccno" runat="server" Text=""></asp:Label>

                            </td>
                       </tr>
                   </table>
                </div>
            </div>
        </div>
             </center>
    </section>
    
     
     <section> 
         <center>
    <div class="container m-5">
        <div class="row">
            <div class="col-6">
                
                <table>
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
                        <td>Total Leave:</td>
                         <td>
                            <asp:Label ID="ltl" runat="server" Text=""></asp:Label>
                         </td>
                    </tr>
                    <tr>
                         <td>Approve Leave:</td>
                         <td>
                             <asp:Label ID="lal" runat="server" Text=""></asp:Label>

                         </td>
                    </tr>
                       <tr>
                        <td>Leave Deducation:</td>
                         <td>
                            <asp:Label ID="ldl" runat="server" Text=""></asp:Label>

                         </td>
                    </tr>
                    <tr>
                         <td>DA:</td>
                         <td>
                          <asp:TextBox ID="da" runat="server"></asp:TextBox> % 100
                         </td>
                    </tr>
                       <tr>
                        <td>HR:</td>
                         <td>
                            <asp:TextBox ID="hr" runat="server"></asp:TextBox> % 250

                         </td>
                    </tr>
                  
                </table>
            </div>

             <div class="col-6">
                <table>
                    <tr>
                        <td>TravelAllowance:</td>
                         <td>
                           <asp:TextBox ID="tallow" runat="server"></asp:TextBox> 

                         </td>
                    </tr>
                    <tr>
                         <td>MedicalAllowance:</td>
                         <td>
                          <asp:TextBox ID="mallow" runat="server"></asp:TextBox> 
                         </td>
                    </tr>
                       <tr>
                        <td>WashingAllowance:</td>
                         <td>
                             <asp:TextBox ID="wallow" runat="server"></asp:TextBox> 
                         </td>
                    </tr>
                    <tr>
                         <td></td>
                         <td>
                             <asp:Button ID="gsalary" runat="server" Text="Generate Salary" class="btn btn-primary me-md-3 m-3" />
                         </td>
                    </tr>
                      
                </table>
            </div>
        </div>
    </div>
          </center>
    </section>
</asp:Content>

