<%-- 
    Document   : registrar
    Created on : 20/07/2017, 09:34:34
    Author     : Lucas
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Motorista"%>
<%@page import="dao.MotoristaDAO"%>
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
        <script src="bootstrap/js/jquery.mask.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/javascript.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap-notify.min.js" type="text/javascript"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#cellPhone').mask('(00) 00000-0000');
            });

            $(document).ready(function () {
                $('#Phone').mask('(00) 0000-0000');
            });
            function confirmacao() {

                $.notify({
                    // options
                    message: 'Cadastro realizado com sucesso'
                }, {
                    // settings
                    type: 'success'
                });
                return true;
            }
        </script>

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
            MotoristaDAO dao = new MotoristaDAO();

            List<Motorista> lista;
            //Verificar se veio algo do filtro,
            //Se vier eu filtro por nome 
            //caso contrário eu trago todos os professores

            String txtEmail = request.getParameter("txtEmail");
            lista = dao.listar(txtEmail);
            for (Motorista elem : lista) {
                if (elem.getEmail() == txtEmail) {
        %>
        <script>alert("Eu sou um alert!");</script>
        <%
                } else {
                    break;
                }
            }
        %>
        <div class="container">
            <div class="row" style="margin-top:60px">
                <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                    <form   method="post" action="registrar-ok.jsp">
                        <fieldset>
                            <h2>REGISTAR</h2>
                            <hr class="colorgraph">
                            <div class="form-group">
                                <input type="text" name="txtNome" id="name" required pattern="[a-z A-Z\s]+$" class="form-control input-lg" placeholder="Nome Completo">
                            </div>
                            <div class="form-group">
                                <input type="email" name="txtEmail" id="email" required="true" class="form-control input-lg" placeholder="E-mail">
                            </div>
                            <div class="form-group">
                                <input type="tel" name="txtCellPhone" id="cellPhone" required="true" class="form-control input-lg" placeholder="DDD/Celular">
                            </div>
                            <div class="form-group">
                                <input type="tel" name="txtPhone" id="Phone"   required="true" class="form-control input-lg" placeholder="DDD/Tetefone">
                            </div>
                            <div class="form-group">
                                <input type="password" name="txtPassword" id="password" required="true" class="form-control input-lg" placeholder="Senha" onchange="form.confirmPassword.pattern = this.value;">
                            </div>
                            <div class="form-group">
                                <input type="password" name="txtConfirmPassword" id="confirmPassword" required="true" class="form-control input-lg" placeholder="Confirmar Senha">
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

                            <hr class="colorgraph">
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">                                    
                                    <a href="#">
                                        <button type="submit" class="btn btn-lg btn-success btn-block" value="Confirmar" >
                                            <span class="glyphicon glyphicon-ok"></span>
                                            Confirmar
                                        </button>   
                                    </a>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">                                                                    
                                    <a href="login.jsp" type="button" class="btn btn-lg btn-danger btn-block">                                     
                                        <span class="glyphicon glyphicon-remove"></span>
                                        Cancelar                                    
                                    </a>
                                </div>
                            </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>                 
    </body>
</html>
