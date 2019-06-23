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
            DATOS DEL ADMINISTRADOR
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
                                <div class="row">
                                    <div id="contratista"  class="col-md-12">
                                        <%--Inicia una capsula--%>
                                        <div class="col-md-6">    
                                            <div class="form-group">
                                                <label for="tratamiento">Nombres ::</label>
                                                
                                                <% String dato = (String) session.getAttribute("servletMsg");%>
                                                <% System.out.println(dato);%>
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%= dato%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                        <%--Inicia una capsula--%>
                                        <div class="col-md-6">    
                                            <div class="form-group">
                                                <label for="tratamiento">Apellido Paterno:</label>

                                                <% String apep = (String) session.getAttribute("servletMsg2");%>
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%= apep%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                        <%--Inicia una capsula--%>
                                        <div class="col-md-6">    
                                            <div class="form-group">
                                                <label for="tratamiento">Apellido Materno:</label>

                                                <% String apem = (String) session.getAttribute("servletMsg3");%>
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%= apem%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                        <%--Inicia una capsula--%>
                                        <div class="col-md-6">    
                                            <div class="form-group">
                                                <label for="tratamiento">NUMERO DNI:</label>

                                                <% String cod = (String)session.getAttribute("servletMsg4");%>
                                                
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%= cod%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                       
                              
                                        </div>  
                                    </div>
                                   
                                                    <hr>
                                    <%--ENVIAR FORMULARIO--%>
                                    <% String codigo = (String)session.getAttribute("servletMsg4");%>
                                    <% session.setAttribute("variable", codigo);%>
                                   
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

