<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Volunteertable.aspx.vb" Inherits="Roles_employee_Volunteertable"%>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" SelectCommand="SELECT * FROM [Big_volunteer]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="volunteerID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="volunteerID" HeaderText="Volunteer ID" ReadOnly="True" SortExpression="volunteerID" />
            <asp:BoundField DataField="userID" HeaderText="User ID" SortExpression="userID" />
            <asp:BoundField DataField="volunteerFN" HeaderText="First Name" SortExpression="volunteerFN" />
            <asp:BoundField DataField="volunteerLN" HeaderText="Last Name" SortExpression="volunteerLN" />
            <asp:BoundField DataField="dob" HeaderText="Date of Birth" SortExpression="dob" />
            <asp:BoundField DataField="ssn" HeaderText="Social Security Number" SortExpression="ssn" />
            <asp:BoundField DataField="emailadress" HeaderText="Email Address" SortExpression="emailadress" />
            <asp:BoundField DataField="matchstatus" HeaderText="Match Status" SortExpression="matchstatus" />
            <asp:BoundField DataField="livingarea" HeaderText="Living Area" SortExpression="livingarea" />
            <asp:BoundField DataField="availabletime" HeaderText="Available Time" SortExpression="availabletime" />
            <asp:BoundField DataField="backgroundcheckstatus" HeaderText="Background Check Status" SortExpression="backgroundcheckstatus" />
            <asp:BoundField DataField="streetadress" HeaderText="Street Address" SortExpression="streetadress" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="postcode" HeaderText="Postal Code" SortExpression="postcode" />
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

