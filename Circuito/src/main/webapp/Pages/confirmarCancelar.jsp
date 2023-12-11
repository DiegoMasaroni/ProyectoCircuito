<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <title> Circuito La Ca�ada</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="../CSS/Misestilos.css">
</head>

<body>

    <header class="position-sticky position-fixed fixed-top top-0 z-3">
        <nav class="navbar navbar-expand-lg bg-secondary">
            <div class="container ">
                <a href="../index.html">
                    <img src="../Assets/Img/motocross.png" width="40" height="40" alt="Icono de Motocross">
                </a>
                <a class="navbar-brand" href="../index.html"> Circuito La Ca�ada</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a href="https://www.facebook.com/groups/140119366109551" target="_blank">
                            <img src="../Assets/Img/fb.png" width="40" height="40" alt="Facebook">
                        </a>
                        <a class="nav-link active" aria-current="page" href="../#imagenes">Imagenes</a>
                        <a class="nav-link active" aria-current="page" href="../#servicios">Servicios</a>
                        <a class="nav-link active" aria-current="page" href="../#instructores">Instructores</a>
                        <a class="nav-link active" aria-current="page" href="../#escuela">Escuela</a>
                        <a class="nav-link active" aria-current="page" href="../#auspiciantes">Auspiciantes</a>

                    </div>
                </div>
            </div>
        </nav>
    </header>
    <main>
        <div class="container" id="feature-3"  style="color:#198754">
            <div class="row g-4 py-3 row-cols-1 row-cols-lg-3" id="cartas">
                <div class="col">
                    <div class="card border-success rounded-5 mb-3" style="width: 20rem; text-align: center;">
                        <div class="card-body">
                            <h5 class="card-title">Lunes a Jueves</h5>
                            <h6 class="card-title">Tiene un descuento</h6>
                            <h5 class="card-title">50%</h5>
                            <p class="card-text">*Documentaci�n del vehiculo requerida</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card border-success rounded-5 mb-3" style="width: 20rem;text-align: center;">
                        <div class="card-body">
                            <h5 class="card-title">Viernes, S�bados o Domingos</h5>
                            <h6 class="card-title">Tarifa completa</h6>
                            <h5 class="card-title"></h5>
                            <p class="card-text">*Documentaci�n del vehiculo requerida</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card border-success rounded-5 mb-3" style="width: 20rem;text-align: center;">
                        <div class="card-body">
                            <h5 class="card-title">Viernes y S�bado o </h5>
                            <h5 class="card-title">S�bado y Domingo </h5>
                            <h6 class="card-title">Tiene un descuento</h6>
                            <h5 class="card-title">20%</h5>
                            <p class="card-text">*Documentaci�n del vehiculo requerida</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- inicio del formulario -->
        <section>
            <h6 class="text-center">Realice su compra anticipada</h6>
            <h3 class="text-center">CONFIRME SU COMPRA</h3>
            <h6 class="text-center">Recibira su cup�n de pago en el mail especificado</h6>
            <form action="updateForm.jsp" class="container-fluid" style="width: 63%" >
                <div class="row mb-2" >
                    <div class="col">
                        <input id="nombre" name="nombre" value="<%=request.getParameter("nombre") %>" type="text" class="form-control"  placeholder="Nombre"
                            aria-label="First name">
                    </div>
                    <div class="col">
                        <input id="apellido" name="apellido" value="<%=request.getParameter("apellido") %>" type="text" class="form-control" placeholder="Apellido"
                            aria-label="Last name">
                    </div>
                </div>
                <div class="mb-2">
                    <input id="mail" name="mail" value="<%=request.getParameter("mail") %>" type="email" class="form-control" placeholder="nombre@dominio.com">
                </div>
                <div class="row">
                    <div class="col">
                        <label for="cantidad">Cantidad de entradas</label>
                        <input id="cantidad" name="cantidad" value="<%=request.getParameter("cantidad") %>" type="number" class="form-control" placeholder="M�ximo 9">
                    </div>
                    <div class="col">
                        <label for="estadia">Tipo de estad�a</label>
                        <select id="estadia" name="categoria"  class="form-select" aria-label="Default select example">
                            <option selected><%=request.getParameter("categoria") %></option>
                            <option value="1-Lunes a Jueves (50%)">1-Lunes a Jueves (50%)</option>
                            <option value="2-Viernes, S�bados o Domingo (Sin descuento%)">2-Viernes, S�bados o Domingo (Sin descuento%)</option>
                            <option value="3-Vie y S�b o S�b y Dom (20%)">3-Vie y S�b o S�b y Dom (20%)</option>
                        </select>
                    </div>
                </div>
                <br>
                <div class="alert alert-primary mb-0" role="alert">
						
                   Total a pagar: <span id="total" data-value="<%=request.getParameter("total") %>" class="text-danger"></span>	-->	
                 </div>  
                <br>
                <div class="row">
                     <div class="d-grid col-3 mx-auto">
                       <button class="btn btn-success" type="button" id="btnCosto">Calcular Costo</button>
                    </div>
                    <div class="d-grid col-3 mx-auto">
                       <button class="btn btn-success" type="button" id="btnDelete">Cancelar Compra</button>
                    </div>
                    <div class="d-grid col-3 mx-auto">
                        <button class="btn btn-success" type="submit" id="btnResumen">Modificar</button>
                        <!-- <button class="btn btn-success" type="submit" id="btnResumen">Resumen</button> -->
                    </div>
                    
                    <div class="d-grid col-3 mx-auto">
                        <button class="btn btn-success" type="button" id="btnResumen" onclick="location.href='../index.html'">Confirmar / Imprimir cup�n</button>
                        <!-- <button class="btn btn-success" type="submit" id="btnResumen">Resumen</button> -->
                    </div>
                    
                </div>
                <br>
                <br>

            </form>
        </section>


        <br>

    </main>
    <footer class="bg-secondary mt-5">
        <nav class="navbar  navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Preguntas frecuentes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Cont�ctanos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">T�rminos y Condiciones</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
    </footer>

    <!-- JavaScript Libraries -->
    <!--<script src="./JS/script.js"></script>-->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
        </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
        </script>
        
     <script src="../js/main.js"></script>
    <script src="../js/script.js"></script> 
    
</body>

</html>