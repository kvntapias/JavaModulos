<%-- 
    Document   : Update
    Created on : 6/06/2018, 09:38:06 PM
    Author     : kvn
--%>

<%@page import="entity.Usuario"%>
<%@page import="DAO.DAOUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--Redireccionar-->
<meta http-equiv='refresh' content='2; url=../VerUsuarios.jsp'>
<%
    DAOUsuario dao = new DAOUsuario();
    Usuario u = new Usuario();
    String user = request.getParameter("nombreus");
    String nomb = request.getParameter("nombres");
    String ape = request.getParameter("apellidos");
    String corr = request.getParameter("correo");
    u.setNombres(nomb);
    u.setApellidos(ape);
    u.setCorreo(corr);
    u.setNombreus(user);
    dao.actualizarUsuario(u);
    /*redirecciona al login*/
    out.write("Actualizado");
%>
