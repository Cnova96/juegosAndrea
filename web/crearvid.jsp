
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
                        <li><a href="administracion.jsp" title="Inicio">Inicio</a></li>
                        <li><a href="videojuego.jsp" title="crearvid">Administración de Videojuegos</a></li>
                        <li><a href="" title="crearvideoj" class ="active">Crear Videojuegos</a></li>
                    </ul>
    </div>
        
        <div class="usuario">
            
              <h1>Crear Videojuegos</h1>
              
              <form action="srvvideo?accion=verificar" method="POST">
                   <!--nombre videojuego-->
                <label for="nombrevid" >Nombre de Videojuego <b>*</b></label>
                <input name ="nombrevid" type="text" placeholder="Digite su nombre" required>
              
                <!--Código-->
                <label for="codigovid">Codigo Videojuego <b>*</b></label>
                <input name ="codigovid" type="number"  required placeholder="Digite su numero de cedula">
              
                <!--Ejemplar-->
                <label for="codigoej">Codigo Ejemplar <b>*</b></label>
                <input name="codigoej" type="number"  required placeholder="Digite su correo electronico">
              
            
              
                <!--botón-->
                 <input type="submit" value="Crear Videojuego" name="verificar">
                </form>
        </div>
   
    </body>
    
</html>
