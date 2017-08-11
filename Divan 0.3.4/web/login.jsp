<%-- 
    Document   : index
    Created on : 20/07/2017, 09:01:01
    Author     : Lucas
--%>

<%@page import="java.util.List"%>
<%@page import="dao.MotoristaDAO"%>
<%@page import="modelo.Motorista"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="dao.Conexao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/jquery.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/javascript.js" type="text/javascript"></script>


        <div class="navbar-wrapper">
            <div class="container-fluid">
                <nav class="navbar navbar-fixed-top">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#"></a>

                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="index.jsp" class="">Home</a></li>
                                <li class=" dropdown">
                                    <a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Departments <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li class=" dropdown">
                                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">View Departments</a>
                                        </li>
                                        <li><a href="#">Add New</a></li>
                                    </ul>
                                </li>
                                <li><a href="addnew.html">Add New</a></li>
                                <li class=" dropdown"><a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Managers <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">View Managers</a></li>
                                        <li><a href="#">Add New</a></li>
                                    </ul>
                                </li>
                                <li class=" dropdown"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Staff <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">View Staff</a></li>
                                        <li><a href="#">Add New</a></li>
                                        <li><a href="#">Bulk Upload</a></li>
                                    </ul>
                                </li>
                                <li class=" down"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">HR <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Change Time Entry</a></li>
                                        <li><a href="#">Report</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="nav navbar-nav pull-right">
                                <li class=" dropdown"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Signed in as  <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Change Password</a></li>
                                        <li><a href="#">My Profile</a></li>
                                    </ul>
                                </li>
                                <li class=""><a href="#">Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- ================ INICIA FORMULARIO DE LOGIN ============================================================== -->    
        <%

            List<Motorista> lista;

            MotoristaDAO dao = new MotoristaDAO();

            String txtEmail = request.getParameter("txtEmail");
            String txtSenha = request.getParameter("txtPassword");
            String txtTipoUsuario = request.getParameter("radio2");        

            lista = dao.listar(txtEmail, txtSenha, txtTipoUsuario);

            if (txtEmail != null || txtSenha != null) {
                for (Motorista item : lista) {
                    if ((item.getEmail().equals(txtEmail)) && (item.getSenha().equals(txtSenha)) && 
                       (item.getTipoUsuario().equals(txtTipoUsuario))) {
                        if(item.getTipoUsuario().equals("aluno")){
                        response.sendRedirect("alunoLogado.jsp");
                        break;
                        } else{
                             response.sendRedirect("paginaMotorista.jsp");
                             break;
                        }
                    } else {
                        break;
                      } 
                } 
            }  

        %>
        <div class="container">
            <div class="row" style="margin-top:60px">
                <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                    <form method="post" action="login.jsp">
                        <fieldset>
                            <h2>ENTRAR</h2>

                            <hr class="colorgraph">
                            <div class="form-group">
                                <input type="email" name="txtEmail" id="email" class="form-control input-lg" placeholder="E-mail">
                            </div>
                            <div class="form-group">
                                <input type="password" name="txtPassword" id="password" class="form-control input-lg" placeholder="Senha">
                            </div>
                            
                            <div class="radio radio-danger" >
                                <input type="radio" name="radio2" id="radio3" value="aluno" required="true">
                                <label for="radio3">
                                    Aluno
                                </label>
                            </div>
                            <div class="radio radio-danger">
                                <input type="radio" name="radio2" id="radio4" value="motorista" required="true" >
                                <label for="radio4">
                                    Motorista
                                </label>                              
                            </div> 
                            
                            
                            <span class="button-checkbox">
                                <button type="button" class="btn" data-color="info">Lembra Me</button>
                                <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
                                <a href="" class="btn btn-link pull-right">Esqueceu a Senha?</a>
                            </span>

                            <hr class="colorgraph">
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <button type="submit" class="btn btn-lg btn-success btn-block" value="Entrar" >
                                        <span class="glyphicon glyphicon-send"></span>
                                        Entrar
                                    </button>                         
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <a href="registrar.jsp" type="button" class="btn btn-lg btn-primary btn-block" >
                                        <span class="glyphicon glyphicon-list-alt"></span>
                                        Registrar
                                    </a>                                     
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>          
    </body>
</html>
