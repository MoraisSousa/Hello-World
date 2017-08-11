<%-- 
    Document   : registroMotorista
    Created on : 21/07/2017, 11:14:00
    Author     : Lucas
--%>

<%@page import="modelo.Instituicoes"%>
<%@page import="java.util.List"%>
<%@page import="dao.InstituicoesDAO"%>
<%-- 
    Document   : registrar
    Created on : 20/07/2017, 09:34:34
    Author     : Lucas
--%>

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
        <link href="bootstrap/css/tabelaFaculdade.css" rel="stylesheet" type="text/css"/>

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
                                <li class="active"><a href="#" class="">Home</a></li>
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
            InstituicoesDAO dao = new InstituicoesDAO();

            List<Instituicoes> lista = dao.listar();
        %>     





























        <div class="container">
            <div class="row" style="margin-top:60px">
                <div class="col-xs-12 col-sm-8 col-md-6  col-sm-offset-2 col-md-offset-3">
                    <form role="form" onsubmit="return confirmacao()">
                        <fieldset>
                            <h2>CADASTRO INSTITUIÇÕES</h2>

                            <hr class="colorgraph">
                            <div class="form-group col-md-4">
                                <div class="dropdown">
                                    <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                        Selecione a Intituição
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                        <%
                                            for (Instituicoes item : lista) {
                                        %>
                                        <li><a href="#"> <%= item.getNome()%> </a></li>  

                                        <%
                                            }
                                        %>
                                    </ul>
                                </div>                            
                            </div>
                            <div class="form-group col-md-4" >
                                <div class="dropdown">
                                    <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                        Selecione a Periodos
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                        <li><a href="#">MANHÃ</a></li>
                                        <li><a href="#">TARDE</a></li>
                                        <li><a href="#">NOTURNO</a></li>
                                        <li><a href="#">INTEGRAL</a></li>                                          
                                    </ul>
                                </div>                            
                            </div>
                            <div class="btn-group  col-md-4">
                                <button type="button" class="btn btn-info " >
                                    <span class="glyphicon glyphicon-send"></span>
                                    Inserir Instituição
                                </button>

                            </div>
                            <div class="col-md-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <span class="glyphicon glyphicon-list"></span>Instituições:                                                
                                    </div>
                                    <div class="panel-body">
                                        <ul class="list-group">
                                            <%
                                                for (Instituicoes item : lista) {
                                            %>
                                            <li class="list-group-item ">
                                                <input type="checkbox" id="checkbox"  />
                                                <div class="checkbox">
                                                    <%= item.getNome()%>
                                                </div>
                                                <div class="pull-right action-buttons">
                                                    <a href="#"></span></a>
                                                </div>
                                            </li> 
                                            <%
                                                }
                                            %>
                                        </ul>
                                        <div class="panel-footer">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <h6>
                                                        Total Count <span class="label label-info"> 25 </span></h6>
                                                </div>
                                                <div class="col-md-6">
                                                    <ul class="pagination pagination-sm pull-right">
                                                        <li class="disabled"><a href="javascript:void(0)">«</a></li>
                                                        <li class="active"><a href="javascript:void(0)">1 <span class="sr-only">(current)</span></a></li>
                                                        <li><a href="http://www.jquery2dotnet.com">2</a></li>
                                                        <li><a href="http://www.jquery2dotnet.com">3</a></li>
                                                        <li><a href="http://www.jquery2dotnet.com">4</a></li>
                                                        <li><a href="http://www.jquery2dotnet.com">5</a></li>
                                                        <li><a href="javascript:void(0)">»</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>                                           
                                </div>
                            </div>





                            <div class="col-md-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <span class="glyphicon glyphicon-list"></span>Instituições:                                                
                                    </div>
                                    <div class="panel-body">
                                        <ul class="list-group">
                                            <li class="list-group-item">
                                                <div class="checkbox">
                                                    Metrocamp (Noturno)
                                                </div>
                                                <div class="pull-right action-buttons">
                                                    <a href="#" class="trash"><span class="glyphicon glyphicon-trash"></span></a>
                                                </div>
                                            </li>                              
                                        </ul>
                                    </div>                                           
                                </div>
                            </div>


                            <hr class="colorgraph">
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">                                   
                                    <button type="submit" class="btn btn-lg btn-success btn-block" value="Confirmar" >
                                        <span class="glyphicon glyphicon-ok"></span>
                                        Confirmar
                                    </button>  
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <button type="submit" class="btn btn-lg btn-danger btn-block" value="Cancelar" >
                                        <span class="glyphicon glyphicon-remove"></span>
                                        Cancelar
                                    </button> 
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>                 
    </body>
</html>
