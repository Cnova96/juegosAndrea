
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
                      <link href="usuario.css" rel="stylesheet" type="text/css"/>

        <title>VIDEOJUEGOS</title>
    </head>
    <body>
        
         <div id="menu">
                    <ul>
                        <li><a href="usuario.jsp" title="Inicio" Class="active">Inicio</a></li>
                    </ul>
         </div>

        <div class ="usuario"> 
        <h1>VIDEOJUEGOS PARA TODOS</h1>
        
    
    <from acction="srvusuario?accion=verificar">
 
          <div class="datable-container">
                    <div class="header-tools">
                        <div class="tools">
                            <ul>
                                <li><span><input type="checkbox"></span></li>
                                
                                <li>
                                    <button>
                                        <i class="material-icons">edit</i>
                                     
                                    </button>
                                </li>
                           
                            </ul>
                        </div>
                        <div class="search">
                            <input type="text" class="search-input">
                        </div>
                    </div>
                    <table class="datable">
                        <thead></thead>
                          <tr>
                            
                              <th></th>
                              <th>Nombre Videojuego</th>
                              <th>Codigo Videojuego</th>
                              <th>Codigo Ejemplar</th>
                              <th>Prestar</th>
                              
                          </tr> 
                          <tbody>
                              <tr>
                                  <td class="table-checkbox"><input type="checkbox"></td>
                                  
                              </tr>
                          </tbody>
                    </table>
                   
                    <div class="footer-tools">
                        <div class="list-items">
                           Registros
                           <select name="n-entries" id="n-entries" class="n-entries">
                               <option value="5">5</option>
                               <option value="10" selected>10</option>
                               <option value="15">15</option>
                           </select>
                           Seleccionar
                        </div>
                        
                        <div class="pages">
                            <ul>
                                <li><span class="active">1</span></li>
                                <li><button>2</button></li>
                                <li><button>3</button></li>
                                <li><button>4</button></li>
                                <li><span>...</span></li>
                                <li><button>9</button></li>
                                <li><button>10</button></li>
                            </ul>
                        </div>
                        
                    </div>
                    
                </div>
            <nav>
                   <div class="navicon">
                       <div></div>
                           
                   </div>
             
                   <div class="boton">
                   
                    <a href="modificaruser.jsp">Modificar Cuenta</a>
                    <a href ="index.jsp">Cerrar Sección</a>
                    </div>
             </nav>
        
         
    </from>
        
    </body>
</html>
