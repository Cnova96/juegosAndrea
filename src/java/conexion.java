import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class conexion {
    
 
	
	 private final String baseDatos = "id18781272_videojuegoss";
         private final String servidor = "jdbc:mysql://localhost/" + baseDatos;
         private final String usuario = "id18781272_adelacruz";
         private final String clave = "AndyCaro753*";
	
	
	public Connection conectar(){
            Connection cn = null;
            
            try{
                Class.forName("com.mysql.jbc.Driver");
                cn = DriverManager.getConnection(servidor, usuario, clave);
            }catch(Exception e){
                System.out.println("Error al conectar" + e.getMessage());
            }
            return cn;
           
        }
	

    
    
   }
    
  