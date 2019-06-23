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
    window.onload = function() {  
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
<% CursoDAO curso =new CursoDAO(); 
    curso.initialize(); %>
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
                                                <label for="tratamiento">Nombres :</label>
                                                
                                                <% String nombre = (String) session.getAttribute("servletMsg1");%>
                                                <% //System.out.println(dato);%>
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%=nombre%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                        <%--Inicia una capsula--%>
                                        <div class="col-md-6">    
                                            <div class="form-group">
                                                <label for="tratamiento">Apellido Paterno:</label>

                                                <%String apep = (String) session.getAttribute("servletMsg2");%>
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%=apep%>>
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

                                                <%String cod = (String)session.getAttribute("servletMsg4");%>
                                                
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%= cod%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>

                                        <%--Inicia una capsula--%>
                                        <div class="col-md-6">    
                                            <div class="form-group">
                                                <label for="tratamiento">Categoria:</label>

                                                <% String cat = (String) session.getAttribute("servletMsg5");%>
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%= cat%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                        <%--Inicia una capsula--%>
                                        <div class="col-md-6">    
                                            <div class="form-group">
                                                <label for="tratamiento">Horas Disponibles:</label>

                                                <% String horasdis = (String) session.getAttribute("servletMsg6");%>
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%= horasdis%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                        <%--Inicia una capsula--%>
                                        <div class="col-md-6">    
                                            <div class="form-group">
                                                <label for="tratamiento">Curso Preferencia N°1 :</label>

                                                <% String curso1 = (String) session.getAttribute("servletMsg7");%>
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%= curso1%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                        
                                                                                <%--Inicia una capsula--%>
                                        <div class="col-md-6">    
                                            <div class="form-group">
                                                <label for="tratamiento">Curso Preferencia N°2 :</label>

                                                <%String curso2 = (String) session.getAttribute("servletMsg8");%>
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%= curso2%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                        
                                                                                <%--Inicia una capsula--%>
                                        <div class="col-md-6">    
                                            <div class="form-group">
                                                <label for="tratamiento">Curso Preferencia N°3 :</label>

                                                <% String curso3 = (String) session.getAttribute("servletMsg9");%>
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%= curso3%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                        
                                                                                <%--Inicia una capsula--%>
                                        <div class="col-md-6">    
                                            <div class="form-group">
                                                <label for="tratamiento">Curso Preferencia N°4:</label>

                                                <% String curso4 = (String) session.getAttribute("servletMsg10");%>
                                                <input type="text" class="form-control" id="contrato" name="contrato" disabled="disabled"  value=<%=curso4%>>
                                            </div>
                                        </div>
                                        <%--Cierra Capsula--%>
                                        

                                        </div>  
                                    </div>
                                   
                                                    <hr>
                                    <%--ENVIAR FORMULARIO--%>
                                    <% String codigo = (String)session.getAttribute("servletMsg4");%>
                                    <% session.setAttribute("variable", codigo);%>
                                    <form method="post" class="login-form" action="../SrvAsignaHorario" >
                              
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
                                                            
                                                        
                                                     <select 
                                                            
                                                          style="width: 80px; " name="L0" class="form-control"
                                                         <% String lunes1 =(String) session.getAttribute("lunes1");%>
                                                            <%if (lunes1.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=lunes1%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet lu1 = curso.listarCursos();%>
                                                        <% //String lunes1 =(String) session.getAttribute("lunes1");%>
                                                            
               
                                                        <option selected="selected" value="0"><%=lunes1%> </option>
                                                        <% while (lu1.next()) {
                                                            String cursos = lu1.getString("descripcionCurso");
                                                            int id1 = lu1.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select> 
                                                    
                                    
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="M0" class="form-control"
                                                                    <% String martes1 =(String) session.getAttribute("martes1");%>
                                                            <%if (martes1.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=martes1%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet m1 = curso.listarCursos();%>
                                                        <% //String martes1 =(String) session.getAttribute("martes1");%>
                                                        <option selected="selected"value="0" ><%=martes1%></option>
                                                        <% while (m1.next()) {
                                                            String cursos = m1.getString("descripcionCurso");
                                                            int id1 = m1.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                            
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                                <select style="width: 80px;"  name="MI0" class="form-control"
                                                                        <% String miercoles1 =(String) session.getAttribute("miercoles1");%>
                                                            <%if (miercoles1.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=miercoles1%>        
                                                                    >
                                                                        
                                                        
                                                  <%    
                                                        ResultSet mi1 = curso.listarCursos();%>
                                                        <% //String miercoles1 =(String) session.getAttribute("miercoles1");%>
                                                        <option selected="selected" value="0"><%=miercoles1%></option>
                                                        <% while (mi1.next()) {
                                                            String cursos = mi1.getString("descripcionCurso");
                                                            int id1 = mi1.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                                <select style="width: 80px;"  name="J0" class="form-control"
                                                                        <% String jueves1 =(String) session.getAttribute("jueves1");%>
                                                            <%if (jueves1.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=jueves1%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet j1 = curso.listarCursos();%>
                                                        <% //String jueves1 =(String) session.getAttribute("jueves1");%>
                                                        <option selected="selected" value="0" ><%=jueves1%></option>
                                                        <% while (j1.next()) {
                                                            String cursos = j1.getString("descripcionCurso");
                                                            int id1 = j1.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                              <select style="width: 80px;"  name="V0" class="form-control"
                                                                       <% String viernes1 =(String) session.getAttribute("viernes1");%>
                                                            <%if (viernes1.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=viernes1%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet v1 = curso.listarCursos();%>
                                                        <%// String viernes1 =(String) session.getAttribute("viernes1");%>
                                                        <option selected="selected" value="0" ><%=viernes1%></option>
                                                        <% while (v1.next()) {
                                                            String cursos = v1.getString("descripcionCurso");
                                                            int id1 = v1.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                             <select style="width: 80px;"  name="S0" class="form-control"
                                                                     <% String sabado1 =(String) session.getAttribute("sabado1");%>
                                                            <%if (sabado1.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=sabado1%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet s1 = curso.listarCursos();%>
                                                        <% //String sabado1 =(String) session.getAttribute("sabado1");%>
                                                        <option selected="selected" value="0" ><%=sabado1%></option>
                                                        <% while (s1.next()) {
                                                            String cursos = s1.getString("descripcionCurso");
                                                            int id1 = s1.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                        <center><strong>9:00 - 10:00 am</strong></center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="L1" class="form-control"
                                                                    <% String lunes2 =(String) session.getAttribute("lunes2");%>
                                                            <%if (lunes2.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=lunes2%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet l2 = curso.listarCursos();%>
                                                        <%// String lunes2 =(String) session.getAttribute("lunes2");%>
                                                        <option selected="selected" value="0"><%=lunes2%></option>
                                                        <% while (l2.next()) {
                                                            String cursos = l2.getString("descripcionCurso");
                                                            int id1 = l2.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="M1" class="form-control"
                                                                    <% String martes2 =(String) session.getAttribute("martes2");%>
                                                            <%if (martes2.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=martes2%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet m2 = curso.listarCursos();%>
                                                        <% //String martes2 =(String) session.getAttribute("martes2");%>
                                                        <option selected="selected" value="0" ><%=martes2%></option>
                                                        <% while (m2.next()) {
                                                            String cursos = m2.getString("descripcionCurso");
                                                            int id1 = m2.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="MI1" class="form-control"
                                                                    <% String miercoles2 =(String) session.getAttribute("miercoles2");%>
                                                            <%if (miercoles2.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=miercoles2%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet mi2 = curso.listarCursos();%>
                                                        <% //String miercoles2 =(String) session.getAttribute("miercoles2");%>
                                                        <option selected="selected" value="0" ><%=miercoles2%></option>
                                                        <% while (mi2.next()) {
                                                            String cursos = mi2.getString("descripcionCurso");
                                                            int id1 = mi2.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="J1" class="form-control"
                                                                    <% String jueves2 =(String) session.getAttribute("jueves2");%>
                                                            <%if (jueves2.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=jueves2%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet j2 = curso.listarCursos();%>
                                                        <% //String jueves2 =(String) session.getAttribute("jueves2");%>
                                                        <option selected="selected" value="0" ><%=jueves2%></option>
                                                        <% while (j2.next()) {
                                                            String cursos = j2.getString("descripcionCurso");
                                                            int id1 = j2.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="V1" class="form-control"
                                                                     <% String viernes2 =(String) session.getAttribute("viernes2");%>
                                                            <%if (viernes2.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=viernes2%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet v2 = curso.listarCursos();%>
                                                        <%// String viernes2 =(String) session.getAttribute("viernes2");%>
                                                        <option selected="selected" value="0" ><%=viernes2%></option>
                                                        <% while (v2.next()) {
                                                            String cursos = v2.getString("descripcionCurso");
                                                            int id1 = v2.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="S1" class="form-control"
                                                                    <% String sabado2 =(String) session.getAttribute("sabado2");%>
                                                            <%if (sabado2.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=sabado2%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet s2 = curso.listarCursos();%>
                                                        <% //String sabado2 =(String) session.getAttribute("sabado2");%>
                                                        <option selected="selected" value="0" ><%=sabado2%></option>
                                                        <% while (s2.next()) {
                                                            String cursos = s2.getString("descripcionCurso");
                                                            int id1 = s2.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                        <center><strong>10:00 - 11:00 am</strong></center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="L2" class="form-control"
                                                                    <% String lunes3 =(String) session.getAttribute("lunes3");%>
                                                            <%if (lunes3.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=lunes3%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet l3 = curso.listarCursos();%>
                                                        <%// String lunes3 =(String) session.getAttribute("lunes3");%>
                                                        <option selected="selected" value="0" ><%=lunes3%></option>
                                                        <% while (l3.next()) {
                                                            String cursos = l3.getString("descripcionCurso");
                                                            int id1 = l3.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="M2" class="form-control"
                                                                     <% String martes3 =(String) session.getAttribute("martes3");%>
                                                            <%if (martes3.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=martes3%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet m3 = curso.listarCursos();%>
                                                        <%// String martes3 =(String) session.getAttribute("martes3");%>
                                                        <option selected="selected" value="0"><%=martes3%></option>
                                                        <% while (m3.next()) {
                                                            String cursos = m3.getString("descripcionCurso");
                                                            int id1 = m3.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                       <select style="width: 80px;"  name="MI2" class="form-control"
                                                                <% String miercoles3 =(String) session.getAttribute("miercoles3");%>
                                                            <%if (miercoles3.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=miercoles3%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet mi3 = curso.listarCursos();%>
                                                        <%// String miercoles3 =(String) session.getAttribute("miercoles3");%>
                                                        <option selected="selected" value="0" ><%=miercoles3%></option>
                                                        <% while (mi3.next()) {
                                                            String cursos = mi3.getString("descripcionCurso");
                                                            int id1 = mi3.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                             <select style="width: 80px;"  name="J2" class="form-control"
                                                                     <% String jueves3 =(String) session.getAttribute("jueves3");%>
                                                            <%if (jueves3.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=jueves3%>        
                                                                    >
                                                        
                                                        
                                                  <%    
                                                        ResultSet j3 = curso.listarCursos();%>
                                                        <% //String jueves3 =(String) session.getAttribute("jueves3");%>
                                                        <option selected="selected" value="0"><%=jueves3%></option>
                                                        <% while (j3.next()) {
                                                            String cursos = j3.getString("descripcionCurso");
                                                            int id1 = j3.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="V2" class="form-control"
                                                                    <% String viernes3 =(String) session.getAttribute("viernes3");%>
                                                            <%if (viernes3.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=viernes3%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet v3 = curso.listarCursos();%>
                                                        <% //String viernes3 =(String) session.getAttribute("viernes3");%>
                                                        <option selected="selected" value="0" ><%=viernes3%></option>
                                                        <% while (v3.next()) {
                                                            String cursos = v3.getString("descripcionCurso");
                                                            int id1 = v3.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="S2" class="form-control"
                                                                    <% String sabado3 =(String) session.getAttribute("sabado3");%>
                                                            <%if (sabado3.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=sabado3%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet s3 = curso.listarCursos();%>
                                                        <% //String sabado3 =(String) session.getAttribute("sabado3");%>
                                                        <option selected="selected" value="0" ><%=sabado3%></option>
                                                        <% while (s3.next()) {
                                                            String cursos = s3.getString("descripcionCurso");
                                                            int id1 = s3.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                        <center><strong>11:00 - 12:00 am</strong></center>
                                                        </td>
                                                        <td>
                                                        <center>

                                                               
                                                                    <select style="width: 80px;"  name="L3" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet l4 = curso.listarCursos();%>
                                                        <% String lunes4 =(String) session.getAttribute("lunes4");%>
                                                        <option selected="selected" value="0"><%=lunes4%></option>
                                                        <% while (l4.next()) {
                                                            String cursos = l4.getString("descripcionCurso");
                                                            int id1 = l4.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                                
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="M3" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet m4 = curso.listarCursos();%>
                                                        <% String martes4 =(String) session.getAttribute("martes4");%>
                                                        <option selected="selected" value="0" ><%=martes4%></option>
                                                        <% while (m4.next()) {
                                                            String cursos = m4.getString("descripcionCurso");
                                                            int id1 = m4.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="MI3" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet mi4 = curso.listarCursos();%>
                                                        <% String miercoles4 =(String) session.getAttribute("miercoles4");%>
                                                        <option selected="selected" value="0" ><%=miercoles4%></option>
                                                        <% while (mi4.next()) {
                                                            String cursos = mi4.getString("descripcionCurso");
                                                            int id1 = mi4.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                             <select style="width: 80px;"  name="J3" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet j4 = curso.listarCursos();%>
                                                        <% String jueves4 =(String) session.getAttribute("jueves4");%>
                                                        <option selected="selected" value="0"><%=jueves4%></option>
                                                        <% while (j4.next()) {
                                                            String cursos = j4.getString("descripcionCurso");
                                                            int id1 = j4.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="V3" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet v4 = curso.listarCursos();%>
                                                        <% String viernes4 =(String) session.getAttribute("viernes4");%>
                                                        <option selected="selected" value="0"><%=viernes4%></option>
                                                        <% while (v4.next()) {
                                                            String cursos = v4.getString("descripcionCurso");
                                                            int id1 = v4.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="S3" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet s4 = curso.listarCursos();%>
                                                        <% String sabado4 =(String) session.getAttribute("sabado4");%>
                                                        <option selected="selected" value="0"><%=sabado4%></option>
                                                        <% while (s4.next()) {
                                                            String cursos = s4.getString("descripcionCurso");
                                                            int id1 = s4.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                        <center><strong>12:00 - 1:00 pm</strong></center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="L4" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet l5 = curso.listarCursos();%>
                                                        <% String lunes5 =(String) session.getAttribute("lunes5");%>
                                                        <option selected="selected" value="0" ><%=lunes5%></option>
                                                        <% while (l5.next()) {
                                                            String cursos = l5.getString("descripcionCurso");
                                                            int id1 = l5.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="M4" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet m5 = curso.listarCursos();%>
                                                        <% String martes5 =(String) session.getAttribute("martes5");%>
                                                        <option selected="selected" value="0" ><%=martes5%></option>
                                                        <% while (m5.next()) {
                                                            String cursos = m5.getString("descripcionCurso");
                                                            int id1 = m5.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                             <select style="width: 80px;"  name="MI4" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet mi5 = curso.listarCursos();%>
                                                        <% String miercoles5 =(String) session.getAttribute("miercoles5");%>
                                                        <option selected="selected" value="0" ><%=miercoles5%></option>
                                                        <% while (mi5.next()) {
                                                            String cursos = mi5.getString("descripcionCurso");
                                                            int id1 = mi5.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="J4" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet j5 = curso.listarCursos();%>
                                                        <% String jueves5 =(String) session.getAttribute("jueves5");%>
                                                        <option selected="selected" value="0" ><%=jueves5%></option>
                                                        <% while (j5.next()) {
                                                            String cursos = j5.getString("descripcionCurso");
                                                            int id1 = j5.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                             <select style="width: 80px;"  name="V4" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet v5 = curso.listarCursos();%>
                                                        <% String viernes5 =(String) session.getAttribute("viernes5");%>
                                                        <option selected="selected" value="0" ><%=viernes5%></option>
                                                        <% while (v5.next()) {
                                                            String cursos = v5.getString("descripcionCurso");
                                                            int id1 = v5.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                             <select style="width: 80px;"  name="S4" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet s5 = curso.listarCursos();%>
                                                        <% String sabado5 =(String) session.getAttribute("sabado5");%>
                                                        <option selected="selected" value="0" ><%=sabado5%></option>
                                                        <% while (s5.next()) {
                                                            String cursos = s5.getString("descripcionCurso");
                                                            int id1 = s5.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                        <center><strong>1:00 - 2:00 pm</strong></center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            
                                                                     <select style="width: 80px;"  name="L5" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet l6 = curso.listarCursos();%>
                                                        <% String lunes6 =(String) session.getAttribute("lunes6");%>
                                                        <option selected="selected" value="0" ><%=lunes6%></option>
                                                        <% while (l6.next()) {
                                                            String cursos = l6.getString("descripcionCurso");
                                                            int id1 = l6.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                                
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                             <select style="width: 80px;"  name="M5" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet m6 = curso.listarCursos();%>
                                                          <% String martes6 =(String) session.getAttribute("martes6");%>
                                                        <option selected="selected" value="0" ><%=martes6%></option>
                                                        <% while (m6.next()) {
                                                            String cursos = m6.getString("descripcionCurso");
                                                            int id1 = m6.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                             <select style="width: 80px;"  name="MI5" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet mi6 = curso.listarCursos();%>
                                                         <% String miercoles6 =(String) session.getAttribute("miercoles6");%>
                                                        <option selected="selected" value="0" ><%=miercoles6%></option>
                                                        <% while (mi6.next()) {
                                                            String cursos = mi6.getString("descripcionCurso");
                                                            int id1 = mi6.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="J5" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet j6 = curso.listarCursos();%>
                                                          <% String jueves6 =(String) session.getAttribute("jueves6");%>
                                                        <option selected="selected" value="0" ><%=jueves6%></option>
                                                        <% while (j6.next()) {
                                                            String cursos = j6.getString("descripcionCurso");
                                                            int id1 = j6.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="V5" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet v6 = curso.listarCursos();%>
                                                         <% String viernes6 =(String) session.getAttribute("viernes6");%>
                                                        <option selected="selected" value="0" ><%=viernes6%></option>
                                                        <% while (v6.next()) {
                                                            String cursos = v6.getString("descripcionCurso");
                                                            int id1 = v6.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="S5" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet s6 = curso.listarCursos();%>
                                                          <% String sabado6 =(String) session.getAttribute("sabado6");%>
                                                        <option selected="selected" value="0" ><%=sabado6%></option>
                                                        <% while (s6.next()) {
                                                            String cursos = s6.getString("descripcionCurso");
                                                            int id1 = s6.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                        <center><strong>2:00 - 3:00 pm</strong></center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="L6" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet l7 = curso.listarCursos();%>
                                                         <% String lunes7 =(String) session.getAttribute("lunes7");%>
                                                        <option selected="selected" value="0" ><%=lunes7%></option>
                                                        <% while (l7.next()) {
                                                            String cursos = l7.getString("descripcionCurso");
                                                            int id1 = l7.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="M6" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet m7 = curso.listarCursos();%>
                                                        <% String martes7 =(String) session.getAttribute("martes7");%>
                                                        <option selected="selected" value="0" ><%=martes7%></option>
                                                        <% while (m7.next()) {
                                                            String cursos = m7.getString("descripcionCurso");
                                                            int id1 = m7.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="MI6" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet mi7 = curso.listarCursos();%>
                                                        <% String miercoles7 =(String) session.getAttribute("miercoles7");%>
                                                        <option selected="selected" value="0" ><%=miercoles7%></option>
                                                        <% while (mi7.next()) {
                                                            String cursos = mi7.getString("descripcionCurso");
                                                            int id1 = mi7.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="J6" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet j7 = curso.listarCursos();%>
                                                        <% String jueves7 =(String) session.getAttribute("jueves7");%>
                                                        <option selected="selected" value="0" ><%=jueves7%></option>
                                                        <% while (j7.next()) {
                                                            String cursos = j7.getString("descripcionCurso");
                                                            int id1 = j7.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="V6" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet v7 = curso.listarCursos();%>
                                                        <% String viernes7 =(String) session.getAttribute("viernes7");%>
                                                        <option selected="selected" value="0" ><%=viernes7%></option>
                                                        <% while (v7.next()) {
                                                            String cursos = v7.getString("descripcionCurso");
                                                            int id1 = v7.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="S6" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet s7 = curso.listarCursos();%>
                                                        <% String sabado7 =(String) session.getAttribute("sabado7");%>
                                                        <option selected="selected" value="0" ><%=sabado7%></option>
                                                        <% while (s7.next()) {
                                                            String cursos = s7.getString("descripcionCurso");
                                                            int id1 = s7.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                        <center><strong>3:00 - 4:00 pm</strong></center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="L7" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet l8 = curso.listarCursos();%>
                                                        <% String lunes8 =(String) session.getAttribute("lunes8");%>
                                                        <option selected="selected" value="0" ><%=lunes8%></option>
                                                        <% while (l8.next()) {
                                                            String cursos = l8.getString("descripcionCurso");
                                                            int id1 = l8.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="M7" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet m8 = curso.listarCursos();%>
                                                       <% String martes8 =(String) session.getAttribute("martes8");%>
                                                        <option selected="selected" value="0" ><%=martes8%></option>
                                                        <% while (m8.next()) {
                                                            String cursos = m8.getString("descripcionCurso");
                                                            int id1 = m8.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="MI7" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet mi8 = curso.listarCursos();%>
                                                        <% String miercoles8 =(String) session.getAttribute("miercoles8");%>
                                                        <option selected="selected" value="0" ><%=miercoles8%></option>
                                                        <% while (mi8.next()) {
                                                            String cursos = mi8.getString("descripcionCurso");
                                                            int id1 = mi8.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="J7" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet j8 = curso.listarCursos();%>
                                                        <% String jueves8 =(String) session.getAttribute("jueves8");%>
                                                        <option selected="selected" value="0" ><%=jueves8%></option>
                                                        <% while (j8.next()) {
                                                            String cursos = j8.getString("descripcionCurso");
                                                            int id1 = j8.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="V7" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet v8 = curso.listarCursos();%>
                                                        <% String viernes8 =(String) session.getAttribute("viernes8");%>
                                                        <option selected="selected" value="0" ><%=viernes8%></option>
                                                        <% while (v8.next()) {
                                                            String cursos = v8.getString("descripcionCurso");
                                                            int id1 = v8.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="S7" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet s8 = curso.listarCursos();%>
                                                        <% String sabado8 =(String) session.getAttribute("sabado8");%>
                                                        <option selected="selected" value="0" ><%=sabado8%></option>
                                                        <% while (s8.next()) {
                                                            String cursos = s8.getString("descripcionCurso");
                                                            int id1 = s8.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                        <center><strong>4:00 - 5:00 pm</strong></center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="L8" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet l9 = curso.listarCursos();%>
                                                        <% String lunes9 =(String) session.getAttribute("lunes9");%>
                                                        <option selected="selected" value="0" ><%=lunes9%></option>
                                                        <% while (l9.next()) {
                                                            String cursos = l9.getString("descripcionCurso");
                                                            int id1 = l9.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="M8" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet m9 = curso.listarCursos();%>
                                                        <% String martes9 =(String) session.getAttribute("martes9");%>
                                                        <option selected="selected" value="0" ><%=martes9%></option>
                                                        <% while (m9.next()) {
                                                            String cursos = m9.getString("descripcionCurso");
                                                            int id1 = m9.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="MI8" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet mi9 = curso.listarCursos();%>
                                                        <% String miercoles9 =(String) session.getAttribute("miercoles9");%>
                                                        <option selected="selected" value="0" ><%=miercoles9%></option>
                                                        <% while (mi9.next()) {
                                                            String cursos = mi9.getString("descripcionCurso");
                                                            int id1 = mi9.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="J8" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet j9 = curso.listarCursos();%>
                                                        <% String jueves9 =(String) session.getAttribute("jueves9");%>
                                                        <option selected="selected" value="0" ><%=jueves9%></option>
                                                        <% while (j9.next()) {
                                                            String cursos = j9.getString("descripcionCurso");
                                                            int id1 = j9.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="V8" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet v9 = curso.listarCursos();%>
                                                        <% String viernes9 =(String) session.getAttribute("viernes9");%>
                                                        <option selected="selected" value="0" ><%=viernes9%></option>
                                                        <% while (v9.next()) {
                                                            String cursos = v9.getString("descripcionCurso");
                                                            int id1 = v9.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                          <select style="width: 80px;"  name="S8" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet s9 = curso.listarCursos();%>
                                                       <% String sabado9 =(String) session.getAttribute("sabado9");%>
                                                        <option selected="selected" value="0" ><%=sabado9%></option>
                                                        <% while (s9.next()) {
                                                            String cursos = s9.getString("descripcionCurso");
                                                            int id1 = s9.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                        <center><strong>5:00 - 6:00 pm</strong></center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="L9" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet l10 = curso.listarCursos();%>
                                                        <% String lunes10 =(String) session.getAttribute("lunes10");%>
                                                        <option selected="selected" value="0" ><%=lunes10%></option>
                                                        <% while (l10.next()) {
                                                            String cursos = l10.getString("descripcionCurso");
                                                            int id1 = l10.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                             <select style="width: 80px;"  name="M9" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet m10 = curso.listarCursos();%>
                                                        <% String martes10 =(String) session.getAttribute("martes10");%>
                                                        <option selected="selected" value="0" ><%=martes10%></option>
                                                        <% while (m10.next()) {
                                                            String cursos = m10.getString("descripcionCurso");
                                                            int id1 = m10.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                             <select style="width: 80px;"  name="MI9" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet mi10 = curso.listarCursos();%>
                                                        <% String miercoles10 =(String) session.getAttribute("miercoles10");%>
                                                        <option selected="selected" value="0" ><%=miercoles10%></option>
                                                        <% while (mi10.next()) {
                                                            String cursos = mi10.getString("descripcionCurso");
                                                            int id1 = mi10.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                             <select style="width: 80px;"  name="J9" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet j10 = curso.listarCursos();%>
                                                        <% String jueves10 =(String) session.getAttribute("jueves10");%>
                                                        <option selected="selected" value="0" ><%=jueves10%></option>
                                                        <% while (j10.next()) {
                                                            String cursos = j10.getString("descripcionCurso");
                                                            int id1 = j10.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="V9" class="form-control" 
                                                                    <% String viernes10 =(String) session.getAttribute("viernes10");%>
                                                            <%if (viernes10.equals("no disponible")) { %> disabled='disabled' <% } %> ><%=viernes10%>        
                                                                    >
                                                        
                                                  <%    
                                                        ResultSet v10 = curso.listarCursos();%>
                                                        <% //String viernes10 =(String) session.getAttribute("viernes10");%>
                                                        <option selected="selected" value="0" ><%=viernes10%></option>
                                                        <% while (v10.next()) {
                                                            String cursos = v10.getString("descripcionCurso");
                                                            int id1 = v10.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="S9" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet s10 = curso.listarCursos();%>
                                                        <% String sabado10 =(String) session.getAttribute("sabado10");%>
                                                        <option selected="selected" value="0" ><%=sabado10%></option>
                                                        <% while (s10.next()) {
                                                            String cursos = s10.getString("descripcionCurso");
                                                            int id1 = s10.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                        <center><strong>6:00 - 7:00 pm</strong></center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="L10" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet l11 = curso.listarCursos();%>
                                                        <% String lunes11 =(String) session.getAttribute("lunes11");%>
                                                        <option selected="selected" value="0" ><%=lunes11%></option>
                                                        <% while (l11.next()) {
                                                            String cursos = l11.getString("descripcionCurso");
                                                            int id1 = l11.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="M10" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet m11 = curso.listarCursos();%>
                                                        <% String martes11 =(String) session.getAttribute("martes11");%>
                                                        <option selected="selected" value="0" ><%=martes11%></option>
                                                        <% while (m11.next()) {
                                                            String cursos = m11.getString("descripcionCurso");
                                                            int id1 = m11.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                        <select style="width: 80px;"  name="MI10" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet mi11 = curso.listarCursos();%>
                                                        <% String miercoles11 =(String) session.getAttribute("miercoles11");%>
                                                        <option selected="selected" value="0" ><%=miercoles11%></option>
                                                        <% while (mi11.next()) {
                                                            String cursos = mi11.getString("descripcionCurso");
                                                            int id1 = mi11.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                             <select style="width: 80px;"  name="J10" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet j11 = curso.listarCursos();%>
                                                        <% String jueves11 =(String) session.getAttribute("jueves11");%>
                                                        <option selected="selected" value="0" ><%=jueves11%></option>
                                                        <% while (j11.next()) {
                                                            String cursos = j11.getString("descripcionCurso");
                                                            int id1 = j11.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="V10" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet v11 = curso.listarCursos();%>
                                                        <% String viernes11 =(String) session.getAttribute("viernes11");%>
                                                        <option selected="selected" value="0" ><%=viernes11%></option>
                                                        <% while (v11.next()) {
                                                            String cursos = v11.getString("descripcionCurso");
                                                            int id1 = v11.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="S10" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet s11 = curso.listarCursos();%>
                                                        <% String sabado11 =(String) session.getAttribute("sabado11");%>
                                                        <option selected="selected" value="0" ><%=sabado11%></option>
                                                        <% while (s11.next()) {
                                                            String cursos = s11.getString("descripcionCurso");
                                                            int id1 = s11.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                        <center><strong>7:00 - 8:00 pm</strong></center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="L11" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet l12 = curso.listarCursos();%>
                                                        <% String lunes12 =(String) session.getAttribute("lunes12");%>
                                                        <option selected="selected" value="0" ><%=lunes12%></option>
                                                        <% while (l12.next()) {
                                                            String cursos = l12.getString("descripcionCurso");
                                                            int id1 = l12.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                          <select style="width: 80px;"  name="M11" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet m12 = curso.listarCursos();%>
                                                        <% String martes12 =(String) session.getAttribute("martes12");%>
                                                        <option selected="selected" value="0" ><%=martes12%></option>
                                                        <% while (m12.next()) {
                                                            String cursos = m12.getString("descripcionCurso");
                                                            int id1 = m12.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="MI11" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet mi12 = curso.listarCursos();%>
                                                        <% String miercoles12 =(String) session.getAttribute("miercoles12");%>
                                                        <option selected="selected" value="0" ><%=miercoles12%></option>
                                                        <% while (mi12.next()) {
                                                            String cursos = mi12.getString("descripcionCurso");
                                                            int id1 = mi12.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="J11" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet j12 = curso.listarCursos();%>
                                                        <% String jueves12 =(String) session.getAttribute("jueves12");%>
                                                        <option selected="selected" value="0" ><%=jueves12%></option>
                                                        <% while (j12.next()) {
                                                            String cursos = j12.getString("descripcionCurso");
                                                            int id1 = j12.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="V11" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet v12 = curso.listarCursos();%>
                                                        <% String viernes12 =(String) session.getAttribute("viernes12");%>
                                                        <option selected="selected" value="0" ><%=viernes12%></option>
                                                        <% while (v12.next()) {
                                                            String cursos = v12.getString("descripcionCurso");
                                                            int id1 = v12.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="S11" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet s12 = curso.listarCursos();%>
                                                        <% String sabado12 =(String) session.getAttribute("sabado12");%>
                                                        <option selected="selected" value="0" ><%=sabado12%></option>
                                                        <% while (s12.next()) {
                                                            String cursos = s12.getString("descripcionCurso");
                                                            int id1 = s12.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                        <center><strong>8:00 - 9:00 pm</strong></center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="L12" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet l13 = curso.listarCursos();%>
                                                        <% String lunes13 =(String) session.getAttribute("lunes13");%>
                                                        <option selected="selected" value="0" ><%=lunes13%></option>
                                                        <% while (l13.next()) {
                                                            String cursos = l13.getString("descripcionCurso");
                                                            int id1 = l13.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="M12" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet m13 = curso.listarCursos();%>
                                                         <% String martes13 =(String) session.getAttribute("martes13");%>
                                                        <option selected="selected" value="0" ><%=martes13%></option>
                                                        <% while (m13.next()) {
                                                            String cursos = m13.getString("descripcionCurso");
                                                            int id1 = m13.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="MI12" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet mi13 = curso.listarCursos();%>
                                                         <% String miercoles13 =(String) session.getAttribute("miercoles13");%>
                                                        <option selected="selected" value="0" ><%=miercoles13%></option>
                                                        <% while (mi13.next()) {
                                                            String cursos = mi13.getString("descripcionCurso");
                                                            int id1 = mi13.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="J12" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet j13 = curso.listarCursos();%>
                                                         <% String jueves13 =(String) session.getAttribute("jueves13");%>
                                                        <option selected="selected" value="0" ><%=jueves13%></option>
                                                        <% while (j13.next()) {
                                                            String cursos = j13.getString("descripcionCurso");
                                                            int id1 = j13.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="V12" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet v13 = curso.listarCursos();%>
                                                         <% String viernes13 =(String) session.getAttribute("viernes13");%>
                                                        <option selected="selected" value="0" ><%=viernes13%></option>
                                                        <% while (v13.next()) {
                                                            String cursos = v13.getString("descripcionCurso");
                                                            int id1 = v13.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="S12" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet s13 = curso.listarCursos();%>
                                                        <% String sabado13 =(String) session.getAttribute("sabado13");%>
                                                        <option selected="selected" value="0" ><%=sabado13%></option>
                                                        <% while (s13.next()) {
                                                            String cursos = s13.getString("descripcionCurso");
                                                            int id1 = s13.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                        <center><strong>9:00 - 10:00 pm</strong></center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="L13" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet l14 = curso.listarCursos();%>
                                                        <% String lunes14 =(String) session.getAttribute("lunes14");%>
                                                        <option selected="selected" value="0" ><%=lunes14%></option>
                                                        <% while (l14.next()) {
                                                            String cursos = l14.getString("descripcionCurso");
                                                            int id1 = l14.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="M13" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet m14 = curso.listarCursos();%>
                                                        <% String martes14 =(String) session.getAttribute("martes14");%>
                                                        <option selected="selected" value="0" ><%=martes14%></option>
                                                        <% while (m14.next()) {
                                                            String cursos = m14.getString("descripcionCurso");
                                                            int id1 = m14.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                             <select style="width: 80px;"  name="MI13" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet mi14 = curso.listarCursos();%>
                                                        <% String miercoles14 =(String) session.getAttribute("miercoles14");%>
                                                        <option selected="selected" value="0" ><%=miercoles14%></option>
                                                        <% while (mi14.next()) {
                                                            String cursos = mi14.getString("descripcionCurso");
                                                            int id1 = mi14.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="J13" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet j14 = curso.listarCursos();%>
                                                        <% String jueves14 =(String) session.getAttribute("jueves14");%>
                                                        <option selected="selected" value="0" ><%=jueves14%></option>
                                                        <% while (j14.next()) {
                                                            String cursos = j14.getString("descripcionCurso");
                                                            int id1 = j14.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                           <select style="width: 80px;"  name="V13" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet v14 = curso.listarCursos();%>
                                                        <% String viernes14 =(String) session.getAttribute("viernes14");%>
                                                        <option selected="selected" value="0" ><%=viernes14%></option>
                                                        <% while (v14.next()) {
                                                            String cursos = v14.getString("descripcionCurso");
                                                            int id1 = v14.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
                                                        </center>
                                                        </td>
                                                        <td>
                                                        <center>
                                                            <select style="width: 80px;"  name="S13" class="form-control">
                                                        
                                                  <%    
                                                        ResultSet s14 = curso.listarCursos();%>
                                                        <% String sabado14 =(String) session.getAttribute("sabado14");%>
                                                        <option selected="selected" value="0" ><%=sabado14%></option>
                                                        <% while (s14.next()) {
                                                            String cursos = s14.getString("descripcionCurso");
                                                            int id1 = s14.getInt("codigo_Curso");%>
                                                            <option value="<%=id1%>"><%=cursos%></option>
                                                            <%
                                                            }
                                                    %>
                                                       
                                                    </select>
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
