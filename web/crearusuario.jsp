
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="csscrearusuario.css" rel="stylesheet" type="text/css"/>
        <title>VIDEOJUEGOS/USUARIO</title>
    </head>
        <body>
        <div class="usuario">
            
            <h1>Crear Usuario</h1>
            <form>
              <!--nombre usuario-->
              <label for="nombreusuario">Nombre de Usuario <b>*</b></label>
              <input type="text" placeholder="Digite su nombre" required>
              
              <!--cedula-->
              <label for="cedula">Cedula <b>*</b></label>
              <input type="number"  required placeholder="Digite su numero de cedula">
              
               <!--correo-->
              <label for="correo">Correo Electronico <b>*</b></label>
              <input type="text" placeholder="Digite su correo electronico" required>
              
              <!--contraseña-->
              <label for="contraseña">Contraseña <b>*</b></label>
              <input type="password" placeholder="Introduzca su contraseña" required>
              
              <!--contraseña-->
              <label for="contraseña">Confirmar Contraseña <b>*</b></label>
              <input type="password" placeholder="Introduzca su contraseña" required>
              
              <input type="submit" value="Crear Usuario">
              <a href="index.html">Volver al Inicio</a>
            </form>
        </div>
    </body>
</html>
