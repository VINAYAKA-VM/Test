<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userdetails.aspx.cs" Inherits="userdetails" %>
<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<body>
    <mobile:Form id="Form1" runat="server">
        <mobile:Link ID="link2" Runat="server" Font-Bold="True" Font-Size="Small" Font-Name="verdana" ForeColor="#006600" NavigateUrl="~/userlist.aspx">View users</mobile:Link><br />

    <mobile:Label ID="Label2" Font-Bold="True" Font-Size="Small" Font-Name="verdana" Runat="server">Enter User name:</mobile:Label>
<mobile:TextBox ID="text1" Runat="server"></mobile:TextBox>
<mobile:Command ID="submit" Text="Go" OnClick="submit_click"  Runat="server"></mobile:Command>
    </mobile:Form>
   
</body>
</html>
