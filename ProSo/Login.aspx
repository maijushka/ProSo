<%@ Page Title="Login" Language="vb" AutoEventWireup="false" MasterPageFile="~/ProSoMasterPage.Master" CodeBehind="Login.aspx.vb" Inherits="ProSo.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <table>
        <tr>
            <td>Username: </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUsername" Display="Dynamic" SetFocusOnError="True">Please enter Username</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password: </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td> 
            <td>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter Password" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>

            </td>  
        </tr>
    </table>
    <asp:Button ID="btnLogin" runat="server" Text="Login" />
</asp:Content>
