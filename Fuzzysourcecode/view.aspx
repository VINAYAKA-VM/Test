<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="view" %>
<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<body>
    <mobile:Form id="Form1" runat="server">
   <mobile:Label ID="nam" Runat="server" Font-Bold="True">Name:</mobile:Label><mobile:Label ID="unam" Runat="server"></mobile:Label>
      <mobile:Label ID="Label1" Font-Bold="True" Runat="server">Contact No.:</mobile:Label><mobile:Label ID="con" Runat="server"></mobile:Label>
   <mobile:Label ID="Label3" Font-Bold="True" Runat="server">Email Id:</mobile:Label><mobile:Label ID="email" Runat="server"></mobile:Label>
<mobile:Link ID="link3" Runat="server" NavigateUrl="~/login.aspx">Log Out</mobile:Link>

    </mobile:Form>
</body>
</html>
