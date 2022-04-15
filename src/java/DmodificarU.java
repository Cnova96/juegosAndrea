
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public class DmodificarU extends conexion {
      public usuarioc identificar(usuarioc user) throws Exception {
        usuarioc usu = null;
        conexion con;
        Connection cn = null;
        Statement st = null;
        ResultSet rs = null;
          

        con = new conexion();
        
      String sql = "Select * from usuarios where Nombre = '" + user.getNombre() + "' "
                + "AND password = '" + user.getPass() + "'";
      
        
        con = new conexion();
        try {
            cn = con.conectar();
            st = cn.createStatement();
            rs = st.executeQuery(sql);
            
                
            if (rs.next()) {
                
                usu = new usuarioc();
                
                usu.setCedula(rs.getInt("Cedula"));
                usu.setNombre(rs.getString("Nombre"));
                usu.setTipo(rs.getString("Tipo"));
                usu.setPass(rs.getString("password"));
                
                
                
                String sql2 = "update usuarios"
                + " values ('" + user.getNombre()+ "',"
                +  user.getCedula() + ","
                + "'" + user.getCorreo()+ "'" + ","
                + "'" + user.getPass2()+ "'" + ","
                + "'U'" + " where " + "Cedula = " + rs.getInt("cedula") +  ")";
                
                  rs = st.executeQuery(sql2);

                
            }

            
        } catch (Exception e) {
            System.out.println("Erro" + e.getMessage());
        } finally {
            if (rs != null && rs.isClosed() == false) {
                rs.close();
            }
            cn = null;
        }
        return usu;
          
    }
      
    
}
