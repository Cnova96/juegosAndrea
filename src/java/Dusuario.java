
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Dusuario extends conexion {
   public usuario identificar(usuario user) throws Exception{
       
       usuario usu = null;
       conexion con; 
       Connection cn = null; 
       Statement st = null; 
       ResultSet rs = null; 
       
       String sql = "Select * from usuarios" + "where Nombre = '"+ user.getNombre() +"' "
                    + "AND Contraseña = '"+ user.getContraseña() +"'";
       
       con = new conexion();
       try{
           cn = con.conectar();
           st = cn.createStatement();
           rs = st.executeQuery(sql);
           if(rs.next() == true){
               usu = new usuario();
               usu.setCedula(rs.getInt("Cedula"));
               usu.setNombre("Nombre");
               usu.setTipo("Tipo");
               usu.setContraseña("Contraseña");
           }
       }catch(Exception e){
           System.out.println("Erro" + e.getMessage());
       }finally{
           if(rs !=null && rs.isClosed() == false){
               rs.close();
           }
            cn = null;
       }
      return usu;
   }
}
