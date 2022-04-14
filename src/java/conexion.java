
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class conexion {

    private final String baseDatos = "heroku_0033135795d2323";//"id18781272_videojuegoss";
    private final String servidor = "jdbc:mysql://" + "us-cdbr-east-05.cleardb.net"
            + "/" + baseDatos;//"jdbc:mysql://localhost/" + baseDatos;
    private final String usuario = "b65269fcb20d13";//"id18781272_adelacruz";
    private final String clave = "d572e009";//"AndyCaro753*";

    public Connection conectar() {
        Connection cn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection(servidor, usuario, clave);
        } catch (Exception e) {
            System.out.println("Error al conectar" + e.getMessage());
        }
        return cn;

    }

}
