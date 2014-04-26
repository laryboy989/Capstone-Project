<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Littletable.aspx.vb" Inherits="Roles_employee_Littletable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" Height="302px" Width="782px" DataKeyNames="littleID">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
            <asp:BoundField DataField="littleFN" HeaderText="First Name" SortExpression="littleFN" />
            <asp:BoundField DataField="littleLN" HeaderText="Last Name" SortExpression="littleLN" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="streetAddress" HeaderText="Street Address" SortExpression="streetAddress" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="postcode" HeaderText="Post Code" SortExpression="postcode" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="emailaddress" HeaderText="Email Address" SortExpression="emailaddress" />
            <asp:BoundField DataField="matchstatus" HeaderText="Match Status" SortExpression="matchstatus" />
            <asp:BoundField DataField="availabletime" HeaderText="Available Time" SortExpression="availabletime" />
            <asp:BoundField DataField="faractivities" HeaderText="Favorite Activities" SortExpression="faractivities" />
            <asp:BoundField DataField="sport" HeaderText="Interested Sport" SortExpression="sport" />
            <asp:BoundField DataField="personality" HeaderText="Personalities" SortExpression="personality" />
            <asp:HyperLinkField DataNavigateUrlFields="littleId" DataNavigateUrlFormatString="littledetails.aspx?littleId={0}" Text="Details" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" SelectCommand="SELECT aspnet_Roles.RoleName, aspnet_Users.UserId, aspnet_Users.UserName, Big_little.littleFN, Big_little.littleLN, Big_little.city, Big_little.streetAddress, Big_little.state, Big_little.postcode, Big_little.phone, Big_little.emailaddress, Big_little.matchstatus, Big_little.availabletime, Big_little.interetactivities, Big_little.image, Big_little.faractivities, Big_little.personality, Big_little.schoolsubject, Big_little.sport, Big_little.littleID FROM aspnet_UsersInRoles INNER JOIN aspnet_Roles ON aspnet_UsersInRoles.RoleId = aspnet_Roles.RoleId INNER JOIN aspnet_Users ON aspnet_UsersInRoles.UserId = aspnet_Users.UserId INNER JOIN Big_little ON aspnet_Users.UserId = Big_little.userID" DeleteCommand="DELETE FROM [Big_little] WHERE [userID] = @userID" InsertCommand="INSERT INTO [Big_little] ([userID], [littleFN], [littleLN], [city], [streetAddress], [state], [postcode], [phone], [emailaddress], [matchstatus], [availabletime], [interetactivities], [image]) VALUES (@userID, @littleFN, @littleLN, @city, @streetAddress, @state, @postcode, @phone, @emailaddress, @matchstatus, @availabletime, @interetactivities, @image)" UpdateCommand="UPDATE [Big_little] SET [littleFN] = @littleFN, [littleLN] = @littleLN, [city] = @city, [streetAddress] = @streetAddress, [state] = @state, [postcode] = @postcode, [phone] = @phone, [emailaddress] = @emailaddress, [matchstatus] = @matchstatus, [availabletime] = @availabletime, [interetactivities] = @interetactivities, [image] = @image WHERE [userID] = @userID">
        <DeleteParameters>
            <asp:Parameter Name="userID" Type="Object" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userID" Type="Object" />
            <asp:Parameter Name="littleFN" Type="String" />
            <asp:Parameter Name="littleLN" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="streetAddress" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="postcode" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="emailaddress" Type="String" />
            <asp:Parameter Name="matchstatus" Type="String" />
            <asp:Parameter Name="availabletime" Type="String" />
            <asp:Parameter Name="interetactivities" Type="String" />
            <asp:Parameter Name="image" Type="Object" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="littleFN" Type="String" />
            <asp:Parameter Name="littleLN" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="streetAddress" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="postcode" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="emailaddress" Type="String" />
            <asp:Parameter Name="matchstatus" Type="String" />
            <asp:Parameter Name="availabletime" Type="String" />
            <asp:Parameter Name="interetactivities" Type="String" />
            <asp:Parameter Name="image" Type="Object" />
            <asp:Parameter Name="userID" Type="Object" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

