

<%@page import="java.io.IOException"%>
<%@page import="javax.servlet.ServletException;"%>
<%@page import="javax.servlet.annotation.WebServlet;"%>
<%@page import="javax.servlet.http.HttpServlet;"%>
<%@page import="javax.servlet.http.HttpServletRequest;"%>
<%@page import="javax.servlet.http.HttpServletResponse;"%>

<%@page import="entity.Usuario"%>
<%@page import="DAO.DAOUsuario"%>

//Registro de usuario
<% DAOUsuario dao = new DAOUsuario();
    Usuario u = new Usuario();
    String usern = request.getParameter("nombreus");
    String nomb = request.getParameter("nombres");
    String ape = request.getParameter("apellidos");
    String corr = request.getParameter("correo");
    String pass = request.getParameter("password");

    u.setNombreus(usern);
    u.setNombres(nomb);
    u.setApellidos(ape);
    u.setCorreo(corr);
    u.setContraseña(pass);
    dao.registrarUsuario(u);
    /*redirecciona al login*/
    String ready = "Usuario registrado Correctamente";
    out.print(ready);
    response.sendRedirect("../login.html");
%>