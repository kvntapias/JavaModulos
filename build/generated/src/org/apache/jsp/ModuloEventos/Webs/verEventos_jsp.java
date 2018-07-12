package org.apache.jsp.ModuloEventos.Webs;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.LinkedList;
import java.util.Iterator;
import java.util.List;
import java.util.ArrayList;
import DAO.DAOEvento;
import entity.Evento;

public final class verEventos_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <a\n");
      out.write("        <head>\n");
      out.write("            <meta http-equiv=\"refresh\" content=\"1\">\n");
      out.write("            <link href=\"../../css/style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("            <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("            <title>Usuarios</title>\n");
      out.write("            <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        </head>\n");
      out.write("        <body>\n");
      out.write("            <!--HEADER-->\n");
      out.write("            <div class=\"header-top\">  \n");
      out.write("                <div class=\"wrap\">\n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                        <a href=\"#\"><img src=\"images/logo.png\" alt=\"\" /></a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"cssmenu\">\n");
      out.write("                        <nav id=\"nav\">\n");
      out.write("                            <a href=\"#nav\" title=\"Abir Menu\">Show</a>\n");
      out.write("                            <a href=\"#\" title=\"Ocultar Menu\">Hide</a>\n");
      out.write("                            <ul class=\"clearfix\">\n");
      out.write("                                <li><a href=\"../../AdminEventos.html\">Volver</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </nav>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"clear\"></div>\n");
      out.write("                    <h2 class=\"head\"><span class=\"m_1\"></span>Eventos <span class=\"m_1\"></span></h2>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"main\">\n");
      out.write("                <div class=\"wrap\">\n");
      out.write("                    <div class=\"section-group\">\n");
      out.write("                        <!--Tabla-->\n");
      out.write("                        <table class=\"tabla-usuarios\">\n");
      out.write("                            <tr class=\"table-active\">\n");
      out.write("                                <th scope=\"col\">ID</th>\n");
      out.write("                                <th scope=\"col\">Titulo</th>\n");
      out.write("                                <th scope=\"col\">Categoria</th>\n");
      out.write("                                <th scope=\"col\">Descripcion</th>\n");
      out.write("                                <th scope=\"col\">Imagen/Poster</th>\n");
      out.write("                                <th scope=\"col\">Ubicacion</th>\n");
      out.write("                                <th scope=\"col\">Fecha</th>\n");
      out.write("                                <th scope=\"col\">H.Inicio</th>\n");
      out.write("                                <th scope=\"col\">H.Fin</th>\n");
      out.write("                                <th scope=\"col\">Tipo</th>\n");
      out.write("                                <th scope=\"col\">Entidad</th>\n");
      out.write("                                <th scope=\"col\">Opciones</th>\n");
      out.write("                            </tr>\n");
      out.write("                            ");

                                DAOEvento op = new DAOEvento();
                                LinkedList<Evento> lista = op.obtener();
                                for (int i = 0; i < lista.size(); i++) {
                                    out.println("<tr>");
                                    out.println("<td>" + lista.get(i).getId() + "</td>");
                                    out.println("<td>" + lista.get(i).getTitulo() + "</td>");
                                    out.println("<td>" + lista.get(i).getCategoria() + "</td>");
                                    out.println("<td>" + lista.get(i).getDescripcion() + "</td>");
                                    out.println("<td>" + lista.get(i).getImagen() + "</td>");
                                    out.println("<td>" + lista.get(i).getUbicacion() + "</td>");
                                    out.println("<td>" + lista.get(i).getFecha() + "</td>");
                                    out.println("<td>" + lista.get(i).getHoraInicio() + "</td>");
                                    out.println("<td>" + lista.get(i).getHoraFIn() + "</td>");
                                    out.println("<td>" + lista.get(i).getTipo() + "</td>");
                                    out.println("<td>" + lista.get(i).getEntidad() + "</td>");
                                    //out.println("<td><a class='btn btn-warning'  href=\"login.html?u="+lista.get(i).getId()+"\">Actualizar</a></td>");out.println("</tr>");
                                    out.println("<td><a class='btn-option'  href=\"ActualizarEvento.jsp?id=" + lista.get(i).getId() + "\">Actualizar</a></td>");
                                    out.println("<td><a class='btn-option'  href=\"../Controlador/eliminarevento.jsp?id=" + lista.get(i).getId() + "\">Eliminar</a></td>");
                                    out.println("</tr>");
                                }
                            
      out.write("\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                        \n");
      out.write("                    ");

                        DAOEvento op2 = new DAOEvento();
                        LinkedList<Evento> lista2 = op2.obtener();
                        for (int i = 0; i < lista2.size(); i++) {
                            out.println("<div class='tarjeta'>");
                            out.println("<div class='container'>");
                            out.println("<h1><b>"+ lista2.get(i).getTitulo()+"</b></h1>");
                            out.println("<p>"+lista2.get(i).getDescripcion()+"</p>");
                    
                            
                            out.println("</div>");
                            out.println("</div>");
                            }
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <div class=\"tarjeta\">\n");
      out.write("                        <img src=\"img_avatar.png\" class=\"imagen-evento\" alt=\"imagen\">\n");
      out.write("                        \n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <h1><b>Titulo de Evento</b></h1> \n");
      out.write("                            <p>Al contrario del pensamiento popular,\n");
      out.write("                                el texto de Lorem Ipsum no es simplemente\n");
      out.write("                                texto aleatorio. Tiene sus raices en \n");
      out.write("                                una pieza cl´sica de la literatura del\n");
      out.write("                                Latin, que data del año 45... </p> \n");
      out.write("\n");
      out.write("                                <h3 class=\"fecha\">\n");
      out.write("                                    <i class=\"fa fa-calendar\"></i>\n");
      out.write("                                    Fecha\n");
      out.write("                                </h3>\n");
      out.write("\n");
      out.write("                            <div class=\"delete\">\n");
      out.write("                                <button>\n");
      out.write("                                    <i class=\"fa fa-trash-o\"> Eliminar</i>\n");
      out.write("                                </button> \n");
      out.write("                            </div>    \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div> \n");
      out.write("            </div>\n");
      out.write("        </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
