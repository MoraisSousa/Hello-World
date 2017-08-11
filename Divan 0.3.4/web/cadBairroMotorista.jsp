<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Google Maps API v3: Busca de endere�o e Autocomplete - Demo</title>

        <link href="http://fonts.googleapis.com/css?family=Open+Sans:600" type="text/css" rel="stylesheet" />
        <link href="estilo.css" type="text/css" rel="stylesheet" />

        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
        <script type="text/javascript" src="jquery.min.js"></script>
        <script type="text/javascript" src="mapa.js"></script>
        <script type="text/javascript" src="jquery-ui.custom.min.js"></script>

    </head>

    <body>

        <div id="apresentacao">

            <h1>Google Maps API v3: Busca de endere�o e Autocomplete - Demo</h1>

            <form method="post" action="index.html">    
                <fieldset>

                    <legend>Google Maps API v3: Busca de endere�o e Autocomplete - Demo</legend>    

                    <div class="campos">
                        <label for="txtEndereco">Endere�o:</label>
                        <input type="text" id="txtEndereco" name="txtEndereco" />
                        <input type="button" id="btnEndereco" name="btnEndereco" value="Mostrar no mapa" />
                    </div>

                    <div id="mapa"></div>

                    <input type="submit" value="Enviar" name="btnEnviar" />

                    <input type="hidden" id="txtLatitude" name="txtLatitude" />
                    <input type="hidden" id="txtLongitude" name="txtLongitude" />

                </fieldset>
            </form>

            <div class="autores">
                <p>Criado por: <a href="http://twitter.com/rodolfoprr" target="_blank">Rodolfo Pereira</a> | Estilizado por: <a href="http://twitter.com/jofelipe_" target="_blank">Jonathan Felipe</a></p>
            </div>

        </div>

    </body>
</html>
