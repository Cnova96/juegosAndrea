

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="ConsultarUs.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
           <link rel="stylesheet" href="./style.css" type="text/css" media="all" />
        <title>ADMIN/USUARIOS</title>
    </head>
   <body>
        
    <div id="menu">
                    <ul>
                        <li><a href="administracion.jsp" title="Inicio">Inicio</a></li>
                        <li><a href="" title="usuarios" class ="active">Usuarios</a></li>
                    </ul>
    </div>
        
        <div class="usuario">
            
            <h1>Usuarios</h1>
            <form>
             
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
                              <th>Nombre</th>
                              <th>Cedula</th>
                              <th>Correo</th>
                              <th>Activo</th>
                              
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
          
            </form>
        </div>
    </body>
</html>
