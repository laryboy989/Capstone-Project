<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="Roles_Little_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <center>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="littleID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="357px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="littleID" HeaderText="littleID" InsertVisible="False" ReadOnly="True" SortExpression="littleID" />
            <asp:BoundField DataField="littleFN" HeaderText="First Name" SortExpression="littleFN" />
            <asp:BoundField DataField="littleLN" HeaderText="Last Name" SortExpression="littleLN" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="streetAddress" HeaderText="Street Address" SortExpression="streetAddress" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="postcode" HeaderText="Post Code" SortExpression="postcode" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="emailaddress" HeaderText="Email Address" SortExpression="emailaddress" />
            <asp:BoundField DataField="matchstatus" HeaderText="Match Status" SortExpression="matchstatus" ReadOnly="True" />
            <asp:BoundField DataField="availabletime" HeaderText="Available Time" SortExpression="availabletime" />
            <asp:BoundField DataField="interetactivities" HeaderText="Interested Activities" SortExpression="interetactivities" />
            <asp:BoundField DataField="faractivities" HeaderText="Farivorte Activities" SortExpression="faractivities" />
            <asp:BoundField DataField="personality" HeaderText="Personality" SortExpression="personality" />
            <asp:BoundField DataField="schoolsubject" HeaderText="School Subject" SortExpression="schoolsubject" />
            <asp:BoundField DataField="sport" HeaderText="Favorite Sport" SortExpression="sport" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" DeleteCommand="DELETE FROM [Big_little] WHERE [littleID] = @littleID" UpdateCommand="UPDATE [Big_little] set [littleFN] = @littleFN, [littleLN] = @littleLN, [city] = @city, [streetAddress] = @streetAddress, [state] = @state, [postcode] = @postcode, [phone] = @phone, [emailaddress] = @emailaddress, [matchstatus] = @matchstatus, [availabletime] = @availabletime, [interetactivities] = @interetactivities, [faractivities] = @faractivities, [personality] = @personality, [schoolsubject] = @schoolsubject, [sport] = @sport, [UserName] = @UserName, [image] = @image WHERE ([littleID] = @littleID)"  SelectCommand="SELECT * FROM [Big_little] WHERE ([UserID] = @UserID)">
          
        <SelectParameters> 
         <asp:Parameter Name="UserID" />
        </SelectParameters>
          
        <DeleteParameters>
            <asp:Parameter Name="littleID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
           
        </InsertParameters>


        <UpdateParameters>
            <asp:Parameter Name="userID"  />
            <asp:Parameter Name="littleFN" Type="String" />
            <asp:Parameter Name="littleLN" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="streetAddress" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="postcode" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="emailaddress" Type="String" />
            <asp:Parameter Name="matchstatus" Type="String" />
            <asp:Parameter Name="availabletime" Type="String" />
            <asp:Parameter Name="interetactivities" Type="String" />
            <asp:Parameter Name="faractivities" Type="String" />
            <asp:Parameter Name="personality" Type="String" />
            <asp:Parameter Name="schoolsubject" Type="String" />
            <asp:Parameter Name="sport" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="littleID" Type="Int32" />
        </UpdateParameters>

    </asp:SqlDataSource>
</center>
</asp:Content>

