<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffLogin.aspx.cs" Inherits="CruiseBookingWeb.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <div class="jumbotron">
        <h3>Staff Login </h3> 
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
                    </td>  
                </tr>  
                
                <tr>
                     <td > <br /></td>  
                     <td>  
                          <Label id="lblError"  runat="server" style="color:red"></Label>
                         </td>
                </tr>

                 <tr>  
                    <td > </td>  
                    <td>  
                        <asp:Button ID="btnSubmit" runat="server" Text="Login" OnClick="btnSubmit_Click"  />  
                    </td>  
                </tr>
            </table>  
         
        </div>  
</asp:Content>
