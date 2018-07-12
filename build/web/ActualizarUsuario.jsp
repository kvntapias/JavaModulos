<%-- 
    Document   : ActualizarUsuario
    Created on : 6/06/2018, 07:27:12 PM
    Author     : kvn
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOUsuario" %>
<%@page import="entity.Usuario" %>
<%@page import="utils.conexion" %>


<!DOCTYPE html>
<html>
    <head>
        <title>Eventos Medellin | EventNow</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Dosis' rel='stylesheet' type='text/css'>
        <link href="images/logo2.png" rel="icon">
    </head>

    <body>
        <%!
            int id;
       %>
        <!--HEADER--> 
        <div class="header-top">
            <div class="wrap">
                <div class="logo">
                    <a href="index.jsp.html"><img src="images/logo.png" alt="" /></a>
                </div>
                <div class="cssmenu">
                    <nav id="nav" role="navigation">
                        <a href="#nav" title="Abir Menu">Show</a>
                        <a href="#" title="Ocultar Menu">Hide</a>
                        <ul class="clearfix">
                            <li><a href="VerUsuarios.jsp">Volver</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="clear"></div>

            </div>
        </div>

        <%
            //Capturo el usuario
            int id = Integer.parseInt(request.getParameter("id"));
            conexion con = new conexion();
            Connection conec = con.Conectar();
            PreparedStatement ps;
            ResultSet rs;
            ps = conec.prepareStatement("select * from usuario Where idu=?");
            ps.setObject(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {

        %>
        <!--FORMULARIO DE Actualizar--> 
        <div class="main">   
            <div class="wrap">
                <div class="section group">
                    <div class="cont span_2_of_blog">
                        <div class="login-title">
                            <h4 class="title">Actualizar Usuario</h4>
                            <div id="loginbox" class="loginbox">
                                <form action="Controlador/Update.jsp" method="post" name="login" id="login-form">
                                    <fieldset class="input">
                                        <input type="hidden" name="variable">
                                        <p>
                                            <br>
                                            <input value="<%=rs.getString("username")%>" type="text" name="nombreus" readonly="true" class="inputbox" size="18" autocomplete="off" maxlength="32" required placeholder="Nombre de usuario">
                                            <br>
                                            <br>
                                            <!--nombres-->
                                            <input value="<%=rs.getString("nombres")%>" type="text" name="nombres" class="inputbox" size="18" autocomplete="off" maxlength="32" required placeholder="Nombres" >
                                        <p>
                                            <br>
                                            <!--apellidos-->
                                            <input value="<%=rs.getString("apellidos")%>" type="text" name="apellidos" class="inputbox" size="18" autocomplete="off" maxlength="32" required placeholder="Apellidos">
                                        <p>
                                            <br>
                                            <!--correo electronico-->
                                            <input value="<%=rs.getString("correo")%>" type="text" name="correo" class="inputbox" size="18" autocomplete="off" maxlength="32" required placeholder="Correo Electronico">
                                        </p>

                                        <p>
                                            <br>
                                            <input type="submit" name="Submit" class="button" value="Actualizar">
                                    </fieldset>
                                </form>
                                        <%
                                            }
                                        %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>

        <!--FOOTER-->
        <div class="footer">
            <div class="wrap">
                <div class="footer-menu">
                    <ul>
                        <li class="active"><a href="index.html">Inicio</a></li>
                        <li><a href="#">Acerca de Nosotros</a></li>
                        <li><a href="#">Terminos de Servicio</a></li>
                    </ul>
                </div>
                <div class="footer-bottom">
                    <div class="copy">
                        <p>© 2018 <a href="" target="_blank"> EventNow Todos los derechos reservados</a></p>
                    </div>

                    <!--Redes-->
                    <div class="social">
                        <ul>
                            <li class="facebook"><a href="#"><span> </span></a></li>
                            <li class="twitter"><a href="#"><span> </span></a></li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </body>

</html>

