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
            Disponibilidad Horaria
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
                                                <label for="tratamiento">Codigo :</label>

                                                <% String cod = (String)session.getAttribute("servletMsg4");%>
                                                
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%= cod%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                        <%--Inicia una capsula--%>
                                        <div class="col-md-6">    
                                            <div class="form-group">
                                                <label for="tratamiento">Condicion :</label>

                                                <% String cond = (String) session.getAttribute("servletMsg5");%>
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%= cond%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                        <%--Inicia una capsula--%>
                                        <div class="col-md-6">    
                                            <div class="form-group">
                                                <label for="tratamiento">Categoria:</label>

                                                <% String cat = (String) session.getAttribute("servletMsg6");%>
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%= cat%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                        <%--Inicia una capsula--%>
                                        <div class="col-md-6">    
                                            <div class="form-group">
                                                <label for="tratamiento">Horas Disponibles:</label>

                                                <% String horasdis = (String) session.getAttribute("servletMsg7");%>
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%= horasdis%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                        <%--Inicia una capsula--%>
                                        <div class="col-md-6">    
                                            <div class="form-group">
                                                <label for="tratamiento">Departamento:</label>

                                                <% String dep = (String) session.getAttribute("servletMsg8");%>
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%= dep%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                        </div>  
                                    </div>
                                   
                                                    <hr>
                                    <%--ENVIAR FORMULARIO--%>
                                    <% String codigo = (String)session.getAttribute("servletMsg4");%>
                                    <% session.setAttribute("variable", codigo);%>
                                    <form method="post" class="login-form" action="../Servlethorarioprofesor" >
                                       
                                                
                                        <div id="contratista"  class="col-md-12">
                                       
                                        <div id="contratista"  class="col-md-12">
                                            <div class="col-md-6">    
                                                <div class="form-group">
                                         
                                                    <label for="tratamiento">Curso 1:</label>
                                                    <select  name="opcion1" class="form-control">
                                                        
                                                  <%    CursoDAO curso = new CursoDAO();
                                                        curso.initialize();
                                                        ResultSet res = curso.listarCursos();%>
                                                        <option selected="selected" value="0">Seleccione Curso</option>
                                                        <% while (res.next()) {
                                                            String cursos = res.getString("descripcionCurso");
                                                            int id1 = res.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>    
                                                </div>
                                            </div>
                                            <div class="col-md-6"> 
                                                <div class="form-group">
                                                    <label for="cargo">Curso 2:</label>
                                                    <select name="opcion2" class="form-control">
                                                         <%    CursoDAO curso2 = new CursoDAO();
                                                        curso2.initialize();
                                                        ResultSet res2 = curso2.listarCursos();%>
                                                        <option selected="selected" value="0">Seleccione Curso</option>
                                                        <% while (res2.next()) {
                                                          String cursos2 = res2.getString("descripcionCurso");
                                                             int id2 = res2.getInt("codigo_Curso");%>
                                                            <option value="<%=id2%>"><%=cursos2%></option>
                                                            <%
                                                            }
                                                    %>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>  
                                                    
                                        <div id="contratista"  class="col-md-12">
                                            <div class="col-md-6">    
                                                <div class="form-group">
                                                    <label for="tratamiento">Curso 3:</label>
                                                    <select name="opcion3"  class="form-control">
                                                        <% CursoDAO curso3 = new CursoDAO();
                                                        curso3.initialize();
                                                        ResultSet res3 = curso3.listarCursos();%>
                                                        
                                                        <option selected="selected" value="0">Seleccione Curso</option>
                                                        <% while (res3.next()) {
                                                          String cursos3= res3.getString("descripcionCurso");
                                                          int id3 = res3.getInt("codigo_Curso");%>
                                                        <option value="<%=id3%>"><%=cursos3%></option>
                                                            <%
                                                            }
                                                    %>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6"> 
                                                <div class="form-group">
                                                    <label for="cargo">Curso 4:</label>
                                                    <select name="opcion4" class="form-control">
                                                        <% CursoDAO curso4 = new CursoDAO();
                                                        curso4.initialize();
                                                        ResultSet res4 = curso4.listarCursos();%>
                                                        <option selected="selected" value="0">Seleccione Curso</option>
                                                        <% while (res4.next()) {
                                                          String cursos4= res4.getString("descripcionCurso");
                                                          int id4 = res4.getInt("codigo_Curso");%>
                                                        <option value="<%=id4%>"><%=cursos4%></option>
                                                            <%
                                                            }
                                                    %>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>  
                                    </div>
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
                                                            <div class="i-checks">
                                                                <label> 
                                                                    <input name="L0" id="gestion" type="checkbox" value="1"> 
                                                                </label>
                                                            </div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="M0" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="MI0" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="J0" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="V0" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="S0" id="gestion" type="checkbox" value="1"> <i></i></label></div>
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
                                                                    <input name="L1" id="gestion" type="checkbox" value="1"> 
                                                                </label>
                                                            </div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="M1" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="MI1" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="J1" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="V1" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="S1" id="gestion" type="checkbox" value="1"> <i></i></label></div>
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
                                                                    <input name="L2" id="gestion" type="checkbox" value="1"> 
                                                                </label>
                                                            </div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="M2" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="MI2" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="J2" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="V2" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="S2" id="gestion" type="checkbox" value="1"> <i></i></label></div>
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
                                                                    <input name="L3" id="gestion" type="checkbox" value="1"> 
                                                                </label>
                                                            </div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="M3" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="MI3" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="J3" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="V3" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="S3" id="gestion" type="checkbox" value="1"> <i></i></label></div>
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
                                                                    <input name="L4" id="gestion" type="checkbox" value="1"> 
                                                                </label>
                                                            </div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="M4" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="MI4" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="J4" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="V4" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="S4" id="gestion" type="checkbox" value="1"> <i></i></label></div>
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
                                                                    <input name="L5" id="gestion" type="checkbox" value="1"> 
                                                                </label>
                                                            </div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="M5" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="MI5" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="J5" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="V5" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="S5" id="gestion" type="checkbox" value="1"> <i></i></label></div>
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
                                                                    <input name="L6" id="gestion" type="checkbox" value="1"> 
                                                                </label>
                                                            </div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="M6" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="MI6" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="J6" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="V6" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="S6" id="gestion" type="checkbox" value="1"> <i></i></label></div>
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
                                                                    <input name="L7" id="gestion" type="checkbox" value="1"> 
                                                                </label>
                                                            </div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="M7" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="MI7" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="J7" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="V7" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="S7" id="gestion" type="checkbox" value="1"> <i></i></label></div>
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
                                                                    <input name="L8" id="gestion" type="checkbox" value="1"> 
                                                                </label>
                                                            </div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="M8" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="MI8" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="J8" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="V8" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="S8" id="gestion" type="checkbox" value="1"> <i></i></label></div>
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
                                                                    <input name="L9" id="gestion" type="checkbox" value="1"> 
                                                                </label>
                                                            </div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="M9" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="MI9" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="J9" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="V9" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="S9" id="gestion" type="checkbox" value="1"> <i></i></label></div>
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
                                                                    <input name="L10" id="gestion" type="checkbox" value="1"> 
                                                                </label>
                                                            </div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="M10" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="MI10" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="J10" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="V10" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="S10" id="gestion" type="checkbox" value="1"> <i></i></label></div>
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
                                                                    <input name="L11" id="gestion" type="checkbox" value="1"> 
                                                                </label>
                                                            </div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="M11" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="MI11" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="J11" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="V11" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="S11" id="gestion" type="checkbox" value="1"> <i></i></label></div>
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
                                                                    <input name="L12" id="gestion" type="checkbox" value="1"> 
                                                                </label>
                                                            </div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="M12" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="MI12" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="J12" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="V12" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="S12" id="gestion" type="checkbox" value="1"> <i></i></label></div>
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
                                                                    <input name="L13" id="gestion" type="checkbox" value="1"> 
                                                                </label>
                                                            </div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="M13" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="MI13" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="J13" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="V13" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <div class="i-checks"><label> <input name="S13" id="gestion" type="checkbox" value="1"> <i></i></label></div>
                                                        </center>
                                                        </td>
                                                        </tr>

                                                        </tbody>


                                                    </div>
                                                </table>
                                            </div>
                                        </div>
                                        <button  type="submit" name="submit" id="submit" class="btn btn-primary block full-width m-b">Enviar Datos</button>
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

