<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Littletable.aspx.vb" Inherits="Roles_employee_Littletable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="userID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" Height="302px" Width="753px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="littleFN" HeaderText="First Name" SortExpression="littleFN" />
            <asp:BoundField DataField="littleLN" HeaderText="Last Name" SortExpression="littleLN" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="streetAddress" HeaderText="Street Address" SortExpression="streetAddress" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="postcode" HeaderText="Postal Code" SortExpression="postcode" />
            <asp:BoundField DataField="phone" HeaderText="Phone Number" SortExpression="phone" />
            <asp:HyperLinkField DataNavigateUrlFields="userID" DataNavigateUrlFormatString="Littledetails.aspx?userID={0}" Text="View Details" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" SelectCommand="SELECT * FROM [Big_little]" DeleteCommand="DELETE FROM [Big_little] WHERE [userID] = @userID" InsertCommand="INSERT INTO [Big_little] ([userID], [littleFN], [littleLN], [city], [streetAddress], [state], [postcode], [phone], [emailaddress], [matchstatus], [availabletime], [interetactivities], [image]) VALUES (@userID, @littleFN, @littleLN, @city, @streetAddress, @state, @postcode, @phone, @emailaddress, @matchstatus, @availabletime, @interetactivities, @image)" UpdateCommand="UPDATE [Big_little] SET [littleFN] = @littleFN, [littleLN] = @littleLN, [city] = @city, [streetAddress] = @streetAddress, [state] = @state, [postcode] = @postcode, [phone] = @phone, [emailaddress] = @emailaddress, [matchstatus] = @matchstatus, [availabletime] = @availabletime, [interetactivities] = @interetactivities, [image] = @image WHERE [userID] = @userID">
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

