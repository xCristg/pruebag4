/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.PersonaDAO;
import DAO.UsuarioDAO;
import DAO.profesorDAO;
import Modelo.PersonaTO;
import Modelo.ProfesorTO;
import Modelo.UsuarioTO;
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
@WebServlet(name = "SrvContra", urlPatterns = {"/SrvContra"})

public class SrvContra extends HttpServlet {

    int contador = 0;

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

        String usu = request.getParameter("usuario");
        String con = request.getParameter("password");
        UsuarioTO usuario = new UsuarioTO();
        try {
            usuario.setNumero_dni(Integer.parseInt(usu));
            usuario.setContra(con);
        } catch (NumberFormatException ex) {
            System.out.println("EXCEPTION DE NUMERO");
        }
        UsuarioDAO pro = new UsuarioDAO();
        pro.initialize();

        try {
            ResultSet existe = pro.ExisteUsuario(usuario);
            existe.next();
            if (existe.getRow() == 1) {
                if (Integer.parseInt(existe.getString("cod_Perfil")) == 1) {
                    System.out.println("Es profesor bota 1");
                    System.out.println(existe.getRow());
                    //Creams un objeto profesor
                    ProfesorTO profe = new ProfesorTO();
                    profe.setNumero_dni(Integer.parseInt(usu));
                    //creamos objetodao Inicializamos   
                    profesorDAO prodao = new profesorDAO();
                    prodao.initialize();
                    ResultSet respro = prodao.DatosProfesor(profe);
                    respro.next();
                    String nombre = respro.getString("Nombres");
                    String apep = respro.getString("ApellidoP");
                    String apem = respro.getString("ApellidoM");
                    String codprofe = respro.getString("codigo_profe");
                    String descond = respro.getString("descr_condicion");
                    String desccat = respro.getString("descripcion_categoria");
                    String horasdispo = respro.getString("horasdisponibles");
                    String descdepar = respro.getString("descripcion_Departamento");
                    
                    
                    request.getSession().setAttribute("servletMsg", nombre);
                    request.getSession().setAttribute("servletMsg2", apep);
                    request.getSession().setAttribute("servletMsg3", apem);
                    request.getSession().setAttribute("servletMsg4", codprofe);
                    request.getSession().setAttribute("servletMsg5", descond);
                    request.getSession().setAttribute("servletMsg6", desccat);
                    request.getSession().setAttribute("servletMsg7", horasdispo);
                    request.getSession().setAttribute("servletMsg8", descdepar);
                    
                    response.sendRedirect("profesor/index.jsp");
                    ///
                    request.setAttribute("mensaje", "Bienvenido");
                    // request.getRequestDispatcher("disponibilidad_horaria.jsp").forward(request, response);
                    // request.getRequestDispatcher("index.jsp").forward(request, response);
                    System.out.println("Esta dentro del sistema");
                } else {
                    System.out.println("Es administrador bota 2");
                    System.out.println(existe.getRow());
                    PersonaTO per = new PersonaTO();
                    per.setNum_dni(Integer.parseInt(usu));
                    //CREAMOS OBJETO DAO E INICIALIZAMOS
                    PersonaDAO daoper = new PersonaDAO();
                    daoper.initialize();
                    ResultSet resu = daoper.DatosProfesor(per);
                    resu.next();
                    
                    String nombre = resu.getString("Nombres");
                    String apep = resu.getString("ApellidoP");
                    String apem = resu.getString("ApellidoM");
                    String codprofe = resu.getString("Numero_Dni");
                    
                    
                    
                    request.getSession().setAttribute("servletMsg", nombre);
                    request.getSession().setAttribute("servletMsg2", apep);
                    request.getSession().setAttribute("servletMsg3", apem);
                    request.getSession().setAttribute("servletMsg4", codprofe);
                    
                    response.sendRedirect("admin/index.jsp");
                    ///
                    request.setAttribute("mensaje", "Bienvenido");
                    // request.getRequestDispatcher("disponibilidad_horaria.jsp").forward(request, response);
                    //NOTAAAAA
                   // request.getRequestDispatcher("vistaprofesor.jsp").forward(request, response);
                    System.out.println("Esta dentro del sistema");
                }
            } else {

                if (contador == 2) {

                    response.sendRedirect("https://www.policia.gob.pe/");
                    contador = 0;
                } else {
                    contador++;
                    System.out.println(contador);
                    System.out.println("No esta en el sistema");
                    System.out.println(existe.getRow());
                    request.setAttribute("mensaje", "Datos incorrectos");
                    request.getRequestDispatcher("indexcalidad.jsp").forward(request, response);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(SrvContra.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
