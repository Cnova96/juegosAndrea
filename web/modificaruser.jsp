
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="modificaruser.css" rel="stylesheet" type="text/css"/>
        <title>USER/UPDATE</title>
    </head>
    <body>
         <div id="menu">
                    <ul>
                        <li><a href="usuario.jsp" title="Inicio">Inicio</a></li>
                        <li><a href="" title="Modifciar" class ="active">Modificar Usuario</a></li>
                    </ul>
    </div>
        
        <div class="usuario">
            
            <h1>Modificar Usuario</h1>
            <form accion="srvusuario?accion=verificar" method="POST">
              <!--nombre usuario-->
              <label for="nombreusuario">Nombre de Usuario</label>
              <input type="text">
              
              <!--cedula-->
              <label for="cedula">Cedula</label>
              <input type="text">
              
               <!--correo-->
              <label for="correo">Correo Electronico</label>
              <input type="text">
              
              <!--contraseña-->
              <label for="contrasenaA">Contraseña Actual</label>
              <input type="password">
              
              <!--contraseña-->
              <label for="contrasenaN">Contraseña Nueva</label>
              <input type="password">
              
              
              <input type="submit" value="Modificar Usuario" name="verificar">
              
            </form>
        </div>
    </body>
</html>
