<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Assignment1_WEB.Register" %>

<asp:Content ID="Content3" ContentPlaceHolderID="HomePlaceHolder" runat="server">
    <table class="loginTable">
        <tr>
            <td colspan="2">Username</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox CssClass="txtField" ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
            <td class="validator">
                <asp:RequiredFieldValidator CssClass="errorMessage" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a name" Text="*" ControlToValidate="txtFirstName" ></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td>
                E-mail
            </td>
        </tr>
        <tr>
             <td>
                <asp:TextBox CssClass="txtField"  ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
             <td class="validator">
                <asp:RequiredFieldValidator CssClass="errorMessage" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a email" Text="*" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                Password
            </td>
        </tr>
        <tr>
             <td>
                <asp:TextBox CssClass="txtField"  ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
             <td class="validator">
                <asp:RequiredFieldValidator CssClass="errorMessage" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter a password" Text="*" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator CssClass="errorMessage" ID="RegularExpressionValidator1" runat="server" ErrorMessage="password too weak" Text="*" ControlToValidate="txtPassword" ValidationExpression="^[\s\S]{8,}$"></asp:RegularExpressionValidator>
             </td>
            
        </tr>
         <tr>
            <td>
                Confirm password
            </td>
        </tr>
        <tr>
             <td>
                <asp:TextBox CssClass="txtField"  ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
             <td class="validator">
                <asp:RequiredFieldValidator CssClass="errorMessage" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please confirm the password" Text="*" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
                <asp:CompareValidator CssClass="errorMessage" ID="CompareValidator1" runat="server" ErrorMessage="Password does not match" Text="*" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ></asp:CompareValidator>
             </td>
        </tr>

        <tr>
            <td colspan="2">
                <asp:ValidationSummary CssClass="errorMessage" ID="registerValidationSummary" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align:center">
                <asp:Label CssClass="errorMessage" ID="lblErrorMessage" runat="server" Text="" Visible="false"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button CssClass="button" ID="Button1" runat="server" Text="Create your account" OnClick="btnRegisterClick" />
            </td>
        </tr>
    </table>
</asp:Content>

