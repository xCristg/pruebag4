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
import java.sql.ResultSet;
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
@WebServlet(name = "srvprofesoresprueba", urlPatterns = {"/srvprofesoresprueba"})
public class srvprofesoresprueba extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");

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
        String codigo = request.getParameter("valor");
        System.out.println(codigo);
        // System.out.println("posssss");

        //CREAMOS EL OBJETO PROFESOR
        ProfesorTO profesor = new ProfesorTO();
        profesor.setCodigo_profe(Integer.parseInt(codigo));
        profesorDAO daoo = new profesorDAO();
        daoo.initialize();
        try {
            ResultSet datosprofe = daoo.DatosProfesorconCodigo(profesor);
            datosprofe.next();

            String nombre = datosprofe.getString("Nombres");
            String apep = datosprofe.getString("ApellidoP");
            String apem = datosprofe.getString("ApellidoM");
            String codprofe = datosprofe.getString("codigo_Profe");
            String categoria = datosprofe.getString("descripcion_categoria");
            String hora = datosprofe.getString("horasdisponibles");
            String curso1 = datosprofe.getString(7);
            String curso2 = datosprofe.getString(8);
            String curso3 = datosprofe.getString(9);
            String curso4 = datosprofe.getString(10);

            request.getSession().setAttribute("servletMsg1", nombre);
            request.getSession().setAttribute("servletMsg2", apep);
            request.getSession().setAttribute("servletMsg3", apem);
            request.getSession().setAttribute("servletMsg4", codprofe);
            request.getSession().setAttribute("servletMsg5", categoria);
            request.getSession().setAttribute("servletMsg6", hora);
            request.getSession().setAttribute("servletMsg7", curso1);
            request.getSession().setAttribute("servletMsg8", curso2);
            request.getSession().setAttribute("servletMsg9", curso3);
            request.getSession().setAttribute("servletMsg10", curso4);
            
            //enviar datos lunes
           HorarioDAO horlunes = new HorarioDAO();
            HorarioTO holu = new HorarioTO();
            holu.setCod_profe(Integer.parseInt(codigo));
           horlunes.initialize();
         ResultSet lunes = horlunes.horariolunes(holu);
         
         for(int i=1;lunes.next();i++){
             String disponible=  lunes.getString("disponi");
             request.getSession().setAttribute("lunes"+i,disponible);
         };
         
         //enviar datos martes
           HorarioDAO hormartes = new HorarioDAO();
            HorarioTO homa = new HorarioTO();
            homa.setCod_profe(Integer.parseInt(codigo));
           hormartes.initialize();
         ResultSet martes = hormartes.horariomartes(homa);
         
         for(int i=1;martes.next();i++){
             String disponible=  martes.getString("disponi");
             request.getSession().setAttribute("martes"+i,disponible);
         };
         
         //enviar datos miercoles
           HorarioDAO hormiercoles = new HorarioDAO();
            HorarioTO homi = new HorarioTO();
            homi.setCod_profe(Integer.parseInt(codigo));
           hormiercoles.initialize();
         ResultSet miercoles = hormiercoles.horariomiercoles(homi);
         
         for(int i=1;miercoles.next();i++){
             String disponible=  miercoles.getString("disponi");
             request.getSession().setAttribute("miercoles"+i,disponible);
         };
         
          //enviar datos jueves
           HorarioDAO horjueves = new HorarioDAO();
            HorarioTO hoju = new HorarioTO();
            hoju.setCod_profe(Integer.parseInt(codigo));
           horjueves.initialize();
         ResultSet jueves = horlunes.horariojueves(hoju);
         
         for(int i=1;jueves.next();i++){
             String disponible=  jueves.getString("disponi");
             request.getSession().setAttribute("jueves"+i,disponible);
         };
         
           //enviar datos viernes
           HorarioDAO horviernes = new HorarioDAO();
            HorarioTO hovi = new HorarioTO();
            hovi.setCod_profe(Integer.parseInt(codigo));
           horviernes.initialize();
         ResultSet viernes = horlunes.horarioviernes(hovi);
         
         for(int i=1;viernes.next();i++){
             String disponible=  viernes.getString("disponi");
             request.getSession().setAttribute("viernes"+i,disponible);
         };
         
          //enviar datos sabado
           HorarioDAO horsabado = new HorarioDAO();
            HorarioTO hosa = new HorarioTO();
            hosa.setCod_profe(Integer.parseInt(codigo));
           horsabado.initialize();
         ResultSet sabado = horsabado.horariosabado(hosa);
         
         for(int i=1;sabado.next();i++){
             String disponible=  sabado.getString("disponi");
             request.getSession().setAttribute("sabado"+i,disponible);
         };

        } catch (SQLException ex) {
            ex.toString();
        }

        response.sendRedirect("admin/vistaprofesoresprueba.jsp");
        request.setAttribute("mensaje", "Bienvenido");
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
