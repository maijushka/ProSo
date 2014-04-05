<%@ Page Title="Welcome to ProSo" Language="vb" AutoEventWireup="false" MasterPageFile="~/ProSoMasterPage.Master" CodeBehind="User.aspx.vb" Inherits="ProSo.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Welcome to ProSo</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:Label ID="lblWelcome" runat="server" Text="Welcome "></asp:Label>
    <br />
    <asp:Button ID="btnLogout" runat="server" Text="Logout" />
</asp:Content>
