
Partial Class Roles_employee_Littletable
    Inherits System.Web.UI.Page

    Protected Sub tb_searchLittle_TextChanged(sender As Object, e As EventArgs) Handles tb_searchlittle.TextChanged

        Dim searchP As String = "Select* FROM [Big_little] WHERE ([littleFN] LIKE '%" + tb_searchlittle.Text + "%') OR ([littleLN] LIKE '%" + tb_searchlittle.Text + "%') OR ([availabletime] LIKE '%" + tb_searchlittle.Text + "%')"
        SqlDataSource1.SelectCommand = searchP

    End Sub

End Class
