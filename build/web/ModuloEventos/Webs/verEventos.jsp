<%-- 
    Document   : verEventos
    Created on : 8/06/2018, 09:00:18 PM
    Author     : kvn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- 
    Document   : VerUsuarios
    Created on : 6/06/2018, 01:05:46 AM
    Author     : kvn
--%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.DAOEvento" %>
<%@page import="entity.Evento" %>
<!DOCTYPE html>
<html>
    <a
        <head>
         
            <link href="../../css/style.css" rel="stylesheet" type="text/css">
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Eventos Publicados</title>
            <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                                <li><a href="../../AdminEventos.html">Volver</a></li>
                            </ul>
                        </nav>
                    </div>

                    <div class="clear"></div>
                    <h2 class="head"><span class="m_1"></span>Eventos <span class="m_1"></span></h2>
                </div>
            </div>
            <div class="main">
                <div class="wrap">
                    <div class="section-group">
                    <%
                        DAOEvento op2 = new DAOEvento();
                        LinkedList<Evento> lista2 = op2.obtener();
                        for (int i = 0; i < lista2.size(); i++) {
                            out.println("<div class='tarjeta'>");
                            out.println("<div class='container'>");
                            out.println("<h1><b>" + lista2.get(i).getTitulo() + "</b></h1>");
                            out.println("<p>" + lista2.get(i).getDescripcion() + "</p>");
                            out.println("<h3 class='fecha'>" + lista2.get(i).getFecha());
                            out.println("<i class='fa fa-calendar'>" + "</i>");
                            out.println("</h3>");

                            out.println("<div class='delete'>");
                            out.println("<button>");
                            out.println("<a class='fa fa-trash-o' title='Eliminar Evento' href=\"../Controlador/eliminarevento.jsp?id=" + lista2.get(i).getId() + "\">Eliminar</a>");
                            out.println("</button>");
                            out.println("</div>");

                            out.println("</div>");
                            out.println("</div>");
                        }
                    %>


                    <!-- PLANTILLA TARJETAS-->
                    <!-- <div class="tarjeta">
                       <img src="img_avatar.png" class="imagen-evento" alt="imagen">
                       
                       <div class="container">
                           <h1><b>Titulo de Evento</b></h1> 
                           <p>Al contrario del pensamiento popular,
                               el texto de Lorem Ipsum no es simplemente
                               texto aleatorio. Tiene sus raices en 
                               una pieza cl´sica de la literatura del
                               Latin, que data del año 45... </p> 
                               <h3 class="fecha">
                                   <i class="fa fa-calendar"></i>
                                   Fecha
                               </h3>
                           <div class="delete">
                               <button>
                                   <i class="fa fa-trash-o"> Eliminar</i>
                               </button> 
                           </div>    
                       </div>
                   </div>
                    -->
                     </div>
                </div> 
            </div>
        </body>
</html>
