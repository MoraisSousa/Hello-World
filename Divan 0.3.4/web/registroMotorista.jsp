<%-- 
    Document   : registroMotorista
    Created on : 21/07/2017, 11:14:00
    Author     : Lucas
--%>

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
                return false;
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
        <div class="container">
            <div class="row" style="margin-top:60px">
                <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                    <form role="form" onsubmit="return confirmacao()">
                        <fieldset>
                            <h2>CADASTRO MOTORISTA</h2>

                            <hr class="colorgraph">
                            <div class="form-group">
                                <div class="dropdown">
                                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                        Selecione a Intituição
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                        <li><a href="#">Metrocamp</a></li>
                                        <li><a href="#">PUC I</a></li>
                                        <li><a href="#">PUC II</a></li>
                                        <li><a href="#">Unip</a></li>                                   
                                    </ul>
                                </div>                            
                            </div>












                            <div class="list-group">
                                <a href="#" class="list-group-item active">
                                    Cras justo odio
                                </a>

                                <a href="#" class="list-group-item">Dapibus ac facilisis in<span class="glyphicon glyphicon-trash"></span></a>
                                <a href="#" class="list-group-item">Morbi leo risus</a>
                                <a href="#" class="list-group-item">Porta ac consectetur ac</a>
                                <a href="#" class="list-group-item">Vestibulum at eros</a>
                            </div>













                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <span class="glyphicon glyphicon-list"></span>Sortable Lists
                                                <div class="pull-right action-buttons">
                                                    <div class="btn-group pull-right">
                                                        <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                                            <span class="glyphicon glyphicon-cog" style="margin-right: 0px;"></span>
                                                        </button>
                                                        <ul class="dropdown-menu slidedown">
                                                            <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-pencil"></span>Edit</a></li>
                                                            <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-trash"></span>Delete</a></li>
                                                            <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-flag"></span>Flag</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel-body">
                                                <ul class="list-group">
                                                    <li class="list-group-item">
                                                        <div class="checkbox">
                                                            <input type="checkbox" id="checkbox" />
                                                            <label for="checkbox">
                                                                List group item heading
                                                            </label>
                                                        </div>
                                                        <div class="pull-right action-buttons">
                                                            <a href="#"><span class="glyphicon glyphicon-pencil"></span></a>
                                                            <a href="#" class="trash"><span class="glyphicon glyphicon-trash"></span></a>
                                                            <a href="#" class="flag"><span class="glyphicon glyphicon-flag"></span></a>
                                                        </div>
                                                    </li>
                                                    <li class="list-group-item">
                                                        <div class="checkbox">
                                                            <input type="checkbox" id="checkbox2" />
                                                            <label for="checkbox2">
                                                                List group item heading 1
                                                            </label>
                                                        </div>
                                                        <div class="pull-right action-buttons">
                                                            <a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-pencil"></span></a>
                                                            <a href="http://www.jquery2dotnet.com" class="trash"><span class="glyphicon glyphicon-trash"></span></a>
                                                            <a href="http://www.jquery2dotnet.com" class="flag"><span class="glyphicon glyphicon-flag"></span></a>
                                                        </div>
                                                    </li>
                                                    <li class="list-group-item">
                                                        <div class="checkbox">
                                                            <input type="checkbox" id="checkbox3" />
                                                            <label for="checkbox3">
                                                                List group item heading 2
                                                            </label>
                                                        </div>
                                                        <div class="pull-right action-buttons">
                                                            <a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-pencil"></span></a>
                                                            <a href="http://www.jquery2dotnet.com" class="trash"><span class="glyphicon glyphicon-trash"></span></a>
                                                            <a href="http://www.jquery2dotnet.com" class="flag"><span class="glyphicon glyphicon-flag"></span></a>
                                                        </div>
                                                    </li>
                                                    <li class="list-group-item">
                                                        <div class="checkbox">
                                                            <input type="checkbox" id="checkbox4" />
                                                            <label for="checkbox4">
                                                                List group item heading 3
                                                            </label>
                                                        </div>
                                                        <div class="pull-right action-buttons">
                                                            <a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-pencil"></span></a>
                                                            <a href="http://www.jquery2dotnet.com" class="trash"><span class="glyphicon glyphicon-trash"></span></a>
                                                            <a href="http://www.jquery2dotnet.com" class="flag"><span class="glyphicon glyphicon-flag"></span></a>
                                                        </div>
                                                    </li>
                                                    <li class="list-group-item">
                                                        <div class="checkbox">
                                                            <input type="checkbox" id="checkbox5" />
                                                            <label for="checkbox5">
                                                                List group item heading 4
                                                            </label>
                                                        </div>
                                                        <div class="pull-right action-buttons">
                                                            <a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-pencil"></span></a>
                                                            <a href="http://www.jquery2dotnet.com" class="trash"><span class="glyphicon glyphicon-trash"></span></a>
                                                            <a href="http://www.jquery2dotnet.com" class="flag"><span class="glyphicon glyphicon-flag"></span></a>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="panel-footer">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <h6>
                                                            Total Count <span class="label label-info">25</span></h6>
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
                            </div>











                            <div class="form-group">
                                <input type="tel" name="cellPhone" id="cellPhone" required="true" class="form-control input-lg" placeholder="DDD/Celular">
                            </div>
                            <div class="form-group">
                                <input type="tel" name="phone" id="Phone"   required="true" class="form-control input-lg" placeholder="DDD/Tetefone">
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" id="password" required="true" class="form-control input-lg" placeholder="Senha" onchange="form.confirmPassword.pattern = this.value;">
                            </div>
                            <div class="form-group">
                                <input type="password" name="confirmPassword" id="confirmPassword" required="true" class="form-control input-lg" placeholder="Confirmar Senha">
                            </div>

                            <div class="radio radio-danger" >
                                <input type="radio" name="radio2" id="radio3" value="option1" required="true">
                                <label for="radio3">
                                    Aluno
                                </label>
                            </div>
                            <div class="radio radio-danger">
                                <input type="radio" name="radio2" id="radio4" value="option2" required="true" >
                                <label for="radio4">
                                    Motorista
                                </label>
                            </div>                        
                            <hr class="colorgraph">
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <input type="submit" class="btn btn-lg btn-success btn-block" value="Confirmar">
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <a href="login.jsp" class="btn btn-lg btn-primary btn-block">Cancelar</a>                                               
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>                 
    </body>
</html>
