<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Volunteerdetails.aspx.vb" Inherits="Roles_employee_Volunteerdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
         <div class="page">
        <div class="header">
            <div class="title">
       
     <h1>Volunteer Information &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        </h1>
         </div>
    <br />
    <br />
    <br />
    <br />
    <div>
    
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" DeleteCommand="DELETE FROM [Big_volunteer] WHERE [userID] = @userID" InsertCommand="INSERT INTO [Big_volunteer] ([userID], [volunteerFN], [volunteerLN], [dob], [ssn], [emailadress], [matchstatus], [livingarea], [availabletime], [backgroundcheckstatus], [streetaddress], [city], [state], [postcode], [faractivities], [personality], [schoolsubject], [sport], [phone]) VALUES (@userID, @volunteerFN, @volunteerLN, @dob, @ssn, @emailadress, @matchstatus, @livingarea, @availabletime, @backgroundcheckstatus, @streetaddress, @city, @state, @postcode, @faractivities, @personality, @schoolsubject, @sport, @phone)" SelectCommand="SELECT * FROM [Big_volunteer]" UpdateCommand="UPDATE [Big_volunteer] SET [volunteerFN] = @volunteerFN, [volunteerLN] = @volunteerLN, [dob] = @dob, [ssn] = @ssn, [emailadress] = @emailadress, [matchstatus] = @matchstatus, [livingarea] = @livingarea, [availabletime] = @availabletime, [backgroundcheckstatus] = @backgroundcheckstatus, [streetaddress] = @streetaddress, [city] = @city, [state] = @state, [postcode] = @postcode, [faractivities] = @faractivities, [personality] = @personality, [schoolsubject] = @schoolsubject, [sport] = @sport, [phone] = @phone WHERE [userID] = @userID">
            <DeleteParameters>
                <asp:Parameter Name="userID" Type="Object" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userID" Type="Object" />
                <asp:Parameter Name="volunteerFN" Type="String" />
                <asp:Parameter Name="volunteerLN" Type="String" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="ssn" Type="String" />
                <asp:Parameter Name="emailadress" Type="String" />
                <asp:Parameter Name="matchstatus" Type="String" />
                <asp:Parameter Name="livingarea" Type="String" />
                <asp:Parameter Name="availabletime" Type="String" />
                <asp:Parameter Name="backgroundcheckstatus" Type="String" />
                <asp:Parameter Name="streetaddress" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="postcode" Type="String" />
                <asp:Parameter Name="faractivities" Type="String" />
                <asp:Parameter Name="personality" Type="String" />
                <asp:Parameter Name="schoolsubject" Type="String" />
                <asp:Parameter Name="sport" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="volunteerFN" Type="String" />
                <asp:Parameter Name="volunteerLN" Type="String" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="ssn" Type="String" />
                <asp:Parameter Name="emailadress" Type="String" />
                <asp:Parameter Name="matchstatus" Type="String" />
                <asp:Parameter Name="livingarea" Type="String" />
                <asp:Parameter Name="availabletime" Type="String" />
                <asp:Parameter Name="backgroundcheckstatus" Type="String" />
                <asp:Parameter Name="streetaddress" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="postcode" Type="String" />
                <asp:Parameter Name="faractivities" Type="String" />
                <asp:Parameter Name="personality" Type="String" />
                <asp:Parameter Name="schoolsubject" Type="String" />
                <asp:Parameter Name="sport" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="userID" Type="Object" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="userID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="41px" Width="589px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="userID" HeaderText="User ID" ReadOnly="True" SortExpression="userID" />
                <asp:BoundField DataField="volunteerFN" HeaderText="First Name" SortExpression="volunteerFN" />
                <asp:BoundField DataField="volunteerLN" HeaderText="Last Name" SortExpression="volunteerLN" />
                <asp:BoundField DataField="dob" HeaderText="Date Of Birth" SortExpression="dob" />
                <asp:BoundField DataField="ssn" HeaderText="Social Security Number" SortExpression="ssn" />
                <asp:BoundField DataField="emailadress" HeaderText="Email Address" SortExpression="emailadress" />
                <asp:BoundField DataField="matchstatus" HeaderText="Match Status" SortExpression="matchstatus" />
                <asp:BoundField DataField="livingarea" HeaderText="Living Area" SortExpression="livingarea" />
                <asp:BoundField DataField="availabletime" HeaderText="Available Time" SortExpression="availabletime" />
                <asp:BoundField DataField="backgroundcheckstatus" HeaderText="Background Check Status" SortExpression="backgroundcheckstatus" />
                <asp:BoundField DataField="streetaddress" HeaderText="Street Address" SortExpression="streetaddress" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                <asp:BoundField DataField="postcode" HeaderText="Postal Code" SortExpression="postcode" />
                <asp:BoundField DataField="faractivities" HeaderText="Favorite Activities" SortExpression="faractivities" />
                <asp:BoundField DataField="personality" HeaderText="Personality" SortExpression="personality" />
                <asp:BoundField DataField="schoolsubject" HeaderText="Favorite Subject" SortExpression="schoolsubject" />
                <asp:BoundField DataField="sport" HeaderText="Favorite Sport" SortExpression="sport" />
                <asp:BoundField DataField="phone" HeaderText="Phone Number" SortExpression="phone" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    <h3><a href="Volunteertable.aspx" >Back To Volunteers</a></h3>
    </form>
</body>
</html>
