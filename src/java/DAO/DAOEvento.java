package DAO;

import entity.Evento;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import utils.conexion;

public class DAOEvento {

    //Metodo para eliminar un evento
    public int eliminarEvento(Evento e) {
        int res = 0;
        conexion con = new conexion();
        Connection conec = con.Conectar();
        try {
            PreparedStatement st = conec.prepareStatement("delete from evento where ide=?");
            st.setInt(1, e.getId());
            res = st.executeUpdate();
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return res;
    }
    //Mostrar todos los eventos
    public LinkedList<Evento> obtener() throws IOException {
        ResultSet rs = null;
        PreparedStatement statement = null;
        conexion con = new conexion();
        Connection conec = con.Conectar();
        LinkedList<Evento> listaEventos = new LinkedList<Evento>();
        try {
            statement = conec.prepareStatement("select ide, titulo, categoria, descripcion, imagen, ubicacion, fecha, horaI, horaF, tipo, entidad  from evento");
            rs = statement.executeQuery();
            InputStream is = null;
            while (rs.next()) {    
                Evento e = new Evento();
                e.setId(rs.getInt(1));
                e.setTitulo(rs.getString(2));
                e.setCategoria(rs.getString(3));
                e.setDescripcion(rs.getString(4));
                is = rs.getBinaryStream(5);
                BufferedImage bi = ImageIO.read(is);
                
                e.setImagen(rs.getBinaryStream(5));
                
                e.setUbicacion(rs.getString(6));
                e.setFecha(rs.getString(7));        
                e.setHoraInicio(rs.getString(8));
                e.setHoraFIn(rs.getString(9));
                e.setTipo(rs.getString(10));
                e.setEntidad(rs.getString(11));
                listaEventos.add(e);
            }
            con.Desconectar();
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch(IOException ex){ex.printStackTrace();}
        return listaEventos;
    }   
}

