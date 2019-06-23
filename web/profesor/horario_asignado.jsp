<%-- 
    Document   : disponibilidad_horaria
    Created on : 22/05/2019, 03:33:33 AM
    Author     : Patrick
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.CursoDAO"%>
<script language="javascript">
    var baseurl = "<?php echo base_url(); ?>"
    window.onload = function () {
    }
</script> 

<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>
            Horario Asignado
            <small> / Bienvenido al Sistema</small>
        </h2>
    </div>
    <div class="col-lg-2">

    </div>
</div>
<!-- Main content -->
<div class="wrapper wrapper-content animated fadeInRight">  
    <div class="row">    
        <div class="col-lg-12">
            <div class="ibox float-e-margins">   
                <div class="ibox-content"> 
                    <section class="content">
                        <!-- Default box -->
                        <div class="box box-solid">
                            <div class="box-body">
                                
                                    <%--ENVIAR FORMULARIO--%>
                                    <% String codigo = (String)session.getAttribute("servletMsg4");%>
                                    <% session.setAttribute("variable", codigo);%>
                                    <form method="post" class="login-form" action="../Servlethorarioprofesor" >
                                    
                                        <div class="row">
                                            <div class="col-md-12 table-responsive">
                                                <table id="tbl_sectores_lista" class="table table-bordered table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th><center>Horas</center></th>
                                                    <th><center>Lunes</center></th>
                                                    <th><center>Martes</center></th>
                                                    <th><center>Miercoles</center></th>
                                                    <th><center>Jueves</center></th>
                                                    <th><center>Viernes</center></th>
                                                    <th><center>Sabado</center></th>
                                                    </tr>
                                                    </thead>
                                                    <div id="clase" name="clase">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <center><strong>8:00 - 9:00 am</strong></center>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                        <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                    </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <center><strong>9:00 - 10:00 am</strong></center>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                        <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                    </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <center><strong>10:00 - 11:00 am</strong></center>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                        <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                    </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <center><strong>11:00 - 12:00 am</strong></center>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                        <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                    </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <center><strong>12:00 - 1:00pm</strong></center>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                        <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                    </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <center><strong>1:00 - 2:00 pm</strong></center>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                        <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                    </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <center><strong>2:00 - 3:00 pm</strong></center>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                        <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                    </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <center><strong>3:00 - 4:00 pm</strong></center>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                        <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                    </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <center><strong>4:00 - 5:00 pm</strong></center>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                        <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                    </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <center><strong>5:00 - 6:00 pm</strong></center>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                        <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                    </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <center><strong>6:00 - 7:00 pm</strong></center>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                        <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                    </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <center><strong>7:00 - 8:00 pm</strong></center>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                        <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                    </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <center><strong>8:00 - 9:00 pm</strong></center>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                        <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                    </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <center><strong>9:00 - 10:00 pm</strong></center>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                        <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                    </label>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <label> 
                                                                            <input name="L0" id="gestion" type="text" value="" disabled size = "15"> 
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </tbody>


                                                    </div>
                                                </table>
                                            </div>
                                        </div>
                                    </form>
                                </div>

                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                    </section>
                </div>
            </div>
        </div>
    </div>
</div>  

