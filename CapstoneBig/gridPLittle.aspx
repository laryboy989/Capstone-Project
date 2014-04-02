<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridPLittle.aspx.vb" Inherits="gridPLittle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_pVol %>" SelectCommand="SELECT * FROM [pLittle]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pLittleID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="pLittleID" HeaderText="Prospective Little UserName" InsertVisible="False" ReadOnly="True" SortExpression="pLittleID" />
                <asp:BoundField DataField="pLittleName" HeaderText="Prospective Little Password" SortExpression="pLittleName" />
                <asp:BoundField DataField="pLittleAddress" HeaderText="Prospective Little First Name" SortExpression="pLittleAddress" />
                <asp:BoundField DataField="pLittleNumber" HeaderText="Prospective Little Last Name" SortExpression="pLittleNumber" />
                <asp:BoundField DataField="pLittleEmail" HeaderText="Prospective Little Location" SortExpression="pLittleEmail" />
                <asp:BoundField DataField="pLittleDOB" HeaderText="Prospective Little Zip Code" SortExpression="pLittleDOB" />
                <asp:BoundField DataField="pLittleID" HeaderText="Prospective Little Phone Number" InsertVisible="False" ReadOnly="True" SortExpression="pLittleID" />
                <asp:BoundField DataField="pLittleName" HeaderText="Prospective Little Email" SortExpression="pLittleName" />
                <asp:BoundField DataField="pLittleAddress" HeaderText="Prospective Little DOB" SortExpression="pLittleAddress" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
