<%-- 
    Document   : eliminarevento
    Created on : 9/06/2018, 12:51:53 AM
    Author     : kvn
--%>
<%@page import="DAO.DAOEvento"%>
<%@page import="entity.Evento" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
      int id;
%>
<%
    int filas = 0;
    int id = Integer.parseInt(request.getParameter("id"));
    DAOEvento op = new DAOEvento();
    Evento e = new Evento();
    e.setId(id);
    filas = op.eliminarEvento(e);
    if (filas>0) {
        out.write("Evento eliminado");
        //redireccionar 
          response.sendRedirect("../Webs/verEventos.jsp");  
        }else{
         out.write("Evento no eliminado");
    }
%>
