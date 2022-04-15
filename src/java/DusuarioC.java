
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public class DusuarioC  extends conexion{

       public usuarioc identificar(usuarioc user) throws Exception {
        usuarioc usu = null;
        conexion con;
        Connection cn = null;
        Statement st = null;
        ResultSet rs = null;

        String sql = "insert into usuarios"
                + " values ('" + user.getNombre()+ "',"
                +  user.getCedula() + ","
                + "'" + user.getCorreo()+ "'" + ","
                + "'" + user.getPass()+ "'" + ","
                + "'U'" + ")";

        con = new conexion();
        
        try {
            cn = con.conectar();
            st = cn.createStatement();

            if (user != null) {
              
                st.executeUpdate(sql);
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
