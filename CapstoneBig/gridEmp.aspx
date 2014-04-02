<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridEmp.aspx.vb" Inherits="gridEmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_pVol %>" SelectCommand="SELECT * FROM [emp]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="empID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="empID" HeaderText="Employee UserName" InsertVisible="False" ReadOnly="True" SortExpression="empID" />
                <asp:BoundField DataField="empName" HeaderText="Employee Password" SortExpression="empName" />
                <asp:BoundField DataField="empAddress" HeaderText="Employee First Name" SortExpression="empAddress" />
                <asp:BoundField DataField="empNumber" HeaderText="Employee Last Name" SortExpression="empNumber" />
                <asp:BoundField DataField="empEmail" HeaderText="Employee Location" SortExpression="empEmail" />
                <asp:BoundField DataField="empDOB" HeaderText="Employee Zip Code" SortExpression="empDOB" />
                <asp:BoundField DataField="empID" HeaderText="Employee Phone Number" InsertVisible="False" ReadOnly="True" SortExpression="empID" />
                <asp:BoundField DataField="empName" HeaderText="Employee Email" SortExpression="empName" />
                <asp:BoundField DataField="empAddress" HeaderText="Employee DOB" SortExpression="empAddress" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
