<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Littledetailsview.aspx.vb" Inherits="Littledetailsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_Big %>" DeleteCommand="DELETE FROM [Big_little] WHERE [userNumber] = @userNumber" InsertCommand="INSERT INTO [Big_little] ([userID], [littleFN], [littleLN], [city], [streetAddress], [state], [postcode], [phone], [emailaddress], [matchstatus], [availabletime], [interetactivities], [image], [faractivities], [personality], [schoolsubject], [sport], [username]) VALUES (@userID, @littleFN, @littleLN, @city, @streetAddress, @state, @postcode, @phone, @emailaddress, @matchstatus, @availabletime, @interetactivities, @image, @faractivities, @personality, @schoolsubject, @sport, @username)" SelectCommand="SELECT * FROM [Big_little] WHERE ([userID] = @userID)" UpdateCommand="UPDATE [Big_little] SET [userID] = @userID, [littleFN] = @littleFN, [littleLN] = @littleLN, [city] = @city, [streetAddress] = @streetAddress, [state] = @state, [postcode] = @postcode, [phone] = @phone, [emailaddress] = @emailaddress, [matchstatus] = @matchstatus, [availabletime] = @availabletime, [interetactivities] = @interetactivities, [image] = @image, [faractivities] = @faractivities, [personality] = @personality, [schoolsubject] = @schoolsubject, [sport] = @sport, [username] = @username WHERE [userNumber] = @userNumber">
            <DeleteParameters>
                <asp:Parameter Name="userNumber" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userID" Type="Object" />
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
                <asp:Parameter Name="image" Type="Object" />
                <asp:Parameter Name="faractivities" Type="String" />
                <asp:Parameter Name="personality" Type="String" />
                <asp:Parameter Name="schoolsubject" Type="String" />
                <asp:Parameter Name="sport" Type="String" />
                <asp:Parameter Name="username" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="userID" QueryStringField="UserId" Type="Object" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="userID" Type="Object" />
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
                <asp:Parameter Name="image" Type="Object" />
                <asp:Parameter Name="faractivities" Type="String" />
                <asp:Parameter Name="personality" Type="String" />
                <asp:Parameter Name="schoolsubject" Type="String" />
                <asp:Parameter Name="sport" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="userNumber" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="userNumber" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="493px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" />
                <asp:BoundField DataField="littleFN" HeaderText="littleFN" SortExpression="littleFN" />
                <asp:BoundField DataField="littleLN" HeaderText="littleLN" SortExpression="littleLN" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="streetAddress" HeaderText="streetAddress" SortExpression="streetAddress" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="postcode" HeaderText="postcode" SortExpression="postcode" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="emailaddress" HeaderText="emailaddress" SortExpression="emailaddress" />
                <asp:BoundField DataField="matchstatus" HeaderText="matchstatus" SortExpression="matchstatus" />
                <asp:BoundField DataField="availabletime" HeaderText="availabletime" SortExpression="availabletime" />
                <asp:BoundField DataField="interetactivities" HeaderText="interetactivities" SortExpression="interetactivities" />
                <asp:BoundField DataField="faractivities" HeaderText="faractivities" SortExpression="faractivities" />
                <asp:BoundField DataField="personality" HeaderText="personality" SortExpression="personality" />
                <asp:BoundField DataField="schoolsubject" HeaderText="schoolsubject" SortExpression="schoolsubject" />
                <asp:BoundField DataField="sport" HeaderText="sport" SortExpression="sport" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="userNumber" HeaderText="userNumber" InsertVisible="False" ReadOnly="True" SortExpression="userNumber" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
