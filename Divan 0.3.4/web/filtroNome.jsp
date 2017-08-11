<%-- 
    Document   : teste
    Created on : 31/07/2017, 09:17:53
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
            MotoristaDAO dao = new MotoristaDAO();
            
            List<Motorista> lista;
            //Verificar se veio algo do filtro,
            //Se vier eu filtro por nome 
            //caso contrário eu trago todos os professores
            if (request.getParameter("txtFiltro")!=null){
                String txtFiltro = request.getParameter("txtFiltro");
                lista = dao.listar(txtFiltro);
            }else{
                lista = dao.listar();
            }
        %>
        <h1>Listar</h1>
        <form action="filtroNome.jsp" method="post">
            <input type="text" name="txtFiltro"/>
            <input type="submit" value="Pesquisar"/><br/>
        </form>
        <table>
            <tr>
                <th>id</th>
                <th>nome</th>
            </tr>
            <%
                for (Motorista item : lista) {
            %>
            <tr>
                <td><%=item.getIdmotorista()%></td>
                <td><%=item.getNome()%></td>
                <td>
            </tr>
            <%
                }
            %>
        </table>


    </body>
</html>
