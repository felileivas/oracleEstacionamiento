﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formRegistro.aspx.cs" Inherits="OracleEstacionamiento.formRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro de usuario</title>

</head>

<body>
    <form id="form1" class="form" runat="server">
        <div>
            Registro de usuario<br />
        </div>
        <p>
            <br>
            <asp:TextBox ID="txtNombre" class="form-control"  placeholder="Nombre" runat="server"></asp:TextBox>
            <br>
            <asp:TextBox ID="txtRut" class="form-control"  placeholder="RUT" runat="server"></asp:TextBox>
            <br>
            <asp:TextBox ID="txtDireccion" class="form-control"  placeholder="Direccion" runat="server"></asp:TextBox>
            <br>
            <asp:TextBox ID="txtTelefono" class="form-control"  placeholder="Telefono" runat="server"></asp:TextBox>
            <br>
            <asp:TextBox ID="txtUser" class="form-control"  placeholder="Nombre de usuario" runat="server"></asp:TextBox>
            <br>
            <asp:TextBox ID="txtPass" class="form-control"  placeholder="Contraseña" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnRegistro" class="btn btn-lg btn-primary btn-block" runat="server" OnClick="Button1_Click" Text="Registrar usuario" />
    </form>

</body>

</html>