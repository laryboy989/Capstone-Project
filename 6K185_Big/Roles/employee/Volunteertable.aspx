<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Volunteertable.aspx.vb" Inherits="Roles_employee_Volunteertable"%>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" SelectCommand="SELECT aspnet_Roles.RoleName, Big_volunteer.userID, Big_volunteer.volunteerFN, Big_volunteer.volunteerLN, Big_volunteer.dob, Big_volunteer.ssn, Big_volunteer.emailadress, Big_volunteer.matchstatus, Big_volunteer.livingarea, Big_volunteer.availabletime, Big_volunteer.backgroundcheckstatus, Big_volunteer.streetaddress, Big_volunteer.city, Big_volunteer.state, Big_volunteer.postcode, Big_volunteer.faractivities, Big_volunteer.personality, Big_volunteer.schoolsubject, Big_volunteer.sport, Big_volunteer.phone, aspnet_Users.UserName, Big_volunteer.VolunteerID FROM aspnet_Users INNER JOIN aspnet_UsersInRoles ON aspnet_Users.UserId = aspnet_UsersInRoles.UserId INNER JOIN aspnet_Roles ON aspnet_UsersInRoles.RoleId = aspnet_Roles.RoleId INNER JOIN Big_volunteer ON aspnet_Users.UserId = Big_volunteer.userID" DeleteCommand="DELETE FROM [Big_volunteer] WHERE [userID] = @userID" InsertCommand="INSERT INTO [Big_volunteer] ([userID], [volunteerFN], [volunteerLN], [dob], [ssn], [emailadress], [matchstatus], [livingarea], [availabletime], [backgroundcheckstatus], [streetaddress], [city], [state], [postcode], [faractivities], [personality], [schoolsubject], [sport], [phone]) VALUES (@userID, @volunteerFN, @volunteerLN, @dob, @ssn, @emailadress, @matchstatus, @livingarea, @availabletime, @backgroundcheckstatus, @streetaddress, @city, @state, @postcode, @faractivities, @personality, @schoolsubject, @sport, @phone)" UpdateCommand="UPDATE [Big_volunteer] SET [volunteerFN] = @volunteerFN, [volunteerLN] = @volunteerLN, [dob] = @dob, [ssn] = @ssn, [emailadress] = @emailadress, [matchstatus] = @matchstatus, [livingarea] = @livingarea, [availabletime] = @availabletime, [backgroundcheckstatus] = @backgroundcheckstatus, [streetaddress] = @streetaddress, [city] = @city, [state] = @state, [postcode] = @postcode, [faractivities] = @faractivities, [personality] = @personality, [schoolsubject] = @schoolsubject, [sport] = @sport, [phone] = @phone WHERE [userID] = @userID">
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
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="userID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="304px" Width="818px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
            <asp:BoundField DataField="volunteerFN" HeaderText="First Name" SortExpression="volunteerFN" />
            <asp:BoundField DataField="volunteerLN" HeaderText="Last Name" SortExpression="volunteerLN" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="emailadress" HeaderText="Email Address" SortExpression="emailadress" />
            <asp:BoundField DataField="streetaddress" HeaderText="Street Address" SortExpression="streetaddress" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="postcode" HeaderText="Post Code" SortExpression="postcode" />
            <asp:BoundField DataField="matchstatus" HeaderText="Match Status" SortExpression="matchstatus" />
            <asp:BoundField DataField="availabletime" HeaderText="Available Time" SortExpression="availabletime" />
            <asp:BoundField DataField="faractivities" HeaderText="Favoriate Activities" SortExpression="faractivities" />
            <asp:BoundField DataField="schoolsubject" HeaderText="School Subject" SortExpression="schoolsubject" />
            <asp:BoundField DataField="sport" HeaderText="Favoriate Sport" SortExpression="sport" />
            <asp:BoundField DataField="personality" HeaderText="Personality" SortExpression="personality" />
            <asp:HyperLinkField DataNavigateUrlFields="VolunteerId" DataNavigateUrlFormatString="Volunteerdetails.aspx?volunteerid={0}" Text="Details" />
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
</asp:Content>

