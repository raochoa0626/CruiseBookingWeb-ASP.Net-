<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="CruiseBookingWeb.Staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
        <h3>Staff Registration </h3> 
    </div>
   
        <div>  
            <br />  
            <table style="width: 100%;">  
                <tr>  
                    <td >Username:</td>  
                    <td>  
                        <asp:TextBox ID="tbUsername" runat="server" ></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username cannot be blank" ControlToValidate="tbUsername" ForeColor="Red" ValidationGroup="staff"></asp:RequiredFieldValidator>
                    </td>  
                </tr>  
                <tr>  
                    <td >Password:</td>  
                    <td>  
                        <asp:TextBox ID="tbPwd" runat="server" TextMode="Password"></asp:TextBox>  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password cannot be blank" ControlToValidate="tbPwd" ForeColor="Red" ValidationGroup="staff"></asp:RequiredFieldValidator>
                          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPwd" ControlToValidate="tbCnfrmPwd" ErrorMessage="Password and confirm password must be same" ForeColor="Red" ValidationGroup="staff"></asp:CompareValidator> 
                    </td>  
                </tr>  
                <tr>  
                    <td >Confirm Password:</td>  
                    <td>  
                        <asp:TextBox ID="tbCnfrmPwd" runat="server" TextMode="Password" ></asp:TextBox>  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Confirm Password cannot be blank" ControlToValidate="tbCnfrmPwd" ForeColor="Red" ValidationGroup="staff"></asp:RequiredFieldValidator>

                    </td>  
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
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="staff" />  
                    </td>  
                </tr>
            </table>  
         
        </div>  
    
</asp:Content>
