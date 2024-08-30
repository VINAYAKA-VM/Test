<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userinmobile.aspx.cs" Inherits="userinmobile" %>
<%@ Register TagPrefix="mobile" Namespace="System.Web.UI.MobileControls" Assembly="System.Web.Mobile" %>

<script runat="server">
    
</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
<body>
    <mobile:Form id="Form1" runat="server">
<mobile:Label ID="Label2" Font-Bold="True" Font-Size="Small" Font-Name="verdana" Runat="server">Enter file name:</mobile:Label>
<mobile:TextBox ID="txt" Runat="server"></mobile:TextBox>
<mobile:Command ID="btn" Runat="server" Text="Submit" OnClick="btn_click"></mobile:Command>
<mobile:List ID="list1" Runat="server"></mobile:List>
<mobile:Panel ID="panel1" Runat="server"></mobile:Panel>

    </mobile:Form>
</body>
</html>
