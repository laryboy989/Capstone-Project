<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_6K185_Big_Admin_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" SelectCommand="SELECT * FROM [Big_employee]"></asp:SqlDataSource>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="employeeID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="employeeID" HeaderText="Employee ID" ReadOnly="True" SortExpression="employeeID" />
                <asp:BoundField DataField="employeeFN" HeaderText="Employee First Name" SortExpression="employeeFN" />
                <asp:BoundField DataField="employeeLN" HeaderText="Employee Last Name" SortExpression="employeeLN" />
                <asp:BoundField DataField="dateofBirth" HeaderText="Employee DOB" SortExpression="dateofBirth" />
                <asp:BoundField DataField="SSN" HeaderText="Employee SSN" SortExpression="SSN" />
                <asp:BoundField DataField="phonenumber" HeaderText="Employee Phone Number" SortExpression="phonenumber" />
                <asp:BoundField DataField="streetadress" HeaderText="Street" SortExpression="streetadress" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                <asp:BoundField DataField="postcode" HeaderText="Postal Code" SortExpression="postcode" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>

