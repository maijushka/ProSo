Public Class User
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("New") Is Nothing) Or IsDBNull(Session("New")) Then
            Response.Redirect("Login.aspx")
        Else
            lblWelcome.Text += Session("New").ToString()
        End If
    End Sub

    Protected Sub btnLogout_Click(sender As Object, e As EventArgs) Handles btnLogout.Click
        Session("New") = vbNull
        Response.Redirect("Login.aspx")
    End Sub
End Class