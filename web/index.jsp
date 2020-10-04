<%-- 
Document   : index
Created on : May 28, 2018, 11:56:58 AM
Author     : alejandro.mesa2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Buscador</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/coming-soon.min.css" rel="stylesheet">
        <link href="css/coming-soon.css" rel="stylesheet">
    </head>
    <body>


        <div class="overlay"></div>

        <div class="masthead">
            <div class="masthead-bg"></div>
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-12 my-auto">
                        <div class="masthead-content text-white py-5 py-md-0">
                            <h1 class="mb-3">MIDAS</h1>
                            <p class="mb-5">NUESTRA MISIÓN ES FACILITAR LA  BÚSQUEDA Y CONTRIBUIR A LA RECOLECCIÓN DE LA INFORMACIÓN ACADÉMICA DE LAS PERSONAS.
                                <br> <strong>¿DESEAS REALIZAR ALGUNA BÚSQUEDA?</strong> <br> HAZLO DE FORMA SENCILLA.</p></br>
                            
                            <form action="MenuServlet" method="POST">
                            <div class="input-group input-group-newsletter">
                                <input type="text" class="form-control" name="idEstudiante" placeholder="INGRESA EL DOCUMENTO A BUSCAR (CC/TI)" aria-label="INGRESA EL DOCUMENTO A BUSCAR (CC/TI)" aria-describedby="basic-addon">
                                <div class="input-group-append">
                                    <input class="btn btn-secondary" type="submit" value="BUSCAR" name="action">
                                </div>
                            </div>
                            </form>
                            <br> </br>
                            <a href="login.jsp">ÁREA ADMINISTRATIVA</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="icons"> 
            <ul>
        </div>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/vide/jquery.vide.min.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/coming-soon.min.js"></script>

    </body>

</html>
