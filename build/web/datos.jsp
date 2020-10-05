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
                    <img class="img-fluid mx-auto mb-2" src="img/udea.png" alt="">
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
                                    <img src="${estudiante.foto}"  width="50" height="60"> 
                                </div>
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
                                <div class="form-group">
                                    <label for="InputMaterias"><h4 class="mb-0">Materias matriculadas</h4></label>
                                    <input class="form-control" readonly name="materias" type="String" placeholder="" required value="${estudiante.materias}">
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
                
                    </form>  
                </div>
                <div></div>
            </section>
        </div>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="js/resume.min.js"></script>
    </body>
</html>