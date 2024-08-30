<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mobile.aspx.cs" Inherits="mobile" %>
<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<body>
    <mobile:Form id="Form1" runat="server">
    <mobile:Link ID="link2" Runat="server" Font-Bold="True" Font-Size="Small" Font-Name="verdana" ForeColor="#006600" NavigateUrl="~/userdetails.aspx">View user details</mobile:Link><br />
    <mobile:Label ID="Label2" Font-Bold="True" Font-Size="Small" Font-Name="verdana" Runat="server">List of Users:</mobile:Label><br />

<mobile:Panel ID="panel1" Runat="server"></mobile:Panel>
    </mobile:Form>
</body>
</html>
