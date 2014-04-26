<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="Roles_employee_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <div id="volunteertable" style="float:right; width:475px">
        <h3>Volunteer's Table</h3>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" DataKeyNames="userID" Width="226px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
                <asp:BoundField DataField="matchstatus" HeaderText="Match Status" SortExpression="matchstatus" />
                <asp:BoundField DataField="availabletime" HeaderText="Available Time" SortExpression="availabletime" />
                <asp:BoundField DataField="faractivities" HeaderText="Faroriate Activities" SortExpression="faractivities" />
                <asp:BoundField DataField="personality" HeaderText="Personality" SortExpression="personality" />
                <asp:BoundField DataField="schoolsubject" HeaderText="School Subject" SortExpression="schoolsubject" />
                <asp:BoundField DataField="sport" HeaderText="Sport" SortExpression="sport" />
                <asp:HyperLinkField DataNavigateUrlFields="volunteerID" DataNavigateUrlFormatString="volunteerdetails.aspx?volunteerId={0}" Text="Detail" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" SelectCommand="SELECT aspnet_Roles.RoleName, aspnet_Users.UserName, Big_volunteer.userID, Big_volunteer.volunteerFN, Big_volunteer.volunteerLN, Big_volunteer.dob, Big_volunteer.ssn, Big_volunteer.emailadress, Big_volunteer.matchstatus, Big_volunteer.livingarea, Big_volunteer.availabletime, Big_volunteer.backgroundcheckstatus, Big_volunteer.streetaddress, Big_volunteer.city, Big_volunteer.state, Big_volunteer.postcode, Big_volunteer.faractivities, Big_volunteer.personality, Big_volunteer.schoolsubject, Big_volunteer.sport, Big_volunteer.phone, Big_volunteer.VolunteerID FROM aspnet_Users INNER JOIN aspnet_UsersInRoles ON aspnet_Users.UserId = aspnet_UsersInRoles.UserId INNER JOIN aspnet_Roles ON aspnet_UsersInRoles.RoleId = aspnet_Roles.RoleId INNER JOIN Big_volunteer ON aspnet_Users.UserId = Big_volunteer.userID" DeleteCommand="DELETE FROM [Big_volunteer] WHERE [userID] = @userID" InsertCommand="INSERT INTO [Big_volunteer] ([volunteerFN], [volunteerLN], [dob], [ssn], [emailadress], [matchstatus], [livingarea], [availabletime], [postcode], [userID]) VALUES (@volunteerFN, @volunteerLN, @dob, @ssn, @emailadress, @matchstatus, @livingarea, @availabletime, @postcode, @userID)" UpdateCommand="UPDATE [Big_volunteer] SET [volunteerFN] = @volunteerFN, [volunteerLN] = @volunteerLN, [dob] = @dob, [ssn] = @ssn, [emailadress] = @emailadress, [matchstatus] = @matchstatus, [livingarea] = @livingarea, [availabletime] = @availabletime, [postcode] = @postcode WHERE [userID] = @userID">
            <DeleteParameters>
                <asp:Parameter Name="userID" Type="Object" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="volunteerFN" Type="String" />
                <asp:Parameter Name="volunteerLN" Type="String" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="ssn" Type="String" />
                <asp:Parameter Name="emailadress" Type="String" />
                <asp:Parameter Name="matchstatus" Type="String" />
                <asp:Parameter Name="livingarea" Type="String" />
                <asp:Parameter Name="availabletime" Type="String" />
                <asp:Parameter Name="postcode" Type="String" />
                <asp:Parameter Name="userID" Type="Object" />
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
                <asp:Parameter Name="postcode" Type="String" />
                <asp:Parameter Name="userID" Type="Object" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    <div id="littletable" style="float:left; width:435px">
        <h3>Little's Table</h3>
         
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="littleID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="16px" style="margin-right: 11px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
                <asp:BoundField DataField="matchstatus" HeaderText="Match Status" SortExpression="matchstatus" />
                <asp:BoundField DataField="availabletime" HeaderText="Available Time" SortExpression="availabletime" />
                <asp:BoundField DataField="faractivities" HeaderText="Favoriate Activities" SortExpression="faractivities" />
                <asp:BoundField DataField="personality" HeaderText="Personality" SortExpression="personality" />
                <asp:BoundField DataField="sport" HeaderText="Favorite Sport" SortExpression="sport" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" SelectCommand="SELECT aspnet_Users.UserName, Big_little.userID, Big_little.littleFN, Big_little.littleLN, Big_little.city, Big_little.streetAddress, Big_little.state, Big_little.postcode, Big_little.phone, Big_little.emailaddress, Big_little.matchstatus, Big_little.availabletime, Big_little.interetactivities, Big_little.image, Big_little.faractivities, Big_little.personality, Big_little.schoolsubject, Big_little.sport, Big_little.littleID, aspnet_Roles.RoleName FROM aspnet_Users INNER JOIN aspnet_UsersInRoles ON aspnet_Users.UserId = aspnet_UsersInRoles.UserId INNER JOIN aspnet_Roles ON aspnet_UsersInRoles.RoleId = aspnet_Roles.RoleId INNER JOIN Big_little ON aspnet_Users.UserId = Big_little.userID"></asp:SqlDataSource>
        </div>
    </asp:Content>

