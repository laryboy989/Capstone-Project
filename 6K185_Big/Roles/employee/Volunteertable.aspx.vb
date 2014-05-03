
Partial Class Roles_employee_Volunteertable
    Inherits System.Web.UI.Page

    Protected Sub tb_searchvolunte_TextChanged(sender As Object, e As EventArgs) Handles tb_searchvolunteer.TextChanged

        Dim searchP As String = "Select* FROM [Big_volunteer] WHERE ([volunteerFN] LIKE '%" + tb_searchvolunteer.Text + "%') OR ([volunteerLN] LIKE '%" + tb_searchvolunteer.Text + "%') OR ([availabletime] LIKE '%" + tb_searchvolunteer.Text + "%') "
        SqlDataSource1.SelectCommand = searchP

    End Sub

End Class
