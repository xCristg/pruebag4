/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.HorarioDAO;
import DAO.profesorDAO;
import Modelo.HorarioTO;
import Modelo.ProfesorTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author danie
 */
@WebServlet(name = "SrvAsignaHorario", urlPatterns = {"/SrvAsignaHorario"})
public class SrvAsignaHorario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String[] lunes = new String[14];
        String[] martes = new String[14];
        String[] miercoles = new String[14];
        String[] jueves = new String[14];
        String[] viernes = new String[14];
        String[] sabado = new String[14];
        
                //RECUPERANDO VALORES DE HORARIO
        for (int i = 0; i < 14; i++) {
            String dato = request.getParameter("L" + (i));
            String dato1 = request.getParameter("M" + (i));
            String dato2 = request.getParameter("MI" + (i));
            String dato3 = request.getParameter("J" + (i));
            String dato4 = request.getParameter("V" + (i));
            String dato5 = request.getParameter("S" + (i));
            
            lunes[i] = dato;
            martes[i] = dato1;
            miercoles[i] = dato2;
            jueves[i] = dato3;
            viernes[i] = dato4;
            sabado[i] = dato5;
        }
        
        //Manejar el codigo de la persona
        String codigo = (String) request.getSession().getAttribute("variable");
        System.out.println(codigo);
        //---------
        
        profesorDAO DAO = new profesorDAO();
        DAO.initialize();
        String estado = DAO.estadohorario(codigo);
        
        if(estado.equalsIgnoreCase("en espera")){
        
            //GRABAR DATOS DIA LUNES
       
        HorarioTO[] hoL = new HorarioTO[14];

        for (int i = 0; i < 14; i++) {
            hoL[i] = new HorarioTO();
            try{
            hoL[i].setCurso(Integer.parseInt(lunes[i]));
            }catch(NumberFormatException e ){
            hoL[i].setCurso(0);
            }
            
            hoL[i].setDia(1);
            hoL[i].setHora(i+1);
            hoL[i].setCod_profe(Integer.parseInt(codigo));
 
        }

        HorarioDAO horadao = new HorarioDAO();
        horadao.initialize();

        for (int i = 0; i < 14; i++) {
            try {
                horadao.IngresarRegistroCurso(hoL[i]); //ACA PONER METODO QUE CAMBIA EL CURSO 
            } catch (SQLException ex) {
                Logger.getLogger(Servlethorarioprofesor.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        //Imprimir en consola dia lunes
        for (int i = 0; i < 14; i++) {
            System.out.println(hoL[i].getCurso());
        }
        //......................
        
                    //GRABAR DATOS DIA MARTES
       
        HorarioTO[] hoM = new HorarioTO[14];

        for (int i = 0; i < 14; i++) {
            hoM[i] = new HorarioTO();
            try{
            hoM[i].setCurso(Integer.parseInt(martes[i]));
            }catch(NumberFormatException e){
                hoM[i].setCurso(0);
            }
            hoM[i].setDia(2);
            hoM[i].setHora(i+1);
            hoM[i].setCod_profe(Integer.parseInt(codigo));
 
        }

        HorarioDAO horamartes = new HorarioDAO();
        horamartes.initialize();

        for (int i = 0; i < 14; i++) {
            try {
                horamartes.IngresarRegistroCurso(hoM[i]); //ACA PONER METODO QUE CAMBIA EL CURSO 
            } catch (SQLException ex) {
                Logger.getLogger(Servlethorarioprofesor.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        //Imprimir en consola dia martes
        for (int i = 0; i < 14; i++) {
            System.out.println(hoM[i].getCurso());
        }
        
           //......................
        
                    //GRABAR DATOS DIA MIEIRCOLES
       
        HorarioTO[] hoMI = new HorarioTO[14];

        for (int i = 0; i < 14; i++) {
            hoMI[i] = new HorarioTO();
             try{
            hoMI[i].setCurso(Integer.parseInt(miercoles[i]));
            }catch(NumberFormatException e){
                hoMI[i].setCurso(0);
            }
            hoMI[i].setDia(3);
            hoMI[i].setHora(i+1);
            hoMI[i].setCod_profe(Integer.parseInt(codigo));
 
        }

        HorarioDAO horamiercoles = new HorarioDAO();
        horamiercoles.initialize();

        for (int i = 0; i < 14; i++) {
            try {
                horamiercoles.IngresarRegistroCurso(hoMI[i]); //ACA PONER METODO QUE CAMBIA EL CURSO 
            } catch (SQLException ex) {
                Logger.getLogger(Servlethorarioprofesor.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        //Imprimir en consola dia miercoles
        for (int i = 0; i < 14; i++) {
            System.out.println(hoMI[i].getCurso());
        }
        
        //......................
        
                    //GRABAR DATOS DIA Jueves
       
        HorarioTO[] hoJ = new HorarioTO[14];

        for (int i = 0; i < 14; i++) {
            hoJ[i] = new HorarioTO();
             try{
            hoJ[i].setCurso(Integer.parseInt(jueves[i]));
            }catch(NumberFormatException e){
                hoJ[i].setCurso(0);
            }
            hoJ[i].setDia(4);
            hoJ[i].setHora(i+1);
            hoJ[i].setCod_profe(Integer.parseInt(codigo));
 
        }

        HorarioDAO horajueves = new HorarioDAO();
        horajueves.initialize();

        for (int i = 0; i < 14; i++) {
            try {
                horajueves.IngresarRegistroCurso(hoJ[i]); //ACA PONER METODO QUE CAMBIA EL CURSO 
            } catch (SQLException ex) {
                Logger.getLogger(Servlethorarioprofesor.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        //Imprimir en consola dia jueves
        for (int i = 0; i < 14; i++) {
            System.out.println(hoJ[i].getCurso());
        }
        
                //......................
        
                    //GRABAR DATOS DIA VIERNES
       
        HorarioTO[] hoV = new HorarioTO[14];

        for (int i = 0; i < 14; i++) {
            hoV[i] = new HorarioTO();
             try{
            hoV[i].setCurso(Integer.parseInt(viernes[i]));
            }catch(NumberFormatException e){
                hoV[i].setCurso(0);
            }
            hoV[i].setDia(5);
            hoV[i].setHora(i+1);
            hoV[i].setCod_profe(Integer.parseInt(codigo));
 
        }

        HorarioDAO horaviernes = new HorarioDAO();
        horaviernes.initialize();

        for (int i = 0; i < 14; i++) {
            try {
                horaviernes.IngresarRegistroCurso(hoV[i]); //ACA PONER METODO QUE CAMBIA EL CURSO 
            } catch (SQLException ex) {
                Logger.getLogger(Servlethorarioprofesor.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        //Imprimir en consola dia viernes
        for (int i = 0; i < 14; i++) {
            System.out.println(hoV[i].getCurso());
        }
        
         //GRABAR DATOS DIA SABADO
       
        HorarioTO[] hoS = new HorarioTO[14];

        for (int i = 0; i < 14; i++) {
            hoS[i] = new HorarioTO();
             try{
            hoS[i].setCurso(Integer.parseInt(sabado[i]));
            }catch(NumberFormatException e){
                hoS[i].setCurso(0);
            }
            hoS[i].setDia(6);
            hoS[i].setHora(i+1);
            hoS[i].setCod_profe(Integer.parseInt(codigo));
 
        }

        HorarioDAO horasabado = new HorarioDAO();
        horasabado.initialize();

        for (int i = 0; i < 14; i++) {
            try {
                horaviernes.IngresarRegistroCurso(hoS[i]); //ACA PONER METODO QUE CAMBIA EL CURSO 
            } catch (SQLException ex) {
                Logger.getLogger(Servlethorarioprofesor.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        //Imprimir en consola dia sabado
        for (int i = 0; i < 14; i++) {
            System.out.println(hoS[i].getCurso());
        }
        
 
        DAO.actualizarestadohorarioresgistrado(codigo);
        
        response.sendRedirect("admin/index.jsp");
                    ///
                    request.setAttribute("mensaje", "Bienvenido");
        
        }else{
            System.out.println("El horario del profesor no esta disponible para asignar");
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
