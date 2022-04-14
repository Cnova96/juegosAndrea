

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="cssestilologuin.css" rel="stylesheet" type="text/css"/>
        <title>VIDEOJUEGOS</title>
    </head>
    <body>
        <div class="loguin">
            
            <img class="avatar" src="https://static.vecteezy.com/system/resources/previews/003/820/257/large_2x/videogame-cartoon-set-vector.jpg" alt="logo">
            
            <h1>Iniciar Sección</h1>
            <form action="srvusuario?accion=verificar" method="POST">
              <!--nombre usuario-->
              <label for="nombreusuario">Nombre de Usuario</label>
              <input type="text" name="nombreusuario" placeholder="Digite su nombre de usuario" required>
              
              <!--contraseña-->
              <label for="contraseña">Contraseña</label>
              <input type="password" name="pass" placeholder="Introduzca su contraseña" required>
              
              <input type="submit" value="loguin" name="verificar">
              <a href="crearusuario.html">Crear Usuario</a>
            </form>
        </div>
    </body>
</html>
