<%-- 
    Document   : navbar
    Created on : 22/05/2019, 03:09:54 AM
    Author     : Patrick
--%>

<div class="row border-bottom">
    <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
        </div>
        <ul class="nav navbar-top-links navbar-right">
            <li>
                <span class="m-r-sm text-muted welcome-message">Sistema de Disponibilidad Docente</span>
            </li>
            <li>
                <a href="../indexcalidad.jsp">
                    <i class="fa fa-sign-out"></i> Cerrar Sesión
                    <%//session.invalidate();%>
                </a>
            </li>
        </ul>
    </nav>
</div>