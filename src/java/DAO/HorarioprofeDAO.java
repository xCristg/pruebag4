/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.HorarioTO;
import Modelo.HorarioprofesorTO;
import com.mysql.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author danie
 */
public class HorarioprofeDAO {
       private Connection _connection;
    public Statement statement;
    private String serverName = "localhost";
    private String portNumber = "3306";
    private String databaseName = "asignacion_profesores";
    private String url = "jdbc:mysql://" + serverName + ":" + portNumber + "/" + databaseName;
    private String userName = "root";
    private String password = "";

    public void initialize() {
        try {
            DriverManager.registerDriver(new Driver());
            _connection = DriverManager.getConnection(url, userName, password);
            System.out.println("Conectado a la base de datos");
        } catch (SQLException e) {
            System.out.println("Error al registrar el controlador " + e.getMessage());
        }
    }
    
        public void IngresarRegistro(HorarioprofesorTO hora) throws SQLException {
        Statement statement = null;
        
        String id_horarioprofe= Integer.toString(hora.getIdhorariocodigo());
        String estado = hora.getEstado();     
        String codprofe =Integer.toString(hora.getCodprofe());
        String idhorario =Integer.toString(hora.getCodhorario());
       
        
        try {
            statement = _connection.createStatement();
            ResultSet resultSet = statement.executeQuery("INSERT INTO horario_profe VALUES ("+id_horarioprofe+","+estado+","+codprofe+","+idhorario+");");
            
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
            
        }

    }
}
