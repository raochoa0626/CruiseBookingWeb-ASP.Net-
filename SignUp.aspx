<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="CruiseBookingWeb.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <div class="jumbotron">
        <h3>Member Registration </h3> 
    </div>
   
        <div>  
            <br />  
            <table style="width: 100%;">  
                <tr>  
                    <td >Username:</td>  
                    <td>  
                        <asp:TextBox ID="tbUsername" runat="server" ></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username cannot be blank" ControlToValidate="tbUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>  
                </tr>  
                <tr>  
                    <td >Password:</td>  
                    <td>  
                        <asp:TextBox ID="tbPwd" runat="server" TextMode="Password"></asp:TextBox>  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password cannot be blank" ControlToValidate="tbPwd" ForeColor="Red"></asp:RequiredFieldValidator>
                          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPwd" ControlToValidate="tbCnfrmPwd" ErrorMessage="Password and confirm password must be same" ForeColor="Red"></asp:CompareValidator> 
                    </td>  
                </tr>  
                <tr>  
                    <td >Confirm Password:</td>  
                    <td>  
                        <asp:TextBox ID="tbCnfrmPwd" runat="server" TextMode="Password" ></asp:TextBox>  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Confirm Password cannot be blank" ControlToValidate="tbCnfrmPwd" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>  
                </tr>  
                          <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style4">                  
                    <asp:Image ID="Image2" runat="server" Height="55px" ImageUrl="~/Captcha.aspx" Width="186px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style4">
                    <asp:Label runat="server" ID="lblCaptchaMessage" Font-Size="Small"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style4">
                    <asp:TextBox runat="server" ID="txtVerificationCode" placeholder="Enter captcha above"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>


                <tr>
                     <td > <br /></td>  
                     <td> 
                    <Label id="lblSuccess"  runat="server" style="color:green"></Label>
                         </td>
                </tr>

                 <tr>  
                    <td > </td>  
                    <td>  
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"  />  
                    </td>  
                </tr>
            </table>  
         
        </div>  
    

</asp:Content>
