
public class comprobar {
    public static void main(String[] args){
        conexion c = new conexion(); 
        if(c.conectar() != null){
            System.out.println("Conexión Realizada");
        }else{
            System.out.println("Error en la Conexión");
        }
    }
}
