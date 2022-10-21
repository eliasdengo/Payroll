<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true" CodeFile="MysalaryReport.aspx.cs" Inherits="MysalaryReport" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
#addclass,#addemployee,#employeereport,#adminlogin
{
 display:none;
}

</style>
 <div class="container">
        <div class="row">
            <div class="col-12">
                <center>
                      <table>
                    <tr>
                        <td>Date:</td>
                        <td>
                            <asp:TextBox ID="txtdate" runat="server" TextMode="Date" Format="yyyy-MM-DD"></asp:TextBox>

                        </td>
                        
                        <td>
         
                            <asp:Button ID="select" runat="server" Text="Select" autopostback="true" class="btn btn-primary me-md-3 m-3" AutoGenerateSelectButton="True" OnClick="select_Click" ></asp:Button>
                        </td>
                    </tr>
                </table>
                </center>
              
            </div>
        </div>
    </div>
    <center>
      <div class="container">
        <div class="row">
            <div class="col-12">
                <asp:GridView ID="GridView1" runat="server"  AutoGenerateSelectButton="true" ></asp:GridView>
              
            </div>
        </div>
    </div>
   </center>
     <center>
      <div class="container">
        <div class="row">
            <div class="col-12">
               <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true"></CR:CrystalReportViewer>
            </div>
        </div>
    </div>
   </center>
</asp:Content>

