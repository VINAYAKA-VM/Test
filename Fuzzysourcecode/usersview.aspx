<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usersview.aspx.cs" Inherits="usersview" %>

<%@ Register src="fuzzyheader.ascx" tagname="fuzzyheader" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Basavesvara Hospital Medicine Delivery System</title>
    <style type="text/css">
        .style1
        {
            height: 576px;
        }
    </style>
</head>
<body bgcolor="black">
    <form id="form1" runat="server">
    <div>
        <table align="center" width="950" bgcolor="#F2F2F2" >
        <tr><td colspan="5">
            BASAVESVARA MEDICAL COLLEGE AND HOSPITAL CHITRADURGA</td></tr>
        <tr><td></td><td></td><td>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" 
            Font-Size="Large" ForeColor="#676767" Text="User View"></asp:Label>
            </td><td></td><td>
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Verdana" OnClientClick="return click();" 
            Font-Size="Small" ForeColor="#CC3300" PostBackUrl="~/cloudsearch.aspx">Back</asp:LinkButton>
            </td></tr>
        <tr><td></td><td></td><td>
        <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Verdana" 
            Font-Size="Small" ForeColor="Black" Text="Select file name:"></asp:Label>
            </td><td>
                <asp:DropDownList ID="ddl_filename" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddl_filename_SelectedIndexChanged">
                </asp:DropDownList>
            </td><td></td></tr>
        <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td><td>&nbsp;</td><td colspan="2">
          <asp:GridView ID="gv_listofusers" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" Width="641px" >
            <RowStyle BackColor="#E3EAEB" />
            <Columns>
                <asp:BoundField DataField="usernam" HeaderText="User Name" ReadOnly="True" />
                <asp:BoundField DataField="email" HeaderText="Email Id" />
                <asp:BoundField DataField="contactno" HeaderText="Contact No." />
                <asp:BoundField DataField="city" HeaderText="City" />
                <asp:BoundField DataField="dat" HeaderText="Date" />
            </Columns>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#575757" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
             
                    </td><td>&nbsp;</td></tr>
        <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
        <tr><td class="style1"></td><td class="style1"></td><td class="style1"></td>
            <td class="style1"></td><td class="style1"></td></tr>
        <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></table>

    
    </div>
    </form>
</body>
</html>
