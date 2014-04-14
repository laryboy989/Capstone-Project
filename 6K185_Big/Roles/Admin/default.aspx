<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="Roles_Admin_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        Employees Information</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="employeeID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="employeeID" HeaderText="ID" ReadOnly="True" SortExpression="employeeID" />
                <asp:BoundField DataField="employeeFN" HeaderText="First Name" SortExpression="employeeFN" />
                <asp:BoundField DataField="employeeLN" HeaderText="Last Name" SortExpression="employeeLN" />
                <asp:BoundField DataField="dateofBirth" HeaderText="Date of Birth" SortExpression="dateofBirth" />
                <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN" />
                <asp:BoundField DataField="phonenumber" HeaderText="Phone" SortExpression="phonenumber" />
                <asp:BoundField DataField="streetadress" HeaderText="Street Address" SortExpression="streetadress" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="postcode" HeaderText="PostCode" SortExpression="postcode" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" DeleteCommand="DELETE FROM [Big_employee] WHERE [employeeID] = @employeeID" InsertCommand="INSERT INTO [Big_employee] ([employeeID], [userID], [employeeFN], [employeeLN], [dateofBirth], [SSN], [phonenumber], [streetadress], [city], [state], [postcode]) VALUES (@employeeID, @userID, @employeeFN, @employeeLN, @dateofBirth, @SSN, @phonenumber, @streetadress, @city, @state, @postcode)" SelectCommand="SELECT * FROM [Big_employee]" UpdateCommand="UPDATE [Big_employee] SET [userID] = @userID, [employeeFN] = @employeeFN, [employeeLN] = @employeeLN, [dateofBirth] = @dateofBirth, [SSN] = @SSN, [phonenumber] = @phonenumber, [streetadress] = @streetadress, [city] = @city, [state] = @state, [postcode] = @postcode WHERE [employeeID] = @employeeID">
            <DeleteParameters>
                <asp:Parameter Name="employeeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="employeeID" Type="Int32" />
                <asp:Parameter Name="userID" Type="Object" />
                <asp:Parameter Name="employeeFN" Type="String" />
                <asp:Parameter Name="employeeLN" Type="String" />
                <asp:Parameter Name="dateofBirth" Type="String" />
                <asp:Parameter Name="SSN" Type="String" />
                <asp:Parameter Name="phonenumber" Type="String" />
                <asp:Parameter Name="streetadress" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="postcode" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="userID" Type="Object" />
                <asp:Parameter Name="employeeFN" Type="String" />
                <asp:Parameter Name="employeeLN" Type="String" />
                <asp:Parameter Name="dateofBirth" Type="String" />
                <asp:Parameter Name="SSN" Type="String" />
                <asp:Parameter Name="phonenumber" Type="String" />
                <asp:Parameter Name="streetadress" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="postcode" Type="String" />
                <asp:Parameter Name="employeeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

