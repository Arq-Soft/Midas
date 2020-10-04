<%-- 
    Document   : admin
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
                        <a class="nav-link js-scroll-trigger" href="#experience">INFORMACIÓN</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="index.jsp">SALIR</a>
                    </li>
                </ul>
            </div>
        </nav>



        <div class="container-fluid p-0">
            <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">
                <center><h2 class="mb-3">INFORMACIÓN</h2></center>
                <div class="container">
                    <form name="personal" action="MenuServlet" method="POST">
                        <div class="card card-register mx-auto mt-5">
                            <div class="card-header"><h4 class="mb-0">Información personal</h4></div>
                            <div class="card-body">
                                <div class="form-group">
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <label for="InputNombres"><h4 class="mb-0">Nombres</h4></label>
                                            <input class="form-control"  name="nombres" type="text" aria-describedby="nombres" required placeholder="" value="${estudiante.nombres}">
                                        </div>
                                        <div class="col-md-6">
                                            <label for="InputApellidos"><h4 class="mb-0">Apellidos</h4></label>
                                            <input class="form-control"  name="apellidos" type="text" aria-describedby="apellidos" required placeholder="" value="${estudiante.apellidos}">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="InputNacimientoCiudad"><h4 class="mb-0">Documento de identidad</h4></label>
                                    <input class="form-control" readonly name="idEstudiante" type="text" aria-describedby="documento"  placeholder="" value="${estudiante.idEstudiante}" >
                                </div>
                                <div class="form-group">
                                    <label for="InputNacimientoCiudad"><h4 class="mb-0">Ciudad de nacimiento</h4></label>
                                    <input class="form-control"  name="ciudadNac" type="text" aria-describedby="nacimientoCiudad" required placeholder="" value="${estudiante.ciudadNac}">
                                </div>
                                <div class="form-group">
                                    <label for="InputResidenciaCiudad"><h4 class="mb-0">Ciudad de residencia</h4></label>
                                    <input class="form-control"  name="residencia" type="text" aria-describedby="residenciaCiudad" required placeholder="" value="${estudiante.residencia}">
                                </div>
                                <div class="form-group">
                                    <label for="InputEdad"><h4 class="mb-0">Edad</h4></label>
                                    <input class="form-control"  name="edad" type="number" aria-describedby="edad" placeholder="" required value="${estudiante.edad}">
                                </div>
                                <div class="form-group">
                                    <label for="InputEmail"><h4 class="mb-0">Correo</h4></label>
                                    <input class="form-control"  name="correo" type="email" aria-describedby="email" placeholder="" required value="${estudiante.correo}">
                                </div>
                                <div class="form-group">
                                    <label for="InputTeléfono"><h4 class="mb-0">Teléfono</h4></label>
                                    <input class="form-control"  name="telefono" type="number" placeholder="" required value="${estudiante.tel}">
                                </div>
                            </div>
                                 <div class="card-body">
                                <center><input class="btn btn-primary btn-block"  style="width: 25%;" type="submit" name="action" value="Borrar"></center>
                                 </div>
                                 <div class="card-body">
                                <center><input class="btn btn-primary btn-block"  style="width: 25%;" type="submit" name="action" value="Editar"></center>
                                 </div>
                        </div>
                    </form>
                </div>
                <div class="container">
                    <form name="checkbox" onchange="studyHandler()">
                        <div class="card card-register mx-auto mt-5">
                            <div class="card-header"><h4 class="mb-0">Información académica</h4></div>
                            <div class="card-body">
                                <h4 class="mb-0"> Estudios realizados</h4>
                                <div class="card card-register mx-auto mt-4">
                                    <div class="form-row">
                                        <div class="col-md-6">

                                            <label class="container_checkbox"><h4 class="mb-0">Preescolar</h4>
                                                <input type="checkbox"  id="check0">
                                                <span class="checkmark" ></span>
                                            </label>

                                            <label class="container_checkbox"><h4 class="mb-0">Básica</h4>
                                                <input type="checkbox" id="check1">
                                                <span class="checkmark"></span>
                                            </label>

                                            <label class="container_checkbox"><h4 class="mb-0">Media</h4>
                                                <input type="checkbox" id="check2">
                                                <span class="checkmark"></span>
                                            </label>

                                            <label class="container_checkbox"><h4 class="mb-0">Superior</h4>
                                                <input type="checkbox" id="check3">
                                                <span class="checkmark"></span>
                                            </label>

                                        </div>
                                        <div class="col-md-6">
                                            <label class="container_checkbox"><h4 class="mb-0">Posgrado</h4>
                                                <input type="checkbox"id="check4" >
                                                <span class="checkmark"></span>
                                            </label>

                                            <label class="container_checkbox"><h4 class="mb-0">Doctorado</h4>
                                                <input type="checkbox" id="check5">
                                                <span class="checkmark"></span>
                                            </label>

                                            <label class="container_checkbox"><h4 class="mb-0">Otros</h4>
                                                <input type="checkbox" id="check6">
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </form>  
                </div>
                <div></div>
                <div class="container">
                    <form name="preescolar">
                        <div class="card card-register mx-auto mt-5">
                            <div class="card-header"><h4 class="mb-0">Educación preescolar</h4></div>
                            <div class="card-body" id="preescolar" style="display: none">                  
                                <div class="form-group">
                                    <label for="nombreInstPreesc"><h4 class="mb-0">Nombre de la institución</h4></label>
                                    <input class="form-control" readonly name="nombre" type="text" aria-describedby="nombreInstPreesc" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="idInstPreesc"><h4 class="mb-0">Identificación de la institución</h4></label>
                                    <input class="form-control" readonly name="idAcademia" type="text" aria-describedby="idInstPreesc" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="inicioInstPreesc"><h4 class="mb-0">Fecha de inicio</h4></label>
                                    <input class="form-control" readonly name="fechaInicio" type="date" aria-describedby="inicioInstPreesc" >
                                </div>
                                <div class="form-group">
                                    <label for="finInstPreesc"><h4 class="mb-0">Fecha de terminación</h4></label>
                                    <input class="form-control" readonly name="fechaFin" type="date" aria-describedby="finInstPreesc" >
                                </div>
                                <div class="form-group">
                                    <label for="tipoInstPreesc"><h4 class="mb-0">Tipo de institución</h4></label>
                                    <input class="form-control" readonly name="tipo" type="text" aria-describedby="tipoInstPreesc" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="categoríaInstPreesc"><h4 class="mb-0">Categoría institución</h4></label>
                                    <input class="form-control" readonly name="categoria" type="text" aria-describedby="categoríaInstPreesc" placeholder="">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="container">
                    <form name="basica">
                        <div class="card card-register mx-auto mt-5">
                            <div class="card-header"><h4 class="mb-0">Educación básica</h4></div>
                            <div class="card-body" id="basica"  style="display: none">
                                <div class="form-group">
                                    <label for="nombreInstBásica"><h4 class="mb-0">Nombre de la institución</h4></label>
                                    <input class="form-control" readonly name="nombre" type="text" aria-describedby="nombreInstBásica" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="idInstBásica"><h4 class="mb-0">Identificación de la institución</h4></label>
                                    <input class="form-control" readonly name="idAcademia" type="text" aria-describedby="idInstBásica" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="inicioInstBásica"><h4 class="mb-0">Fecha de inicio</h4></label>
                                    <input class="form-control" readonly name="fechaInicio" type="date" aria-describedby="inicioInstBásica" >
                                </div>
                                <div class="form-group">
                                    <label for="finInstBásica"><h4 class="mb-0">Fecha de terminación</h4></label>
                                    <input class="form-control" readonly name="fechaFin" type="date" aria-describedby="finInstBásica" >
                                </div>
                                <div class="form-group">
                                    <label for="tipoInstBásica"><h4 class="mb-0">Tipo de institución</h4></label>
                                    <input class="form-control" readonly name="tipo" type="text" aria-describedby="tipoInstBásica" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="categoríaInstBásica"><h4 class="mb-0">Categoría institución</h4></label>
                                    <input class="form-control" readonly name="categoria" type="text" aria-describedby="categoríaInstBásica" placeholder="">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="container">
                    <form name="media">
                        <div class="card card-register mx-auto mt-5">
                            <div class="card-header"><h4 class="mb-0">Educación media</h4></div>
                            <div class="card-body" id="media"  style="display: none">
                                <div class="form-group">
                                    <label for="nombreInstMedia"><h4 class="mb-0">Nombre de la institución</h4></label>
                                    <input class="form-control" readonly name="nombre" type="text" aria-describedby="nombreInstMedia" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="idInstMedia"><h4 class="mb-0">Identificación de la institución</h4></label>
                                    <input class="form-control" readonly name="idAcademia" type="text" aria-describedby="idInstMedia" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="inicioInstMedia"><h4 class="mb-0">Fecha de inicio</h4></label>
                                    <input class="form-control" readonly name="fechaInicio" type="date" aria-describedby="inicioInstMedia" >
                                </div>
                                <div class="form-group">
                                    <label for="finInstMedia"><h4 class="mb-0">Fecha de terminación</h4></label>
                                    <input class="form-control" readonly name="fechaFin" type="date" aria-describedby="finInstMedia" >
                                </div>
                                <div class="form-group">
                                    <label for="tipoInstMedia"><h4 class="mb-0">Tipo de institución</h4></label>
                                    <input class="form-control" readonly name="tipo" type="text" aria-describedby="tipoInstMedia" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="categoríaInstMedia"><h4 class="mb-0">Categoría institución</h4></label>
                                    <input class="form-control" readonly name="categoria" type="text" aria-describedby="categoríaInstMedia" placeholder="">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="container">
                    <form name="superior">
                        <div class="card card-register mx-auto mt-5">
                            <div class="card-header"><h4 class="mb-0">Superior</h4></div>
                            <div class="card-body" id="superior"  style="display: none">
                                <div class="form-group">
                                    <label for="nombreInstPreg"><h4 class="mb-0">Nombre de la institución</h4></label>
                                    <input class="form-control" readonly name="nombre" type="text" aria-describedby="nombreInstPreg" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="idInstPreg"><h4 class="mb-0">Identificación de la institución</h4></label>
                                    <input class="form-control" readonly name="idAcademia" type="text" aria-describedby="idInstPreg" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="títuloPreg"><h4 class="mb-0">Título obtenido</h4></label>
                                    <input class="form-control" readonly name="titulo" type="text" aria-describedby="títuloPreg" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="inicioInstPreg"><h4 class="mb-0">Fecha de inicio</h4></label>
                                    <input class="form-control" readonly name="fechaInicio" type="date" aria-describedby="inicioInstPreg" >
                                </div>
                                <div class="form-group">
                                    <label for="finInstPreg"><h4 class="mb-0">Fecha de terminación</h4></label>
                                    <input class="form-control" readonly name="fechaFin" type="date" aria-describedby="finInstPreg" >
                                </div>
                                <div class="form-group">
                                    <label for="tipoInstPreg"><h4 class="mb-0">Tipo de institución</h4></label>
                                    <input class="form-control" readonly name="tipo" type="text" aria-describedby="tipoInstPreg" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="categoríaInstPreg"><h4 class="mb-0">Categoría institución</h4></label>
                                    <input class="form-control" readonly name="categoria" type="text" aria-describedby="categoríaInstPreg" placeholder="">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="container">
                    <form name="posgrado">
                        <div class="card card-register mx-auto mt-5">
                            <div class="card-header"><h4 class="mb-0">Posgrado</h4></div>
                            <div class="card-body" id="posgrado" style="display: none" >
                                <div class="form-group">
                                    <label for="nombreInstPos"><h4 class="mb-0">Nombre de la institución</h4></label>
                                    <input class="form-control" readonly name="nombre" type="text" aria-describedby="nombreInstPos" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="idInstPos"><h4 class="mb-0">Identificación de la institución</h4></label>
                                    <input class="form-control" readonly name="idAcademia" type="text" aria-describedby="idInstPos" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="títuloPos"><h4 class="mb-0">Título obtenido</h4></label>
                                    <input class="form-control" readonly name="titulo" type="text" aria-describedby="títuloPos" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="inicioInstPos"><h4 class="mb-0">Fecha de inicio</h4></label>
                                    <input class="form-control" readonly name="fechaInicio" type="date" aria-describedby="inicioInstPos" >
                                </div>
                                <div class="form-group">
                                    <label for="finInstPos"><h4 class="mb-0">Fecha de terminación</h4></label>
                                    <input class="form-control" readonly name="fechaFin" type="date" aria-describedby="finInstPos" >
                                </div>
                                <div class="form-group">
                                    <label for="tipoInstPos"><h4 class="mb-0">Tipo de institución</h4></label>
                                    <input class="form-control" readonly name="tipo" type="text" aria-describedby="tipoInstPos" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="categoríaInstPos"><h4 class="mb-0">Categoría institución</h4></label>
                                    <input class="form-control" readonly name="categoria" type="text" aria-describedby="categoríaInstPos" placeholder="">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="container">
                    <form name="phd">
                        <div class="card card-register mx-auto mt-5">
                            <div class="card-header"><h4 class="mb-0">Doctorado</h4></div>
                            <div class="card-body" id="phd" style="display: none">
                                <div class="form-group">
                                    <label for="nombreInstDoc"><h4 class="mb-0">Nombre de la institución</h4></label>
                                    <input class="form-control" readonly name="nombre" type="text" aria-describedby="nombreInstDoc" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="idInstDoc"><h4 class="mb-0">Identificación de la institución</h4></label>
                                    <input class="form-control" readonly name="idAcademia" type="text" aria-describedby="idInstDoc" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="títuloDoc"><h4 class="mb-0">Título obtenido</h4></label>
                                    <input class="form-control" readonly name="titulo" type="text" aria-describedby="títuloDoc" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="inicioInstDoc"><h4 class="mb-0">Fecha de inicio</h4></label>
                                    <input class="form-control" readonly name="fechaInicio" type="date" aria-describedby="inicioInstDoc" >
                                </div>
                                <div class="form-group">
                                    <label for="finInstDoc"><h4 class="mb-0">Fecha de terminación</h4></label>
                                    <input class="form-control" readonly name="fechaFin" type="date" aria-describedby="finInstDoc" >
                                </div>
                                <div class="form-group">
                                    <label for="tipoInstDoc"><h4 class="mb-0">Tipo de institución</h4></label>
                                    <input class="form-control" readonly name="tipo" type="text" aria-describedby="tipoInstDoc" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="categoríaInstDoc"><h4 class="mb-0">Categoría institución</h4></label>
                                    <input class="form-control" readonly name="categoria" type="text" aria-describedby="categoríaInstDoc" placeholder="">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="container">
                    <form name="otros">
                        <div class="card card-register mx-auto mt-5">
                            <div class="card-header"><h4 class="mb-0">Otros estudios</h4></div>
                            <div class="card-body" id="otros"  style="display: none">
                                <div class="form-group">
                                    <label for="nombreInstOtro"><h4 class="mb-0">Nombre de la institución</h4></label>
                                    <input class="form-control" readonly name="nombre" type="text" aria-describedby="nombreInstOtro" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="idInstOtro"><h4 class="mb-0">Identificación de la institución</h4></label>
                                    <input class="form-control" readonly name="idAcademia" type="text" aria-describedby="idInstOtro" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="títuloOtro"><h4 class="mb-0">Título obtenido</h4></label>
                                    <input class="form-control" readonly name="titulo" type="text" aria-describedby="títuloOtro" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="inicioInstOtro"><h4 class="mb-0">Fecha de inicio</h4></label>
                                    <input class="form-control" readonly name="fechaInicio" type="date" aria-describedby="inicioInstOtro" >
                                </div>
                                <div class="form-group">
                                    <label for="finInstOtro"><h4 class="mb-0">Fecha de terminación</h4></label>
                                    <input class="form-control" readonly name="fechaFin" type="date" aria-describedby="finInstOtro" >
                                </div>
                                <div class="form-group">
                                    <label for="tipoInstOtro"><h4 class="mb-0">Tipo de institución</h4></label>
                                    <input class="form-control" readonly name="tipo" type="text" aria-describedby="tipoInstOtro" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="categoríaInstOtro"><h4 class="mb-0">Categoría institución</h4></label>
                                    <input class="form-control" readonly name="categoria" type="text" aria-describedby="categoríaInstOtro" placeholder="">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>        
            </section>
        </div>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="js/resume.min.js"></script>
    </body>
</html>
