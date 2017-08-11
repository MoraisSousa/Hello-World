<%-- 
    Document   : registrar-ok
    Created on : 27/07/2017, 09:01:35
    Author     : Lucas
--%>
<%@page import="java.util.List"%>
<%@page import="modelo.Motorista"%>
<%@page import="dao.MotoristaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registro</title>
    </head>
    <body>
        <%

            List<Motorista> lista;

            MotoristaDAO dao = new MotoristaDAO();

            String txtEmail = request.getParameter("txtEmail");
            lista = dao.listar(txtEmail);

            boolean jaExiste = false;

            for (Motorista item : lista) {
                if (item.getEmail() == txtEmail);
                {
                    jaExiste = true;

                }
            }
            if (jaExiste == true) {
        %>
        <script>alert("email já cadastrado!");
            window.location.href = "registrar.jsp";
        </script>

        <%
        } else {
            String nome = request.getParameter("txtNome");
            String email = request.getParameter("txtEmail");
            String celular = request.getParameter("txtCellPhone");
            String telefone = request.getParameter("txtPhone");
            String senha = request.getParameter("txtPassword");
            String tipoUsuario = request.getParameter("radio2");

            Motorista obj = new Motorista();

            obj.setNome(nome);
            obj.setEmail(email);
            obj.setTelefone(celular);
            obj.setCelular(telefone);
            obj.setSenha(senha);
            obj.setTipoUsuario(tipoUsuario);
            dao.incluir(obj);
            if (tipoUsuario.equals("motorista")) {
        %>
        <script>
            window.location.href = "cadInstituicaoMotorista.jsp";
        </script>  
        <%
        } else {
        %>
        <script>
            window.location.href = "cadBairroMotorista.jsp";
        </script> 
        <%
                }
            }
        %>

        <h1>Motorista Cadastrado</h1>
        <h5>

        </h5>
        <div>

        </div>
    </body>
</html>
