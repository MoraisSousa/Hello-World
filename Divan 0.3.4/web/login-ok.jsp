<%-- 
    Document   : login-ok
    Created on : 01/08/2017, 15:18:33
    Author     : Lucas
--%>

<%@page import="java.util.List"%>
<%@page import="dao.MotoristaDAO"%>
<%@page import="modelo.Motorista"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          List<Motorista> lista;

            MotoristaDAO dao = new MotoristaDAO();

            String txtEmail = request.getParameter("txtEmail");
            String txtPassword = request.getParameter("txtPassword");
            lista = dao.listar(txtEmail);
        %>
    </body>
</html>
