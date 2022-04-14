

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="crearvid.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>CREAR/VIDEOJUEGOS</title>
    </head>
     <body>
        
    <div id="menu">
                    <ul>
                        <li><a href="administración.html" title="Inicio">Inicio</a></li>
                        <li><a href="videojuego.html" title="crearvid">Administración de Videojuegos</a></li>
                        <li><a href="" title="crearvideoj" class ="active">Crear Videojuegos</a></li>
                    </ul>
    </div>
        
        <div class="usuario">
            
              <h1>Crear Videojuegos</h1>
              
              <form>
                   <!--nombre videojuego-->
                   <label for="nombrevid" >Nombre de Videojuego <b>*</b></label>
                <input type="text" placeholder="Digite su nombre" required>
              
                <!--Código-->
                <label for="codigovid">Codigo Videojuego <b>*</b></label>
                <input type="number"  required placeholder="Digite su numero de cedula">
              
                <!--Ejemplar-->
                <label for="codigoej">Codigo Ejemplar <b>*</b></label>
                <input type="number"  required placeholder="Digite su correo electronico">
              
                <!--Imagen-->
                <label for="imgaen">Imagen Videojuego <b>*</b></label>
                <input type="file" required accept="image/png, image/jpg">
              
                <!--botón-->
                 <input type="submit" value="Crear Videojuego">
                </form>
        </div>
   
    </body>
    
</html>
