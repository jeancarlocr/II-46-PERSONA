<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Persona.aspx.vb" Inherits="PERSONA.Persona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--Nombre----%>
    <div class="form-group">
        <asp:Label ID="lblNombre" runat="server" Text="Nombre Completo" CssClass="control-label"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" Text="JC" placeholder="Nombre Completo" CssClass="form-control"></asp:TextBox>
    </div>
    <%--Apellido----%>
    <div class="form-group">
        <asp:Label ID="lblApellido" runat="server" Text="Apellido" CssClass="control-label"></asp:Label>
        <asp:TextBox ID="txtApellido" runat="server" Text="JC" placeholder="Nombre Completo" CssClass="form-control"></asp:TextBox>
    </div>
    <%--fechaNacimiento----%>
    <div class="form-group">
        <asp:Label ID="lblFechaNac" runat="server" Text="Fecha de Nacimiento" CssClass="control-label"></asp:Label>
        <asp:TextBox ID="txtFechaNac" runat="server" placeholder="01/01/2026" CssClass="form-control" TextMode="Date"></asp:TextBox>
    </div>

     <%-- Validar fecha Nacimiento----%>
    <asp:RequiredFieldValidator ID="rfvFecha" runat="server" 
     CssClass="text-danger"
     Display ="Dynamic"
     ControltoValidate="txtFechaNac"
     ErrorMessage="Es necesario indicar la fecha"></asp:RequiredFieldValidator>

    <%--Correo----%>
    <div class="form-group">
        <asp:Label ID="lblCorreo" runat="server" Text="Correo" CssClass="control-label"></asp:Label>
        <asp:TextBox ID="txtCorreo" runat="server" placeholder="Correo Electronico" CssClass="form-control" TextMode="Email"></asp:TextBox>
    </div>

    <div class="form-g<asp:RequiredFieldValidator runat=" requiredfieldvalidator="" server="">
        <asp:Label ID="lblTipoDoc" runat="server" Text="Tipo de documento" CssClass="control-label"></asp:Label>
        <asp:DropDownList ID="ddlTipoDocumento" runat="server" CssClass="form-control">
            <asp:ListItem Text="Cedúla Juridica" Value="0"></asp:ListItem>
            <asp:ListItem Text="Cedúla Fisica" Value="1"></asp:ListItem>
            <asp:ListItem Text="Pasaporte" Value="2"></asp:ListItem>
        </asp:DropDownList>
    </div>

    <%--Numero de Documento----%>
    <div class="form-group">
        <asp:Label ID="lblNumDoc" runat="server" Text="Número de documento" CssClass="control-label"></asp:Label>
        <asp:TextBox ID="txtNumeroDoc" runat="server" placeholder="Numero de Documento" CssClass="form-control" TextMode="Email"></asp:TextBox>
    </div>

    <div class="py-3">
        <asp:Button ID="btnGuardar" runat="server" Text="Button" CssClass="btn btn-primary" OnClick="btnGuardar_Click" />
    </div>

    <div>
        <asp:Label ID="lblMensaje" runat="server" Text="Mensaje" CssClass="dnone"></asp:Label>
    </div>

</asp:Content>
