Public Class Persona
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs)
        Dim persona As New Models.Persona()

        persona.Nombre = txtNombre.Text
        persona.Apellido = txtApellido.Text

        If Date.TryParse(txtFechaNac.Text, persona.FechaNacimiento) = False Then
            persona.FechaNacimiento = Date.MinValue
        End If

        persona.Correo = txtCorreo.Text
        persona.TipoDocumento = ddlTipoDocumento.SelectedItem.Text
        persona.NumeroDocumento = txtNumeroDoc.Text

        lblMensaje.Text = persona.Resumen()
    End Sub

End Class