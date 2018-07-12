<%@page import="DAO.DAOUsuario" %>
<%
    DAOUsuario op = new DAOUsuario();
    String nombre = null;
    String contra = null;
    if (request.getParameter("enviar") != null) {
        nombre = request.getParameter("usuario");
        contra = request.getParameter("pass");
        HttpSession sesion = request.getSession();
        switch (op.loginUSuario(nombre, contra)) {
            case 1:
                sesion.setAttribute("user", nombre);
                sesion.setAttribute("nivel", "1");
                out.write("Usuario normal");
                break;
            case 2:
                sesion.setAttribute("user", nombre);
                sesion.setAttribute("nivel", "2");
                out.write("Usuario admin");
                response.sendRedirect("../inicio.html");
                break;

            default:
                out.write("Usuario o contraseña incorrecta");
                response.sendRedirect("../inicio.html");
                break;
        }
    }
%>

