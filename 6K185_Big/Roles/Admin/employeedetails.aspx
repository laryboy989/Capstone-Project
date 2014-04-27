<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="282px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="employeeID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="employeeID" HeaderText="Employee ID" ReadOnly="True" SortExpression="employeeID" />
            <asp:BoundField DataField="employeeFN" HeaderText="First Name" SortExpression="employeeFN" />
            <asp:BoundField DataField="employeeLN" HeaderText="Last Name" SortExpression="employeeLN" />
            <asp:BoundField DataField="dateofBirth" HeaderText="Date Of Birth" SortExpression="dateofBirth" />
            <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN" />
            <asp:BoundField DataField="phonenumber" HeaderText="Phone Number" SortExpression="phonenumber" />
            <asp:BoundField DataField="streetadress" HeaderText="Street Address" SortExpression="streetadress" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="postcode" HeaderText="Post Code" SortExpression="postcode" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" DeleteCommand="DELETE FROM [Big_employee] WHERE [employeeID] = @employeeID" InsertCommand="INSERT INTO [Big_employee] ([employeeID], [userID], [employeeFN], [employeeLN], [dateofBirth], [SSN], [phonenumber], [streetadress], [city], [state], [postcode]) VALUES (@employeeID, @userID, @employeeFN, @employeeLN, @dateofBirth, @SSN, @phonenumber, @streetadress, @city, @state, @postcode)" SelectCommand="SELECT * FROM [Big_employee] WHERE ([employeeID] = @employeeID)" UpdateCommand="UPDATE [Big_employee] SET [userID] = @userID, [employeeFN] = @employeeFN, [employeeLN] = @employeeLN, [dateofBirth] = @dateofBirth, [SSN] = @SSN, [phonenumber] = @phonenumber, [streetadress] = @streetadress, [city] = @city, [state] = @state, [postcode] = @postcode WHERE [employeeID] = @employeeID">
        <DeleteParameters>
            <asp:Parameter Name="employeeID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="employeeID" Type="Int32" />
            <asp:Parameter Name="userID"  />
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
        <SelectParameters>
            <asp:QueryStringParameter Name="employeeID" QueryStringField="employeeID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="userID"  />
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

</asp:Content>

