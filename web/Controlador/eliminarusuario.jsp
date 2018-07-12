
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entity.Usuario"%>
<%@page import="DAO.DAOUsuario"%>

<meta http-equiv='refresh' content='1; url=../EliminarUsuario.html'>
<%
    int res;
    DAOUsuario dao = new DAOUsuario();
    Usuario u = new Usuario();
    String usern = request.getParameter("usuario");
    u.setNombreus(usern);
    res = dao.eliminarUsuario(u);
    if (res>0) {
            out.print("Usuario Eliminado");
        }else{
           out.print("no eliminado");  
    }
%>