<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment1_WEB.Login" %>

<asp:Content ID="Content3" ContentPlaceHolderID="HomePlaceHolder" runat="server">
    <table class="loginTable">
        <tr>
            <td>
                Email
            </td>            
        </tr>
        <tr>
            <td>
                <asp:TextBox CssClass="txtField" ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>                
            </td>
            <td class="validator">
                <asp:RequiredFieldValidator CssClass="errorMessage" ErrorMessage="Please enter a email" ControlToValidate="txtEmail" Text="*" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Password
            </td>  
        </tr>
         <tr>
            <td>
                <asp:TextBox CssClass="txtField" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
             <td class="validator">
                <asp:RequiredFieldValidator CssClass="errorMessage" ErrorMessage="Please enter a password" ControlToValidate="txtPassword" Text="*" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:ValidationSummary CssClass="errorMessage" ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="text-align:center">
                <asp:Label CssClass="errorMessage" ID="lblErrorMessage" runat="server" Text="" Visible="false"></asp:Label>
                 <a ID="linkBtnResetPassword" href="ResetPassword.aspx" runat="server">forgot your password?</a>
                
            </td>
        </tr>
         <tr>
            <td colspan="2">
                <asp:Button CssClass="button" ID="btnLogIn" runat="server" Text="Log in" OnClick="login" />
            </td>
        </tr>
    </table>
</asp:Content>

