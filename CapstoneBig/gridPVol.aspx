<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridPVol.aspx.vb" Inherits="gridPVol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_pVol %>" SelectCommand="SELECT * FROM [pVol]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pVolID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="pVolID" HeaderText="Prospective Vol UserName" InsertVisible="False" ReadOnly="True" SortExpression="pVolID" />
                <asp:BoundField DataField="pVolName" HeaderText="Prospective Vol Password" SortExpression="pVolName" />
                <asp:BoundField DataField="pVolAddress" HeaderText="Prospective Vol First Name" SortExpression="pVolAddress" />
                <asp:BoundField DataField="pVolNumber" HeaderText="Prospective Vol Last Name" SortExpression="pVolNumber" />
                <asp:BoundField DataField="pVolEmail" HeaderText="Prospective Vol Location" SortExpression="pVolEmail" />
                <asp:BoundField DataField="pVolDOB" HeaderText="Prospective Vol Zip Code" SortExpression="pVolDOB" />
                <asp:BoundField DataField="pVolID" HeaderText="Prospective Vol Phone Number" InsertVisible="False" ReadOnly="True" SortExpression="pVolID" />
                <asp:BoundField DataField="pVolName" HeaderText="Prospective Vol Email" SortExpression="pVolName" />
                <asp:BoundField DataField="pVolAddress" HeaderText="Prospective Vol DOB" SortExpression="pVolAddress" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
