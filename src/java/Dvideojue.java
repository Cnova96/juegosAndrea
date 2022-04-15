import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Dvideojue extends conexion{
    
    public Vidoejuegos identificar(Vidoejuegos vid) throws Exception {
        
        Vidoejuegos vide = null;
        conexion con;
        Connection cn = null;
        Statement st = null;
        ResultSet rs = null;

        String sql = "insert into videojuegos" + 
                "values (" + vid.getCodigov() + "," +
                "'" + vid.getNombre() + "'" + "," +
                  vid.getCodigoej() + "," + "'" + vid.getImagen() + "'" + ");";

        con = new conexion();
        try {
            cn = con.conectar();
            st = cn.createStatement();
           
            if (vide != null) {
  
                 rs = st.executeQuery(sql);
            }
        } catch (Exception e) {
            System.out.println("Erro" + e.getMessage());
        } finally {
            if (rs != null && rs.isClosed() == false) {
                rs.close();
            }
            cn = null;
        }
        return vid;
    }
}