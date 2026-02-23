Namespace Models

    Public Class Persona

        Private _nombre As String
        Private _apellido As String
        Private _tipoDocumento As String
        Private _numeroDocumento As String
        Private _fechaNacimiento As Date
        Private _correo As String

        Public Sub New()
        End Sub

        Public Sub New(nombre As String, apellido As String)
            Me.Nombre = nombre
            Me.Apellido = apellido
        End Sub

        Public Sub New(nombre As String, apellido As String, tipoDocumento As String, numeroDocumento As String, fechaNacimiento As Date, correo As String)
            Me.Nombre = nombre
            Me.Apellido = apellido
            Me.TipoDocumento = tipoDocumento
            Me.NumeroDocumento = numeroDocumento
            Me.FechaNacimiento = fechaNacimiento
            Me.Correo = correo
        End Sub

        Public Property Nombre As String
            Get
                Return _nombre
            End Get
            Set(value As String)
                _nombre = value
            End Set
        End Property

        Public Property Apellido As String
            Get
                Return _apellido
            End Get
            Set(value As String)
                _apellido = value
            End Set
        End Property

        Public Property TipoDocumento As String
            Get
                Return _tipoDocumento
            End Get
            Set(value As String)
                _tipoDocumento = value
            End Set
        End Property

        Public Property NumeroDocumento As String
            Get
                Return _numeroDocumento
            End Get
            Set(value As String)
                _numeroDocumento = value
            End Set
        End Property

        Public Property FechaNacimiento As Date
            Get
                Return _fechaNacimiento
            End Get
            Set(value As Date)
                _fechaNacimiento = value
            End Set
        End Property

        Public Property Correo As String
            Get
                Return _correo
            End Get
            Set(value As String)
                _correo = value
            End Set
        End Property

        Public Function Resumen() As String
            Return $"Nombre: {Nombre} {Apellido}<br/>" &
                   $"Tipo Documento: {TipoDocumento}<br/>" &
                   $"Número Documento: {NumeroDocumento}<br/>" &
                   $"Fecha Nacimiento: {FechaNacimiento:yyyy-MM-dd}<br/>" &
                   $"Correo: {Correo}"
        End Function

    End Class

End Namespace