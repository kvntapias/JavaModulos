<%-- 
    Document   : VerUsuarios
    Created on : 6/06/2018, 01:05:46 AM
    Author     : kvn
--%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.DAOUsuario" %>
<%@page import="entity.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
    </head>
    <body>
        <!--HEADER-->
        <div class="header-top">  
            <div class="wrap">
                <div class="logo">
                    <a href="#"><img src="images/logo.png" alt="" /></a>
                </div>
                <div class="cssmenu">
                    <nav id="nav">
                        <a href="#nav" title="Abir Menu">Show</a>
                        <a href="#" title="Ocultar Menu">Hide</a>
                        <ul class="clearfix">
                            <li><a href="AdmnUsuarios.html">Volver</a></li>
                        </ul>
                    </nav>
                </div>
            
       
        
        <div class="clear"></div>
        <h2 class="head"> Lista <span class="m_1">de</span> Usuarios <span class="m_1"></span></h2>
        </div>
         </div>
        <div class="main"
    <div class="wrap">
        <div class="section-group">
         <table class="tabla-usuarios">
            <tr class="table-active">
                <th scope="col">ID</th>
                <th scope="col">Nombre de usuario</th>
                <th scope="col">Nombres</th>
                <th scope="col">Apellidos</th>
                <th scope="col">Correo</th>
                <th scope="col">Opciones</th>
            </tr>
            <%
                DAOUsuario op = new DAOUsuario();
                //Recibo la lista de usuarios ejecutando el metodo obtener del DAO
                LinkedList<Usuario> lista = op.obtener();
                for (int i = 0; i < lista.size(); i++) {
                    out.println("<tr>");
                    out.println("<td>" + lista.get(i).getId() + "</td>");
                    out.println("<td>" + lista.get(i).getNombreus() + "</td>");
                    out.println("<td>" + lista.get(i).getNombres() + "</td>");
                    out.println("<td>" + lista.get(i).getApellidos() + "</td>");
                    out.println("<td>" + lista.get(i).getCorreo() + "</td>");
                    //out.println("<td><a class='btn btn-warning'  href=\"login.html?u="+lista.get(i).getId()+"\">Actualizar</a></td>");out.println("</tr>");
                    out.println("<td disabled><a class='btn-option'  href=\"ActualizarUsuario.jsp?id=" + lista.get(i).getId() + "\">Actualizar</a></td>");
                    out.println("</tr>");

                }
            %>
        </table>
    </div>
    </div>  
</div>

</body>
</html>
