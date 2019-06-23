/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.HorarioDAO;
import DAO.HorarioprofeDAO;
import DAO.profesorDAO;
import Modelo.HorarioTO;
import Modelo.HorarioprofesorTO;
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
@WebServlet(name = "Servlethorarioprofesor", urlPatterns = {"/Servlethorarioprofesor"})
public class Servlethorarioprofesor extends HttpServlet {

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
        
        if(estado.equalsIgnoreCase("sin registrar")){
       //GRABAR DATOS DIA LUNES
       
        HorarioTO[] hoL = new HorarioTO[14];

        for (int i = 0; i < 14; i++) {
            hoL[i] = new HorarioTO();
            hoL[i].setCurso(0);
            hoL[i].setDia(1);
            hoL[i].setHora(i+1);
            hoL[i].setCod_profe(Integer.parseInt(codigo));
            try {
                if (Integer.parseInt(lunes[i]) == 1) {
                    hoL[i].setDisponible("disponible");
                }
            } catch (NumberFormatException es) {
                hoL[i].setDisponible("no disponible");
            }
        }

        HorarioDAO horadao = new HorarioDAO();
        horadao.initialize();

        for (int i = 0; i < 14; i++) {
            try {
                horadao.IngresarRegistro(hoL[i]);
            } catch (SQLException ex) {
                Logger.getLogger(Servlethorarioprofesor.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        //Imprimir en consola dia lunes
        for (int i = 0; i < 14; i++) {
            System.out.println(hoL[i].getDisponible());
        }
        
        //GRABAR DATOS DIA MARTES
        HorarioTO[] hoM = new HorarioTO[14];

        for (int i = 0; i < 14; i++) {
            hoM[i] = new HorarioTO();
            hoM[i].setCurso(0);
            hoM[i].setDia(2);
            hoM[i].setHora(i+1);
            hoM[i].setCod_profe(Integer.parseInt(codigo));
            try {
                if (Integer.parseInt(martes[i]) == 1) {
                    hoM[i].setDisponible("disponible");
                }
            } catch (NumberFormatException es) {
                hoM[i].setDisponible("no disponible");
            }
        }

        HorarioDAO horadaomartes = new HorarioDAO();
        horadaomartes.initialize();

        for (int i = 0; i < 14; i++) {
            try {
                horadaomartes.IngresarRegistro(hoM[i]);
            } catch (SQLException ex) {
                Logger.getLogger(Servlethorarioprofesor.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        //Imprimir en consola dia martes
        for (int i = 0; i < 14; i++) {
            System.out.println(hoM[i].getDisponible());
        }
        
        //GRABAR DATOS DIA MIERCOLES
        HorarioTO[] hoMI = new HorarioTO[14];

        for (int i = 0; i < 14; i++) {
            hoMI[i] = new HorarioTO();
            hoMI[i].setCurso(0);
            hoMI[i].setDia(3);
            hoMI[i].setHora(i+1);
            hoMI[i].setCod_profe(Integer.parseInt(codigo));
            try {
                if (Integer.parseInt(miercoles[i]) == 1) {
                    hoMI[i].setDisponible("disponible");
                }
            } catch (NumberFormatException es) {
                hoMI[i].setDisponible("no disponible");
            }
        }

        HorarioDAO horadaomiercoles = new HorarioDAO();
        horadaomiercoles.initialize();

        for (int i = 0; i < 14; i++) {
            try {
                horadaomiercoles.IngresarRegistro(hoMI[i]);
            } catch (SQLException ex) {
                Logger.getLogger(Servlethorarioprofesor.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        //Imprimir en consola dia miercoles
        for (int i = 0; i < 14; i++) {
            System.out.println(hoMI[i].getDisponible());
        }
        
                //GRABAR DATOS DIA JUEVES
        HorarioTO[] hoJ = new HorarioTO[14];

        for (int i = 0; i < 14; i++) {
            hoJ[i] = new HorarioTO();
            hoJ[i].setCurso(0);
            hoJ[i].setDia(4);
            hoJ[i].setHora(i+1);
            hoJ[i].setCod_profe(Integer.parseInt(codigo));
            try {
                if (Integer.parseInt(jueves[i]) == 1) {
                    hoJ[i].setDisponible("disponible");
                }
            } catch (NumberFormatException es) {
                hoJ[i].setDisponible("no disponible");
            }
        }

        HorarioDAO horadaojueves = new HorarioDAO();
        horadaojueves.initialize();

        for (int i = 0; i < 14; i++) {
            try {
                horadaojueves.IngresarRegistro(hoJ[i]);
            } catch (SQLException ex) {
                Logger.getLogger(Servlethorarioprofesor.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        //Imprimir en consola dia jueves
        for (int i = 0; i < 14; i++) {
            System.out.println(hoJ[i].getDisponible());
        }
        
        //GRABAR DATOS DIA VIERNES
        HorarioTO[] hoV = new HorarioTO[14];

        for (int i = 0; i < 14; i++) {
            hoV[i] = new HorarioTO();
            hoV[i].setCurso(0);
            hoV[i].setDia(5);
            hoV[i].setHora(i+1);
            hoV[i].setCod_profe(Integer.parseInt(codigo));
            try {
                if (Integer.parseInt(viernes[i]) == 1) {
                    hoV[i].setDisponible("disponible");
                }
            } catch (NumberFormatException es) {
                hoV[i].setDisponible("no disponible");
            }
        }

        HorarioDAO horadaoviernes = new HorarioDAO();
        horadaoviernes.initialize();

        for (int i = 0; i < 14; i++) {
            try {
                horadaoviernes.IngresarRegistro(hoV[i]);
            } catch (SQLException ex) {
                Logger.getLogger(Servlethorarioprofesor.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        //Imprimir en consola dia viernes
        for (int i = 0; i < 14; i++) {
            System.out.println(hoV[i].getDisponible());
        }
        
                //GRABAR DATOS DIA SABADO
        HorarioTO[] hoS = new HorarioTO[14];

        for (int i = 0; i < 14; i++) {
            hoS[i] = new HorarioTO();
            hoS[i].setCurso(0);
            hoS[i].setDia(6);
            hoS[i].setHora(i+1);
            hoS[i].setCod_profe(Integer.parseInt(codigo));
            try {
                if (Integer.parseInt(sabado[i]) == 1) {
                    hoS[i].setDisponible("disponible");
                }
            } catch (NumberFormatException es) {
                hoS[i].setDisponible("no disponible");
            }
        }

        HorarioDAO horadaosabado = new HorarioDAO();
        horadaosabado.initialize();

        for (int i = 0; i < 14; i++) {
            try {
                horadaosabado.IngresarRegistro(hoS[i]);
            } catch (SQLException ex) {
                Logger.getLogger(Servlethorarioprofesor.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        //Imprimir en consola dia SABADO
        for (int i = 0; i < 14; i++) {
            System.out.println(hoS[i].getDisponible());
        }
        //---------------RECUPERANDO CURSOS DE PREFERENCIA----------------
        String curso1 = request.getParameter("opcion1");
        String curso2 = request.getParameter("opcion2");
        String curso3 = request.getParameter("opcion3");
        String curso4 = request.getParameter("opcion4");
        
        ProfesorTO pro = new ProfesorTO();
        pro.setCurso1(Integer.parseInt(curso1));
        pro.setCurso2(Integer.parseInt(curso2));
        pro.setCurso3(Integer.parseInt(curso3));
        pro.setCurso4(Integer.parseInt(curso4));
        pro.setEstadohorario("en espera");
        pro.setCodigo_profe(Integer.parseInt(codigo));
        profesorDAO prodao = new profesorDAO();
        prodao.initialize();
        try {
            prodao.IngresarRegistroCursos(pro);
            DAO.actualizarestadohorario(codigo);
            response.sendRedirect("profesor/index.jsp");
                    ///
                    request.setAttribute("mensaje", "Bienvenido");
        } catch (SQLException ex) {
            Logger.getLogger(Servlethorarioprofesor.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        } else{
            System.out.println("Ya TIENE EL PROFESORregistro horario");
        }
        
        
        //--------------------------------------------
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
