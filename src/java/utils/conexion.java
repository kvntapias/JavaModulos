package utils;

//IMPORTA LA LIBRERIA DE MYSQL D
import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Casa
 */

//SE CREA LAS VARIABLES DE CONEXION A LA BASE DE DATOS
public class conexion {
    
    private Connection conexion=null;
    //Servidor
    private String servidor="localhost";
    //Nombre de la base de datos
    private String database="2modulos";
    //Usuario de la base de datos
    private String usuario="root";
    //Contraseña
    private String password="";
    //Puerto de Conexion
    private String port="3306";
    //Ruta del driver + datos necesarios para que funcione
    private String url="jdbc:mysql://"+servidor+":"+port+"/"+database;
    
    //Metodo de tipo Connection para CONECTAR a la base de datos<
    public Connection Conectar(){
      try { 
          Class.forName("com.mysql.jdbc.Driver");
      conexion=(Connection) DriverManager.getConnection(url, usuario, password);
      System.out.println("Conexion a Base de Datos "+url+" . . . . .Ok");
      return conexion;
      } catch (Exception e){
          
          System.out.println("ERROR!"+e);}  //VARIABLE "e" indica que Tipo de Error es
      return null;
    }
    //Metodo para desconectar
    public void Desconectar(){
        try{ 
            this.conexion.close();
            System.out.println("DESCONECTADO");
        }catch (SQLException ex){
           System.out.println("ERROR AL CERRAR CN"+ex);
        } catch(NullPointerException e){
        System.out.println("La Conexion no Existe"+e);
        }
    }
}