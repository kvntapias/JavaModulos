<%-- 
    Document   : ActualizarEvento
    Created on : Jun 8, 2018, 9:55:07 AM
    Author     : APRENDIZ
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
        <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Dosis' rel='stylesheet' type='text/css'>
        <link href="" rel="icon">
        <script src="https://code.jquery.com/jquery-2.2.2.min.js"></script>
    </head>
    <body>
        <%!
            int id;
       %>
        <!--HEADER-->
        <div class="header-top">
            <div class="wrap">
                <div class="logo">
                    <!--<a href="inicio.html"><img src="images/logo.png" height="100" width="290" /></a>-->
                </div>
                <div class="cssmenu">
                    <nav id="nav">
                        <a href="#nav" title="Abir Menu">Show</a>
                        <a href="#" title="Ocultar Menu">Hide</a>
                        <ul class="clearfix">
                            <li><a href="../AdminEventos.html">Volver</a></li>
                            <li class="active"><a href="registroEvento.html">Publicar</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="clear"></div>
                <h2 class="head"> 
                    Encuentra <span class="m_1">los Principales</span> Eventos en Medellin <span class="m_1"></span></h2>
            </div>
        </div>
        <%
            //Capturo el evento
            int id = Integer.parseInt(request.getParameter("id"));
            conexion con = new conexion();
            Connection conec = con.Conectar();
            PreparedStatement ps;
            ResultSet rs;
            ps = conec.prepareStatement("select * from evento Where idue=?");
            ps.setObject(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {

        %>
        <!--MAIN-->
        <div class="main">
            <div class="wrap">
                <div class="section group">
                    <div class="cont span_2_of_blog">
                        <div class="login-title">
                            <h4 class="title">Publicar Evento</h4>
                            <div id="loginbox" class="loginbox">
                                <form action="../../ModuloEventos/Controlador/actualizarevento.jsp" method="post" name="login" id="login-form" enctype="multipart/form-data">
                                    <fieldset class="input">

                                        <p>
                                            <!--titulo evento-->
                                            <input type="text" name="titulo" class="inputbox" size="18" autocomplete="on" placeholder="Titulo de Evento" title="Titulo principal del evento">
                                        </p>

                                        <!--Descripcion-->
                                        <label > Descripcion </label>
                                        <p>

                                            <textarea placeholder="descripción" id="descripcion"  name="descripcion" class="inputbox"   maxlength="500" title="Añade una descripcion"> </textarea>
                                        </p>
                                        <br>

                                        <select title="Selecciona una Categoria" name="categoria">
                                            <option value="" selected="selected" disabled title="Selecciona la categoria del Evento" >Categoria</option>
                                            <option value="Deportes">Deportes</option>
                                            <option value="Entretenimiento">Entretenimiento</option>
                                            <option value="Tecnologia">Tecnologia</option>
                                            <option value="Teatro">Teatro</option>
                                            <option value="Festival">Festival</option>
                                            <option value="Concierto">Concierto</option>
                                        </select>
                                        <br>
                                        <!--INSERTAR POSTER O FOTO-->

                                        <!--Css Previsualizcion Img-->
                                        <style media="screen">
                                            #divInputLoad #previsual {
                                                width: 720px;
                                                margin: auto;
                                            }

                                            img {
                                                width: 250px;
                                                height: auto;
                                                border-radius: 10px;
                                            }
                                        </style>

                                        <!--INSERTAR POSTER O FOTO + javascript-->
                                        <div id="divInputLoad">
                                            <label> Imagen/Poster</label>
                                            <input name="imagen" id="file-upload" type="file" accept="image/*" >
                                            <div id="previsual"> </div>
                                        </div>
                                        <!-- Script Previsual Imagen-->
                                        <script>
                                            function readFile(input) {
                                                if (input.files && input.files[0]) {
                                                    var reader = new FileReader();

                                                    reader.onload = function (e) {
                                                        var filePreview = document.createElement('img');
                                                        filePreview.id = 'file-preview';
                                                        filePreview.src = e.target.result;
                                                        console.log(e.target.result);

                                                        var previewZone = document.getElementById('previsual');
                                                        previewZone.appendChild(filePreview);
                                                    }

                                                    reader.readAsDataURL(input.files[0]);
                                                }
                                            }

                                            var fileUpload = document.getElementById('file-upload');
                                            fileUpload.onchange = function (e) {
                                                readFile(e.srcElement);
                                            }
                                        </script>
                                        <br>
                                        <!--Ubicacion-->
                                        <p>
                                            <input type="text" name="ubicacion" class="inputbox" size="18" autocomplete="on" required placeholder="Ubicación" maxlength="32">
                                        </p>
                                        <br>
                                        <!--fecha evento-->
                                        <p>
                                            <label > Fecha de Realizacion </label>
                                            <input type="date" name="fecha" class="inputbox" size="18" autocomplete="on" required placeholder="dd/mm/aaaa">
                                        </p>
                                        <br>
                                        <p>
                                            <!--Hora_inicio-->
                                            <label > Hora de Inicio </label>
                                            <input type="time" name="horaI" class="inputbox" size="18" autocomplete="on" placeholder="Hora de Inicio"></p>

                                        <br>
                                        <p>
                                            <!--fin-->
                                            <label > Hora de Finalizacion </label>
                                            <input type="time" name="horaF" class="inputbox" size="18" autocomplete="on" placeholder="Hora de Finalización"></p>

                                        <br>
                                        <p>
                                            <input type="text" name="entidad" class="inputbox" size="18" autocomplete="on" required placeholder="Entidad Organizadora" maxlength="32">
                                        </p>

                                        <!--EVENTO DE PAGO/GRATIS-->
                                        <br>

                                        <select name="tipo">
                                            <option value="" selected="selected" disabled >Tipo</option>
                                            <option value="gratis">Gratuito</option>
                                            <option value="pago">Pago</option>
                                        </select>
                                        <br>
                                        <!--boton publicar!-->
                                        <br>
                                        <input type="submit" name="Submit" class="button" value=Publicar>
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
                        <li class="active"><a href="inicio.html">Inicio</a></li>
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
