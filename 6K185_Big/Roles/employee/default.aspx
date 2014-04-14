<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="Roles_employee_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <div id="volunteertable" style="float:right; width:475px">
        <h3>Volunteer's Table</h3>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="volunteerFN" HeaderText="Volunteer First Name" SortExpression="volunteerFN" />
                <asp:BoundField DataField="matchstatus" HeaderText="Match Status" SortExpression="matchstatus" />
                <asp:BoundField DataField="livingarea" HeaderText="Living Area" SortExpression="livingarea" />
                <asp:BoundField DataField="availabletime" HeaderText="Available Time" SortExpression="availabletime" />
                <asp:BoundField DataField="postcode" HeaderText="Post Code" SortExpression="postcode" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" SelectCommand="SELECT [volunteerFN], [volunteerLN], [dob], [ssn], [emailadress], [matchstatus], [livingarea], [availabletime], [postcode] FROM [Big_volunteer]"></asp:SqlDataSource>
        </div>
    <div id="littletable" style="float:left; width:435px">
        <h3>Little's Table</h3>
         
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="userID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="403px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="littleFN" HeaderText="Little's First Name" SortExpression="littleFN" />
                <asp:BoundField DataField="postcode" HeaderText="Post Code" SortExpression="postcode" />
                <asp:BoundField DataField="matchstatus" HeaderText="Match Status" SortExpression="matchstatus" />
                <asp:BoundField DataField="availabletime" HeaderText="Available Time" SortExpression="availabletime" />
                <asp:BoundField DataField="interetactivities" HeaderText="Interested Activities" SortExpression="interetactivities" />
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" SelectCommand="SELECT [userID], [littleFN], [city], [postcode], [phone], [emailaddress], [matchstatus], [availabletime], [interetactivities] FROM [Big_little]"></asp:SqlDataSource>
        </div>
    </asp:Content>

