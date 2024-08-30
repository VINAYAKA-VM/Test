<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<body>
    <mobile:Form id="Form1" runat="server">
    <mobile:Label ID="Label2" Runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red">Run this page on mobile</mobile:Label><br />
<mobile:Label ID="nam" Runat="server" Font-Bold="True">Username:</mobile:Label><mobile:TextBox ID="text1" Runat="server"></mobile:TextBox>
<mobile:Label ID="Label1" Runat="server" Font-Bold="True">Password</mobile:Label><mobile:TextBox ID="text2" Runat="server" Password="True"></mobile:TextBox>
<mobile:Command ID="btn" Runat="server" Text="Login" OnClick="btn_click"></mobile:Command>
    </mobile:Form>
</body>
</html>
