<%-- 
    Document   : sidebar
    Created on : 22/05/2019, 03:09:22 AM
    Author     : Patrick
--%>

<nav class="navbar-default navbar-static-side" role="navigation">
  <div class="sidebar-collapse">
    <ul class="nav metismenu" id="side-menu">
      <li class="nav-header">
        <div class="dropdown profile-element"> 
          <span>
              <center><img alt="image" src="../imagenes/Univ-San-Marcos.png" style="height: 60px"/></center>
          </span>
          <a data-toggle="dropdown" class="dropdown-toggle" href="#">
            <span class="clear"> 
                <center><span class="block m-t-xs"> 
                 <% String dato =(String)session.getAttribute("servletMsg");%>
                 <% System.out.println(dato);%>     
                <strong class="font-bold"><%= dato %></strong>
              </span> 
              <span class="text-muted text-xs block">Bienvenido
              </span> 
                    </center>
            </span> 
          </a>
          <!-- <ul class="dropdown-menu animated fadeInRight m-t-xs">
            <li><a href="profile.html">Profile</a></li>
            <li><a href="contacts.html">Contacts</a></li>
            <li><a href="mailbox.html">Mailbox</a></li>
            <li class="divider"></li>
            <li><a href="<?= site_url('admin/auth/logout'); ?>">Cerrar sessión</a></li>
          </ul> -->
        </div>
        <div class="logo-element">
                DD
        </div>
      </li>
      <li>
        <a href="/ProyectoCalidad/admin/index.jsp"><i class="fa fa-th"></i> <span class="nav-label">Inicio</span><span class="fa arrow"></span></a>
      </li>
      <li>
        <a href=""><i class="fa fa-clock-o"></i> <span class="nav-label">Datos</span><span class="fa arrow"></span></a>
        
        <ul class="nav nav-second-level">
          <li><a href="/ProyectoCalidad/admin/vistaadmi.jsp" style="padding-left: 22px;"><i class="fa fa-circle-o"></i> DATOS DE ADMINISTRADOR</a></li>
        </ul>
      </li>
      <li>
        <a href=""><i class="fa fa-list-alt"></i> <span class="nav-label">Ver Horarios</span><span class="fa arrow"></span></a>
        
        <ul class="nav nav-second-level">
          <li><a href="/ProyectoCalidad/admin/vistaprofesores.jsp" style="padding-left: 22px;"><i class="fa fa-circle-o"></i>Horarios de Profesores</a></li>
        </ul>
      </li>
    </ul>
  </div>
</nav>