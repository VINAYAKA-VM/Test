<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userlist.aspx.cs" Inherits="userlist" %>
<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<body>
    <mobile:Form id="Form1" runat="server">
<mobile:List ID="list1" Runat="server"></mobile:List>
<mobile:Link ID="link1" Runat="server" NavigateUrl="~/userdetails.aspx">Back</mobile:Link>
    </mobile:Form>
</body>
</html>
