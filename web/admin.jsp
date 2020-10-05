<%-- 
    Document   : admin
    Created on : May 28, 2018, 11:56:58 AM
    Author     : alejandro.mesa2
--%>

<%@page import="com.midas.model.Estudiante"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Administración</title>
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="vendor/devicons/css/devicons.min.css" rel="stylesheet">
        <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
        <link href="css/resume.min.css" rel="stylesheet">
        <link href="css/checkbox.css" rel="stylesheet">
        <script src="js/adminControl.js"></script>
    </head>

    <body id="page-top">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">
                <span class="d-block d-lg-none">Principal</span>
                <span class="d-none d-lg-block">
                    <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="img/midas.png" alt="">
                </span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#about">INFORMACIÓN</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#experience">PERSONAS</a>
                    </li>               
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="index.jsp">SALIR</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container-fluid p-0">
            <section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
                <div class="my-auto">
                    <h1 class="mb-0">EMPRESA
                        <span class="text-primary">MIDAS</span>
                    </h1>
                    <br> </br>
                    <div class="subheading mb-5"> ADMINISTRACIÓN · SISTEMA ·
                    </div>
                    <p class="subheading mb-5">BIENVENIDO AL ÁREA ADMINISTRATIVA DE LA EMPRESA MIDAS. MEDIANTE ESTE SISTEMA DE ADMINISTRACIÓN DE LA INFORMACIÓN, SE PODRÁ GUARDAR LA VIDA ACADÉMICA DE UNA PERSONA Y PODER CONSULTAR LA MISMA. POR FAVOR, SI TIENE ALGÚN INCONVENIENTE, CONTACTE CON LOS CREADORES.</p> 
                    <ul class="list-inline list-social-icons mb-0">
                    </ul>
                </div>
            </section>

            <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">
                <center><h2 class="mb-3">Inscripción persona</h2></center>
                <div class="container">
                    <form name="personal" action="EstudianteServlet" method="POST">
                        <div class="card card-register mx-auto mt-5">
                            <div class="card-header"><h4 class="mb-0">Información personal</h4></div>
                            <div class="card-body">
                                <div class="form-group">
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <label for="InputNombres"><h4 class="mb-0">Nombres</h4></label>
                                            <input class="form-control" name="nombres" type="text" aria-describedby="nombres" placeholder=""  required>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="InputApellidos"><h4 class="mb-0">Apellidos</h4></label>
                                            <input class="form-control" name="apellidos" type="text" aria-describedby="apellidos" placeholder="" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputNacimientoCiudad"><h4 class="mb-0">Documento de identidad</h4></label>
                                    <input class="form-control" name="idEstudiante" type="text" aria-describedby="documento" placeholder=""  required>
                                </div>
                                <div class="form-group">
                                    <label for="InputNacimientoCiudad"><h4 class="mb-0">Ciudad de nacimiento</h4></label>
                                    <input class="form-control" name="ciudadNac" type="text" aria-describedby="nacimientoCiudad" placeholder=""  required>
                                </div>
                                <div class="form-group">
                                    <label for="InputResidenciaCiudad"><h4 class="mb-0">Ciudad de residencia</h4></label>
                                    <input class="form-control" name="residencia" type="text" aria-describedby="residenciaCiudad" placeholder=""  required>
                                </div>
                                <div class="form-group">
                                    <label for="InputEdad"><h4 class="mb-0">Edad</h4></label>
                                    <input class="form-control" name="edad" type="number" aria-describedby="edad" placeholder=""  required>
                                </div>
                                <div class="form-group">
                                    <label for="InputEmail"><h4 class="mb-0">Correo</h4></label>
                                    <input class="form-control" name="correo" type="email" aria-describedby="email" placeholder=""  required>
                                </div>
                                <div class="form-group">
                                    <label for="InputTeléfono"><h4 class="mb-0">Teléfono</h4></label>
                                    <input class="form-control" name="tel" type="number" placeholder="" required  >
                                </div>
                            </div>
                        </div>
                        <div class="card card-register mx-auto mt-5">
                            <div class="card-header"><h4 class="mb-0">Proceso de matricula</h4></div>
                            <div class="card-body">
                                <h4 class="mb-0">Materias ofertadas</h4>
                                <div class="card card-register mx-auto mt-4">
                                    <div class="form-row">
                                        <div class="col-md-6">

                                            <label class="container_checkbox"><h4 class="mb-0">Arquitectura de Software</h4>
                                                <input type="checkbox"  id="check0" name="materias" value="arquitectura">
                                                <span class="checkmark" ></span>
                                            </label>

                                            <label class="container_checkbox"><h4 class="mb-0">Comunicaciones</h4>
                                                <input type="checkbox" id="check1" name="materias" value="comunicaciones">
                                                <span class="checkmark"></span>
                                            </label>

                                            <label class="container_checkbox"><h4 class="mb-0">Fisíca Mecánica</h4>
                                                <input type="checkbox" id="check2" name="materias" value="fisica">
                                                <span class="checkmark"></span>
                                            </label>

                                            <label class="container_checkbox"><h4 class="mb-0">Modelos</h4>
                                                <input type="checkbox" id="check3" name="materias" value="modelos">
                                                <span class="checkmark"></span>
                                            </label>

                                        </div>
                                        <div class="col-md-6">
                                            <label class="container_checkbox"><h4 class="mb-0">Bases de Datos</h4>
                                                <input type="checkbox"id="check4" name="materias" value="bases">
                                                <span class="checkmark"></span>
                                            </label>

                                            <label class="container_checkbox"><h4 class="mb-0">Lógica y representación</h4>
                                                <input type="checkbox" id="check5" name="materias" value="logica">
                                                <span class="checkmark"></span>
                                            </label>

                                            <label class="container_checkbox"><h4 class="mb-0">Teoría de Lenguajes</h4>
                                                <input type="checkbox" id="check6" name="materias" value="teoria">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                        </div>
                        <div class="card-body">
                            <center> <input class="btn btn-primary btn-block"  style="width: 25%;" type="submit" name="action" value="Agregar"></center> 
                        </div>
                    </form>

                    <br>
                </div>
                <%-- 
                   <div class="container">

    </div>
                --%>

                <div></div>
            </section>


        </div>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="js/resume.min.js"></script>
    </body>
</html>