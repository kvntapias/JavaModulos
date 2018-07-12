package DAO;

import entity.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.conexion;

/**
 *
 * @author APRENDIZ
 */

//Los metodos reciben un Objeto de la clase Usuario 
public class DAOUsuario {
    //Metodo para registrar Usuario (CREATE) 
    public void registrarUsuario(Usuario u) {
        conexion con = new conexion();
        Connection conec = con.Conectar();
        try {
            Statement st = conec.createStatement();
            String sql = "insert into usuario value("
                    + "'" + u.getId()
                    + "','" + u.getNombreus()
                    + "','" + u.getNombres()
                    + "','" + u.getApellidos()
                    + "', '" + u.getCorreo()
                    + "','" + u.getContraseña()
                    + "','" + u.getTipo()
                    + "')";
            st.executeUpdate(sql);
        } catch (SQLException ex) {
            System.out.println("Error" + ex);
            Logger.getLogger(DAOUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //Metodo para eliminar usuario (DELETE)
    public int eliminarUsuario(Usuario u) {
        int res = 0;
        conexion con = new conexion();
        Connection conec = con.Conectar();
        try {
            PreparedStatement st = conec.prepareStatement("delete from usuario where username=?");
            st.setString(1, u.getNombreus());
            res = st.executeUpdate();
        } catch (Exception e) {
        }
        return res;
    }
    //Metodo para Logear Usuario
    public int loginUSuario(String us, String pass) {
        conexion con = new conexion();
        Connection conec = con.Conectar();
        ResultSet rs;
        int nivel = 0;
        String sql = "select tipo from usuario where username = '" + us + "' and contraseña='" + pass + "'";
        try {
            Statement st = conec.prepareStatement(sql);
            rs = st.executeQuery(sql);
            while (rs.next()) {
                nivel = rs.getInt(1);
            }
            con.Desconectar();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return nivel;
    }
    //Metodo para mostrar todos los usuarios (READ)
    public LinkedList<Usuario> obtener() {
        ResultSet rs = null;
        PreparedStatement statement = null;
        conexion con = new conexion();
        Connection conec = con.Conectar();
        LinkedList<Usuario> listaUsuarios=new LinkedList<Usuario>();
        try {
            statement = conec.prepareStatement("select idu, username, nombres, apellidos, correo from usuario");
            rs = statement.executeQuery();
            while (rs.next()) {
                Usuario c = new Usuario();
                c.setId(rs.getInt(1));
                c.setNombreus(rs.getString(2));
                c.setNombres(rs.getString(3));
                c.setApellidos(rs.getString(4));
                c.setCorreo(rs.getString(5));
                listaUsuarios.add(c);
            }
            con.Desconectar();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return listaUsuarios;
    }
    //Metodo para Actualizar los Usuarios (UPDATE)
    public int actualizarUsuario(Usuario u){
        
        int res = 0;
        conexion con = new conexion();
        Connection conec = con.Conectar();
        try {
            PreparedStatement st = conec.prepareStatement("update usuario set nombres=?,apellidos=?,correo=? where username=?");
             st.setString(1, u.getNombres());
              st.setString(2, u.getApellidos());
               st.setString(3, u.getCorreo());
                 st.setString(4, u.getNombreus());
                 res = st.executeUpdate();
        } catch (Exception e) {
        }
        return res;
    }
}
