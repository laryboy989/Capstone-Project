﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Littledetails.aspx.vb" Inherits="Roles_employee_Littledetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" DeleteCommand="DELETE FROM [Big_little] WHERE [userID] = @userID" InsertCommand="INSERT INTO [Big_little] ([userID], [littleFN], [littleLN], [city], [streetAddress], [state], [postcode], [phone], [emailaddress], [matchstatus], [availabletime], [interetactivities], [image]) VALUES (@userID, @littleFN, @littleLN, @city, @streetAddress, @state, @postcode, @phone, @emailaddress, @matchstatus, @availabletime, @interetactivities, @image)" SelectCommand="SELECT * FROM [Big_little]" UpdateCommand="UPDATE [Big_little] SET [littleFN] = @littleFN, [littleLN] = @littleLN, [city] = @city, [streetAddress] = @streetAddress, [state] = @state, [postcode] = @postcode, [phone] = @phone, [emailaddress] = @emailaddress, [matchstatus] = @matchstatus, [availabletime] = @availabletime, [interetactivities] = @interetactivities, [image] = @image WHERE [userID] = @userID">
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
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="userID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="20px" Width="455px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="userID" HeaderText="User ID" ReadOnly="True" SortExpression="userID" />
                <asp:BoundField DataField="littleFN" HeaderText="First Name" SortExpression="littleFN" />
                <asp:BoundField DataField="littleLN" HeaderText="Last Name" SortExpression="littleLN" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="streetAddress" HeaderText="Address" SortExpression="streetAddress" />
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                <asp:BoundField DataField="postcode" HeaderText="Postal Code" SortExpression="postcode" />
                <asp:BoundField DataField="phone" HeaderText="Phone Number" SortExpression="phone" />
                <asp:BoundField DataField="emailaddress" HeaderText="Email Address" SortExpression="emailaddress" />
                <asp:BoundField DataField="matchstatus" HeaderText="Match Status" SortExpression="matchstatus" />
                <asp:BoundField DataField="availabletime" HeaderText="Available Time" SortExpression="availabletime" />
                <asp:BoundField DataField="interetactivities" HeaderText="Interactivities" SortExpression="interetactivities" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    </form>
</body>
</html>
