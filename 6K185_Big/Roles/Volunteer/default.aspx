<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_6K185_Big_Roles_Volunteer_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" DeleteCommand="DELETE FROM [Big_volunteer] WHERE [userID] = @userID" InsertCommand="INSERT INTO [Big_volunteer] ([userID], [volunteerFN], [volunteerLN], [dob], [ssn], [emailadress], [matchstatus], [livingarea], [availabletime], [backgroundcheckstatus], [streetadress], [city], [state], [postcode]) VALUES (@userID, @volunteerFN, @volunteerLN, @dob, @ssn, @emailadress, @matchstatus, @livingarea, @availabletime, @backgroundcheckstatus, @streetadress, @city, @state, @postcode)" SelectCommand="SELECT * FROM [Big_volunteer]" UpdateCommand="UPDATE [Big_volunteer] SET [volunteerFN] = @volunteerFN, [volunteerLN] = @volunteerLN, [dob] = @dob, [ssn] = @ssn, [emailadress] = @emailadress, [matchstatus] = @matchstatus, [livingarea] = @livingarea, [availabletime] = @availabletime, [backgroundcheckstatus] = @backgroundcheckstatus, [streetadress] = @streetadress, [city] = @city, [state] = @state, [postcode] = @postcode WHERE [userID] = @userID">
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
            <asp:Parameter Name="streetadress" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="postcode" Type="String" />
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
            <asp:Parameter Name="streetadress" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="postcode" Type="String" />
            <asp:Parameter Name="userID" Type="Object" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="userID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="userID" HeaderText="User ID" ReadOnly="True" SortExpression="userID" />
            <asp:BoundField DataField="volunteerFN" HeaderText="First Name" SortExpression="volunteerFN" />
            <asp:BoundField DataField="volunteerLN" HeaderText="Last Name" SortExpression="volunteerLN" />
            <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
            <asp:BoundField DataField="ssn" HeaderText="SSN" SortExpression="ssn" />
            <asp:BoundField DataField="emailadress" HeaderText="Email" SortExpression="emailadress" />
            <asp:BoundField DataField="matchstatus" HeaderText="Match Status" SortExpression="matchstatus" />
            <asp:BoundField DataField="livingarea" HeaderText="Living Area" SortExpression="livingarea" />
            <asp:BoundField DataField="availabletime" HeaderText="Availability" SortExpression="availabletime" />
            <asp:BoundField DataField="backgroundcheckstatus" HeaderText="Background Check Status" SortExpression="backgroundcheckstatus" />
            <asp:BoundField DataField="streetadress" HeaderText="Address" SortExpression="streetadress" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="postcode" HeaderText="Zip Code" SortExpression="postcode" />
        </Columns>
    </asp:GridView>
    </asp:Content>

