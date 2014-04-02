<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridVol.aspx.vb" Inherits="gridVol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_pVol %>" SelectCommand="SELECT * FROM [vol]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="volID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="volID" HeaderText="Volunteer UserName" InsertVisible="False" ReadOnly="True" SortExpression="volID" />
                <asp:BoundField DataField="volName" HeaderText="Volunteer Password" SortExpression="volName" />
                <asp:BoundField DataField="volAddress" HeaderText="Volunteer First Name" SortExpression="volAddress" />
                <asp:BoundField DataField="volNumber" HeaderText="Volunteer Last Name" SortExpression="volNumber" />
                <asp:BoundField DataField="volEmail" HeaderText="Volunteer Location" SortExpression="volEmail" />
                <asp:BoundField DataField="volDOB" HeaderText="Volunteer Zip Code" SortExpression="volDOB" />
                <asp:BoundField DataField="volID" HeaderText="Volunteer Email" InsertVisible="False" ReadOnly="True" SortExpression="volID" />
                <asp:BoundField DataField="volName" HeaderText="Volunteer DOB" SortExpression="volName" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
