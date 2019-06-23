<%-- 
    Document   : disponibilidad_horaria
    Created on : 22/05/2019, 03:33:33 AM
    Author     : Patrick
--%>

<%@page import="DAO.CursoDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.profesorDAO"%>
<script language="javascript">
    var baseurl = "<?php echo base_url(); ?>"
    window.onload = function () {
    }
</script> 

<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>
            Horarios de Profesores
            <small> / Listado</small>
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
                                <hr>
                                <div class="row">
                                    <div class="col-md-12 table-responsive">
                                        <table id="tbl_sectores_lista" class="table table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th><center>Nº</center></th>
                                            <th><center>Codigo del Profesor</center></th>
                                            <th><center>Profesor</center></th>
                                            <th><center>Apellido Paterno</center></th>
                                            <th><center>Apellido Materno</center></th>
                                            <th><center>ESTADO DE HORARIO</center></th>
                                            <th><center>Ver</center></th>

                                            </tr>
                                            </thead>
                                            <div id="clase" name="clase">
                                                <tbody>
                                                    <% profesorDAO pro = new profesorDAO();
                                                        pro.initialize();
                                                        ResultSet resul = pro.listarProfesores();
                                                    int i = 1;
                                                    while (resul.next()) {%>
                                                    <tr>
                                                        <td>
                                                <center><%=i%></center>

                                                </td>
                                                <td>
                                                    <% String nombre = resul.getString("Nombres");%>
                                                <center><%=nombre%></center>
                                                </td>
                                                <td>
                                                    <% String cod = resul.getString("codigo_Profe");%>
                                                <center><%=cod%></center>
                                                </td>
                                                <td>
                                                    <% String apep = resul.getString("ApellidoP");%>
                                                <center><%=apep%></center>
                                                </td>

                                                <td>
                                                    <% String apem = resul.getString("ApellidoM");%>
                                                <center><%=apem%></center>
                                                </td>
                                                <td>
                                                    <% String hor = resul.getString("estadohorario");%>
                                                <center><%=hor%></center>
                                                </td>




                                                <td><center><form method="post" class="login-form" action="../srvprofesoresprueba" >
                                                        <input type="hidden" name="valor" value="<%=cod%>" />
                                                        <button value="<%=cod%>" type="submit" name="submit" id="submit" class="btn btn-primary block full-width m-b">Ver Horario</button>
                                                    </form></center></td>
                                                </tr>
                                                <%i++;%>
                                                <% } %>



                                                </tbody>


                                            </div>
                                        </table>
                                    </div>
                                </div>

                            </div>

                        </div>
                        <!-- /.box -->
                    </section>
                </div>
            </div>
        </div>
    </div>
</div>  


<div class="modal fade" id="modal_estado_parametro" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Ver Horario</h4>
            </div>
            <div class="modal-body">
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
                                                        <div class="col-md-6">    
                                                            <div class="form-group">
                                                                <label for="tratamiento">N° Horas:</label>
                                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6"> 
                                                            <div class="form-group">
                                                                <label for="cargo">Periodo:</label>
                                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled">
                                                            </div>
                                                        </div>
                                                    </div> 
                                                    <div id="contratista"  class="col-md-12">
                                                        <div class="col-md-6">    
                                                            <div class="form-group">
                                                                <label for="tratamiento">Total horas seleccionadas:</label>
                                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6"> 
                                                            <div class="form-group">
                                                                <label for="cargo">Total de Horas Faltantes:</label>
                                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled">
                                                            </div>
                                                        </div>
                                                    </div> 
                                                    <div id="contratista"  class="col-md-12">
                                                        <div class="col-md-6">    
                                                            <div class="form-group">
                                                                <label for="tratamiento">Curso 1:</label>
                                                                <select class="form-control">
                                                                    <option selected="selected">Seleccione Curso</option>
                                                                    <option>Curso</option>
                                                                    <option>Curso</option>
                                                                    <option>Curso</option>
                                                                    <option>Curso</option>
                                                                </select>    
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6"> 
                                                            <div class="form-group">
                                                                <label for="cargo">Curso 2:</label>
                                                                <select class="form-control">
                                                                    <option selected="selected">Seleccione Curso</option>
                                                                    <option>Curso</option>
                                                                    <option>Curso</option>
                                                                    <option>Curso</option>
                                                                    <option>Curso</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>  
                                                    <div id="contratista"  class="col-md-12">
                                                        <div class="col-md-6">    
                                                            <div class="form-group">
                                                                <label for="tratamiento">Curso 3:</label>
                                                                <select class="form-control">
                                                                    <option selected="selected">Seleccione Curso</option>
                                                                    <option>Curso</option>
                                                                    <option>Curso</option>
                                                                    <option>Curso</option>
                                                                    <option>Curso</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6"> 
                                                            <div class="form-group">
                                                                <label for="cargo">Curso 4:</label>
                                                                <select class="form-control">
                                                                    <option selected="selected">Seleccione Curso</option>
                                                                    <option>Curso</option>
                                                                    <option>Curso</option>
                                                                    <option>Curso</option>
                                                                    <option>Curso</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>  
                                                </div>
                                                <%--ENVIAR FORMULARIO--%>
                                                <form method="post" class="login-form"action="SrvContra" >
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
                                                                    <center>
                                                                        <select name="opcion3"  class="form-control">
                                                                            <% CursoDAO curso3 = new CursoDAO();
                                                            curso3.initialize();
                                                            ResultSet res3 = curso3.listarCursos();%>

                                                                            <option selected="selected">Seleccione Curso</option>
                                                                            <% while (res3.next()) {
                                                                String cursos3 = res3.getString("descripcionCurso");
                                                                int id3 = res3.getInt("codigo_Curso");%>
                                                                            <option value="<%=id3%>"><%=cursos3%></option>
                                                                            <%
                                                                                }
                                                                            %>
                                                                        </select>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionM89" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionMI89" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionJ89" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionV89" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionS89" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                    <center><strong>9:00 - 10:00 am</strong></center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks">
                                                                            <label> 
                                                                                <input name="gestionL910" id="gestion" type="checkbox" value=""> 
                                                                            </label>
                                                                        </div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionM910" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionMI910" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionJ910" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionV910" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionS910" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                    <center><strong>10:00 - 11:00 am</strong></center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks">
                                                                            <label> 
                                                                                <input name="gestionL1011" id="gestion" type="checkbox" value=""> 
                                                                            </label>
                                                                        </div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionM1011" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionMI1011" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionJ1011" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionV1011" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionS1011" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                    <center><strong>11:00 - 12:00 am</strong></center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks">
                                                                            <label> 
                                                                                <input name="gestionL1112" id="gestion" type="checkbox" value=""> 
                                                                            </label>
                                                                        </div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionM1112" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionMI1112" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionJ1112" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionV1112" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionS1112" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                    <center><strong>12:00 - 1:00 pm</strong></center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks">
                                                                            <label> 
                                                                                <input name="gestionL121" id="gestion" type="checkbox" value=""> 
                                                                            </label>
                                                                        </div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionM121" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionMI121" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionJ121" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionV121" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionS121" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                    <center><strong>1:00 - 2:00 pm</strong></center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks">
                                                                            <label> 
                                                                                <input name="gestionL12" id="gestion" type="checkbox" value=""> 
                                                                            </label>
                                                                        </div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionM12" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionMI12" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionJ12" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionV12" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionS12" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                    <center><strong>2:00 - 3:00 pm</strong></center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks">
                                                                            <label> 
                                                                                <input name="gestionL23" id="gestion" type="checkbox" value=""> 
                                                                            </label>
                                                                        </div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionM23" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionMI23" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionJ23" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionV23" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionS23" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                    <center><strong>3:00 - 4:00 pm</strong></center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks">
                                                                            <label> 
                                                                                <input name="gestionL34" id="gestion" type="checkbox" value=""> 
                                                                            </label>
                                                                        </div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestionM34" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                    <center><strong>4:00 - 5:00 pm</strong></center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks">
                                                                            <label> 
                                                                                <input name="gestion" id="gestion" type="checkbox" value=""> 
                                                                            </label>
                                                                        </div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                    <center><strong>5:00 - 6:00 pm</strong></center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks">
                                                                            <label> 
                                                                                <input name="gestion" id="gestion" type="checkbox" value=""> 
                                                                            </label>
                                                                        </div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                    <center><strong>6:00 - 7:00 pm</strong></center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks">
                                                                            <label> 
                                                                                <input name="gestion" id="gestion" type="checkbox" value=""> 
                                                                            </label>
                                                                        </div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                    <center><strong>7:00 - 8:00 pm</strong></center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks">
                                                                            <label> 
                                                                                <input name="gestion" id="gestion" type="checkbox" value=""> 
                                                                            </label>
                                                                        </div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                    <center><strong>8:00 - 9:00 pm</strong></center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks">
                                                                            <label> 
                                                                                <input name="gestion" id="gestion" type="checkbox" value=""> 
                                                                            </label>
                                                                        </div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                    <center><strong>9:00 - 10:00 pm</strong></center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks">
                                                                            <label> 
                                                                                <input name="gestion" id="gestion" type="checkbox" value=""> 
                                                                            </label>
                                                                        </div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
                                                                    </td>
                                                                    <td>
                                                                    <center>
                                                                        <div class="i-checks"><label> <input name="gestion" id="gestion" type="checkbox" value=""> <i></i></label></div>
                                                                    </center>
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
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="btnEditarArea">Guardar</button>
                <button type="button" class="btn btn-default" id="btnCerrarModal" data-dismiss="modal">Cancelar</button>
            </div>
        </div>
    </div>
</div>
