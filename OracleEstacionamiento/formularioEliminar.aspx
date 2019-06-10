﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formularioEliminar.aspx.cs" Inherits="OracleEstacionamiento.formularioEliminar" %>

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
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">AppEstacionamiento</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="HomeAdmin.aspx">Pagina principal Administrador</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="formularioActualizar.aspx">Actualizar usuario<span class="sr-only">(actual)</span></a>
      </li>
        <li class="nav-item active">
        <a class="nav-link" href="formularioEliminar.aspx">Eliminar usuario<span class="sr-only">(actual)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Menu expansible
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Opcion 1</a>
          <a class="dropdown-item" href="#">Opcion 2</a>
          <a class="dropdown-item" href="#">Opcion 3</a>
        </div>
      </li>
    </ul>
  </div>
</nav>
    <div>
    
    </div>
    <hr />
    <form id="form1" class="form" runat="server">
        <div>
            <br>
            <asp:TextBox ID="txtId_delete" class="form-control"  placeholder="Ingrese id que se eliminara" runat="server"></asp:TextBox>
            <asp:Button ID="btnDelete" class="btn btn-danger btn-lg btn-primary btn-block" runat="server" OnClick="Button1_Click" Text="Eliminar usuario" />
        </div>

        
    </form>

     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>

</html>
