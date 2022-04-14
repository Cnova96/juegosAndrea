

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="prestamos.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>PRESTAMOS</title>
    </head>
    <body>
        
    <div id="menu">
                    <ul>
                        <li><a href="administracion.html" title="Inicio">Inicio</a></li>
                        <li><a href="" title="prestamos" class ="active">Prestamos</a></li>
                    </ul>
    </div>
        
        <div class="usuario">
            
            <h1>Prestamos</h1>
            <form>
             
                <div class="datable-container">
                    <div class="header-tools">
                        
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
                              <th>Fecha de Prestamo</th>
                              <th>¿Devuelto?</th>
                              <th>Fecha de Devolución</th>
                              
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
