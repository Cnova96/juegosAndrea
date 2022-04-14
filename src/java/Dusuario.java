
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Dusuario extends conexion {

    public Usuario identificar(Usuario user) throws Exception {

        Usuario usu = null;
        conexion con;
        Connection cn = null;
        Statement st = null;
        ResultSet rs = null;

        String sql = "Select * from usuarios where Nombre = '" + user.getNombre() + "' "
                + "AND password = '" + user.getPass() + "'";

        con = new conexion();
        try {
            cn = con.conectar();
            st = cn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                usu = new Usuario();
                usu.setCedula(rs.getInt("Cedula"));
                usu.setNombre(rs.getString("Nombre"));
                usu.setTipo(rs.getString("Tipo"));
                usu.setPass(rs.getString("password"));
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
