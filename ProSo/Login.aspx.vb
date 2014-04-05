Imports System.Data.OleDb
Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim myConnection As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\Programming\Source code\ASP.NET\ProSo\ProSo\User.accdb")
        Dim myCommand As New OleDbCommand()
        myCommand.Connection = myConnection
        myCommand.CommandText = "SELECT Count(*) FROM [User] WHERE Username ='" + txtUsername.Text + "';"
        myConnection.Open()
        If Convert.ToInt32(myCommand.ExecuteScalar.ToString) = 1 Then
            myCommand.CommandText = "SELECT Password FROM [User] WHERE Username ='" + txtUsername.Text + "';"
            If txtPassword.Text.Equals(myCommand.ExecuteScalar.ToString) Then
                Session("New") = txtUsername.Text
                Response.Redirect("User.aspx")
            End If
        Else
            Response.Write("<h4>Username and/or password is not correct</h4>")
        End If
        myConnection.Close()
    End Sub
End Class