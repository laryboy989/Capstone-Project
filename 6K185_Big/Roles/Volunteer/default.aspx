<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_6K185_Big_Roles_Volunteer_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" SelectCommand="SELECT * FROM [Big_volunteer]"></asp:SqlDataSource>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="volunteerID" HeaderText="Volunteer ID" SortExpression="volunteerID" />
                <asp:BoundField DataField="volunteerFN" HeaderText="Volunteer First Name" SortExpression="volunteerFN" />
                <asp:BoundField DataField="volunteerLN" HeaderText="Volunteer Last Name" SortExpression="volunteerLN" />
                <asp:BoundField DataField="dob" HeaderText="Volunteer DOB" SortExpression="dob" />
                <asp:BoundField DataField="ssn" HeaderText="Volunteer SSN" SortExpression="ssn" />
                <asp:BoundField DataField="emailadress" HeaderText="Volunteer Email" SortExpression="emailadress" />
                <asp:BoundField DataField="matchstatus" HeaderText="Match Status" SortExpression="matchstatus" />
                <asp:BoundField DataField="livingarea" HeaderText="Volunteer Living Area" SortExpression="livingarea" />
                <asp:BoundField DataField="availabletime" HeaderText="Available Time" SortExpression="availabletime" />
                <asp:BoundField DataField="backgroundcheckstatus" HeaderText="Background Check" SortExpression="backgroundcheckstatus" />
                <asp:BoundField DataField="streetadress" HeaderText="Street" SortExpression="streetadress" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                <asp:BoundField DataField="postcode" HeaderText="Postal Code" SortExpression="postcode" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>

