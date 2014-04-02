<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridLittle.aspx.vb" Inherits="gridLittle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_pVol %>" SelectCommand="SELECT * FROM [little]"></asp:SqlDataSource>
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="littleID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="littleID" HeaderText="Little UserName" InsertVisible="False" ReadOnly="True" SortExpression="littleID" />
                <asp:BoundField DataField="littleName" HeaderText="Little Password" SortExpression="littleName" />
                <asp:BoundField DataField="littleAddress" HeaderText="Little First Name" SortExpression="littleAddress" />
                <asp:BoundField DataField="littleNumber" HeaderText="Little Last Name" SortExpression="littleNumber" />
                <asp:BoundField DataField="littleEmail" HeaderText="Little Location" SortExpression="littleEmail" />
                <asp:BoundField DataField="littleDOB" HeaderText="Little Zip Code" SortExpression="littleDOB" />
                <asp:BoundField DataField="littleID" HeaderText="Little Phone Number" InsertVisible="False" ReadOnly="True" SortExpression="littleID" />
                <asp:BoundField DataField="littleName" HeaderText="Little Email" SortExpression="littleName" />
                <asp:BoundField DataField="littleAddress" HeaderText="Little DOB" SortExpression="littleAddress" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
