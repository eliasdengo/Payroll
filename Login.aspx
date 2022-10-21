<%@ Page Title="" Language="C#" MasterPageFile="~/Payroll.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
#addclass,#addemployee,#employeereport,#leave,#salary,#yearwisereport,#changepassword,#personalinfo,#adminlogin
{
 display:none;
}

</style>
      <center>
<section class="vh-80 " style="background-color: #9A616D; >
  <div class="container py-10 h-80">
    <div class="row d-flex justify-content-center align-items-center h-80">
      <div class="col col-xl-7">
        <div class="card" style="border-radius: 1rem; top: 0px; left: 36px;background-color: #ff6a00;">
          <div class="row g-0">
            <div class="col-md-12 col-lg-5   d-none d-md-block">
              <img src="imgs/wegagen_banknewlight.jpg"
                alt="login form" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-4 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">
                <form>
                    <table>
                        <tr>
                            <td>
                                 <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    <span class="h1 fw-bold mb-0">Logo</span>

                  </div>
                            </td>
                            <td>

                            </td>
                        </tr>

                          <tr>
                            <td>
                                 <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>
                            </td>

                              <td>

                              </td>
                        </tr>

                             <tr>
                            <td>
                                      <asp:RadioButton ID="admin" GroupName="permission" runat="server" Text="Admin" />  
                            </td>
                            <td>
                                      <asp:RadioButton ID="emp" GroupName="permission" runat="server" Text="Emp" />  
                            </td>
                        </tr>

                          <tr>
                            <td>
                                <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example17">Email Address</label>
                      <asp:TextBox ID="email" runat="server" class="form-control form-control-lg" ></asp:TextBox>
                  </div>
                            </td>
                              <td>

                              </td>
                        </tr>
                        <tr>
                            <td>
                                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example27">Password</label>
                      <asp:TextBox ID="password" runat="server" class="form-control form-control-lg" TextMode="password"></asp:TextBox>
                  </div>
                            </td>
                            <td>

                            </td>
                        </tr>

                        <tr>
                            <td>

                            </td>
                            <td>
                                  <div class="pt-1 mb-4">
                     <asp:Button ID="btnlogin" runat="server" Text="Login" class="btn btn-dark btn-lg btn-block" OnClick="btnlogin_Click" /> </div>
                            </td>
                        </tr>
                      
                    </table>
            
                    <asp:HyperLink ID="fp" runat="server" style="color: #fff;" class="small text-muted" NavigateUrl="~/ForgetPassword.aspx">Forgot password?</asp:HyperLink>
                  <p class="mb-5 pb-lg-2" style="color: #fff;">Don't have an account? <asp:HyperLink ID="rg" runat="server" style="color: #393f81;">Register here</asp:HyperLink></p>
                    <asp:HyperLink ID="term" runat="server"  class="small text-muted">Terms of use.</asp:HyperLink>
                      <asp:HyperLink ID="privacy" runat="server"  class="small text-muted">Privacy policy</asp:HyperLink>
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
  
    </center>
</asp:Content>

