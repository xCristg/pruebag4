<%-- 
    Document   : indexcalidad
    Created on : 21/05/2019, 08:58:36 PM
    Author     : danie
--%>

<%-- 
    Document   : login
    Created on : 22/05/2019, 03:44:37 AM
    Author     : Patrick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <link href="${pageContext.request.contextPath}/resources/public/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/public/font-awesome/css/font-awesome.css" rel="stylesheet">

        <link href="${pageContext.request.contextPath}/resources/public/css/animate.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/public/css/style.css" rel="stylesheet">
       
    </head>
<body class="gray-bg" background="#">
    
    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">SDD</h1>

            </div>
            <h3>Sistema de Disponibilidad Docente</h3>
            <p>
                <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
            </p>
            <form method="post" class="login-form"action="SrvContra" >
            <p>Iniciar Sesión</p>
                
            <div class="form-group">
                    <input type="text" name="usuario" id="usuario" class="form-control" placeholder="Usuario" required="">
                </div>
                <div class="form-group">
                    <input type="password" name="password" id="password" class="form-control" placeholder="Password" required="">
                </div>

                <input type="submit" name="submit" id="submit" class="btn btn-primary block full-width m-b" >
           </form>
                <p class="m-t"> <small>FISI 2019</small> </p>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/resources/public/js/jquery-2.1.1.js"></script>
    <script src="${pageContext.request.contextPath}/resources/public/js/bootstrap.min.js"></script>

</body>  
</html>
