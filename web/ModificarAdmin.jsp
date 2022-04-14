
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="modadmin.css" rel="stylesheet" type="text/css"/>
        <title>ADMIN/UPDATE</title>
    </head>
    <body>
        
    <div id="menu">
                    <ul>
                        <li><a href="administracion.html" title="Inicio">Inicio</a></li>
                        <li><a href="" title="Modifciar" class ="active">Modificar Administrador</a></li>
                    </ul>
    </div>
        
        <div class="usuario">
            
            <h1>Modificar Administrador</h1>
            <form>
              <!--nombre usuario-->
              <label for="nombreusuario">Nombre de Usuario</label>
              <input type="text">
              
              <!--cedula-->
              <label for="cedula">Cedula</label>
              <input type="text" disabled="disabled">
              
               <!--correo-->
              <label for="correo">Correo Electronico</label>
              <input type="text">
              
              <!--contraseña-->
              <label for="contraseñaA">Contraseña Actual</label>
              <input type="password">
              
              <!--contraseña-->
              <label for="contraseñaN">Contraseña Nueva</label>
              <input type="password">
              
              <label for="contraseñaC">Confirmar Contraseña</label>
              <input type="password">
              
              <input type="submit" value="Modificar Usuario">
              
            </form>
        </div>
    </body>
</html>
