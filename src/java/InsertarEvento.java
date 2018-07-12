import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import utils.conexion;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@WebServlet("/InsertarEvento")
@MultipartConfig(maxFileSize = 16177215)    // Tamaño del archivo imagen de 16MB
public class InsertarEvento extends HttpServlet {
    //Metodo con servlet para Insertar un evento
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // Obtener valores del formulario
        conexion con = new conexion();
        Connection conec = con.Conectar();
        String titulo = request.getParameter("titulo");
        String categoria = request.getParameter("categoria");
        String descripcion = request.getParameter("descripcion");
        String ubicacion = request.getParameter("ubicacion");
        String fecha = request.getParameter("fecha");
        String horaI = request.getParameter("horaI");
        String horaF = request.getParameter("horaF");
        String tipo = request.getParameter("tipo");
        String entidad = request.getParameter("entidad");

        InputStream inputStream = null; 
        Part filePart = request.getPart("imagen");
        if (filePart != null) {
            inputStream = filePart.getInputStream();
        }
        String message = null; 
        try {
            PreparedStatement st = conec.prepareStatement("INSERT INTO evento ("
                    + "titulo,"
                    + " categoria,"
                    + " descripcion,"
                    + " imagen, "
                    + "ubicacion,"
                    + "fecha,"
                    + "horaI,"
                    + "horaF,"
                    + "tipo,"
                    + "entidad) values (?,?,?,?,?,?,?,?,?,?)");
            st.setString(1, titulo);
            st.setString(2, categoria);
            st.setString(3, descripcion);
            if (inputStream != null) {
                st.setBlob(4, inputStream);
            }
            st.setString(5, ubicacion);
            st.setString(6, fecha);
            st.setString(7, horaI);
            st.setString(8, horaF);
            st.setString(9, tipo);
            st.setString(10, entidad);
            int row = st.executeUpdate();
            if (row > 0) {
                message = "Evento Registrado";
            } else{
                message = "Evento no Registrado";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (con != null) {
                // cerrar conexion
                try {
                    con.Desconectar();
                } catch (Exception ex) {
                    System.out.println(ex);
                }
            }
            //Envio el mensaje segun valores retornados
            request.setAttribute("Message", message);
            // Redireccionar al Jsp para imprimir mensaje
            getServletContext().getRequestDispatcher("/ModuloEventos/Controlador/registroevento.jsp").forward(request, response);
        }
    }
}
