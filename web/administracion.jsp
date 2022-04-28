
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="admin.css" rel="stylesheet" type="text/css"/>
        <title>ADMINISTRACIÓN</title>
    </head>
    <body>
        <header class="admin">

            <h1>Administración</h1>
                    
            <form acction="srvusuario?accion=verificar" POST>
                               
                <div id="menu">
                    <ul>
                        <li><a href="#" title="Inicio" class="active">Inicio</a></li>
                    </ul>
                </div>
                
                <div id="main">

                    <a href="ModificarAdmin.jsp" class="rainbow rainbow-1">Modificar Cuenta Administrador</a>
                    <a href="ConsultarUs.jsp" class="rainbow rainbow-2">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspConsultar Usuarios&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
                    <a href="prestamos.jsp" class="rainbow rainbow-3">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspConsultar Prestamos&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
                    <a href="videojuego.jsp" class="rainbow rainbow-4" type="submit" name="verificar">Administración de Videojuegos</a>
                    
               <nav>
                   <div class="navicon">
                       <div></div>
                           
                   </div>
                   <div class="boton">
                  <input type="submit" value="Cerrar Sección" name="verificar">
                  </div>
               </nav>
                    
                </div>
                
               
            </form>
        </header>
    </body>
</html>
