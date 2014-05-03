<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_6K185_Big_Roles_Volunteer_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <center>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="userID" DataSourceID="SqlDataSource1" Height="50px" Width="309px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="volunteerFN" HeaderText="First Name" SortExpression="volunteerFN" />
            <asp:BoundField DataField="volunteerLN" HeaderText="Last name" SortExpression="volunteerLN" />
            <asp:BoundField DataField="dob" HeaderText="Date of birth" SortExpression="dob" />
            <asp:BoundField DataField="ssn" HeaderText="SSN" ReadOnly="True" SortExpression="ssn" />
            <asp:BoundField DataField="emailadress" HeaderText="Email Address" SortExpression="emailadress" />
            <asp:BoundField DataField="matchstatus" HeaderText="Match Status" SortExpression="matchstatus" />
            <asp:BoundField DataField="livingarea" HeaderText="Living Area" SortExpression="livingarea" />
            <asp:BoundField DataField="availabletime" HeaderText="Available Time" SortExpression="availabletime" />
            <asp:BoundField DataField="streetaddress" HeaderText="Street Address" SortExpression="streetaddress" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="postcode" HeaderText="postcode" SortExpression="postcode" />
            <asp:BoundField DataField="faractivities" HeaderText="faractivities" SortExpression="faractivities" />
            <asp:BoundField DataField="personality" HeaderText="personality" SortExpression="personality" />
            <asp:BoundField DataField="schoolsubject" HeaderText="schoolsubject" SortExpression="schoolsubject" />
            <asp:BoundField DataField="sport" HeaderText="sport" SortExpression="sport" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="VolunteerID" HeaderText="VolunteerID" InsertVisible="False" ReadOnly="True" SortExpression="VolunteerID" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" DeleteCommand="DELETE FROM [Big_volunteer] WHERE [userID] = @userID" SelectCommand="SELECT * FROM [Big_volunteer] where [userID]=@userID" UpdateCommand="UPDATE [Big_volunteer] SET [volunteerFN] = @volunteerFN, [volunteerLN] = @volunteerLN, [dob] = @dob, [ssn] = @ssn, [emailadress] = @emailadress, [matchstatus] = @matchstatus, [livingarea] = @livingarea, [availabletime] = @availabletime, [backgroundcheckstatus] = @backgroundcheckstatus, [streetaddress] = @streetaddress, [city] = @city, [state] = @state, [postcode] = @postcode, [faractivities] = @faractivities, [personality] = @personality, [schoolsubject] = @schoolsubject, [sport] = @sport, [phone] = @phone WHERE [userID] = @userID">
        <DeleteParameters>
            
        </DeleteParameters>
        <InsertParameters>
         
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
            <asp:Parameter Name="VolunteerID" Type="Int32" />
            <asp:Parameter Name="userID" Type="Object" />
        </UpdateParameters>

        <SelectParameters> 
         <asp:Parameter Name="UserID" />
        </SelectParameters>
    </asp:SqlDataSource>

        </center>
    </asp:Content>

