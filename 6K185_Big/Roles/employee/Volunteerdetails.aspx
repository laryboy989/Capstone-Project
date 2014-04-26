<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="volunteerdetails.aspx.vb" Inherits="Roles_employee_volunteerdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
       
     <h1>Volunteer Information
        </h1>
    

        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" DeleteCommand="DELETE FROM [Big_volunteer] WHERE [userID] = @userID" InsertCommand="INSERT INTO [Big_volunteer] ([userID], [volunteerFN], [volunteerLN], [dob], [ssn], [emailadress], [matchstatus], [livingarea], [availabletime], [backgroundcheckstatus], [streetaddress], [city], [state], [postcode], [faractivities], [personality], [schoolsubject], [sport], [phone]) VALUES (@userID, @volunteerFN, @volunteerLN, @dob, @ssn, @emailadress, @matchstatus, @livingarea, @availabletime, @backgroundcheckstatus, @streetaddress, @city, @state, @postcode, @faractivities, @personality, @schoolsubject, @sport, @phone)" SelectCommand="SELECT aspnet_Users.UserName, Big_volunteer.volunteerFN, Big_volunteer.volunteerLN, Big_volunteer.dob, Big_volunteer.ssn, Big_volunteer.emailadress, Big_volunteer.matchstatus, Big_volunteer.livingarea, Big_volunteer.availabletime, Big_volunteer.backgroundcheckstatus, Big_volunteer.streetaddress, Big_volunteer.city, Big_volunteer.state, Big_volunteer.postcode, Big_volunteer.faractivities, Big_volunteer.personality, Big_volunteer.schoolsubject, Big_volunteer.sport, Big_volunteer.phone, Big_volunteer.VolunteerID, aspnet_Roles.RoleName FROM aspnet_Roles INNER JOIN aspnet_UsersInRoles ON aspnet_Roles.RoleId = aspnet_UsersInRoles.RoleId INNER JOIN aspnet_Users ON aspnet_UsersInRoles.UserId = aspnet_Users.UserId INNER JOIN Big_volunteer ON aspnet_Users.UserId = Big_volunteer.userID WHERE (Big_volunteer.VolunteerID = @volunteerID)" UpdateCommand="UPDATE [Big_volunteer] SET [volunteerFN] = @volunteerFN, [volunteerLN] = @volunteerLN, [dob] = @dob, [ssn] = @ssn, [emailadress] = @emailadress, [matchstatus] = @matchstatus, [livingarea] = @livingarea, [availabletime] = @availabletime, [backgroundcheckstatus] = @backgroundcheckstatus, [streetaddress] = @streetaddress, [city] = @city, [state] = @state, [postcode] = @postcode, [faractivities] = @faractivities, [personality] = @personality, [schoolsubject] = @schoolsubject, [sport] = @sport, [phone] = @phone, [VolunteerID] = @VolunteerID WHERE [userID] = @userID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="volunteerID" QueryStringField="volunteerID" />
            </SelectParameters>
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
                <asp:Parameter Name="VolunteerID" Type="Int32" />
                <asp:Parameter Name="userID" Type="Object" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="41px" Width="589px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="volunteerFN" HeaderText="volunteerFN" SortExpression="volunteerFN" />
                <asp:BoundField DataField="volunteerLN" HeaderText="volunteerLN" SortExpression="volunteerLN" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="ssn" HeaderText="ssn" SortExpression="ssn" />
                <asp:BoundField DataField="emailadress" HeaderText="emailadress" SortExpression="emailadress" />
                <asp:BoundField DataField="matchstatus" HeaderText="matchstatus" SortExpression="matchstatus" />
                <asp:BoundField DataField="livingarea" HeaderText="livingarea" SortExpression="livingarea" />
                <asp:BoundField DataField="availabletime" HeaderText="availabletime" SortExpression="availabletime" />
                <asp:BoundField DataField="backgroundcheckstatus" HeaderText="backgroundcheckstatus" SortExpression="backgroundcheckstatus" />
                <asp:BoundField DataField="streetaddress" HeaderText="streetaddress" SortExpression="streetaddress" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="postcode" HeaderText="postcode" SortExpression="postcode" />
                <asp:BoundField DataField="faractivities" HeaderText="faractivities" SortExpression="faractivities" />
                <asp:BoundField DataField="personality" HeaderText="personality" SortExpression="personality" />
                <asp:BoundField DataField="schoolsubject" HeaderText="schoolsubject" SortExpression="schoolsubject" />
                <asp:BoundField DataField="sport" HeaderText="sport" SortExpression="sport" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="VolunteerID" HeaderText="VolunteerID" InsertVisible="False" ReadOnly="True" SortExpression="VolunteerID" />
                <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    <h3><a href="Volunteertable.aspx" >Back To Volunteers</a></h3>
</asp:Content>