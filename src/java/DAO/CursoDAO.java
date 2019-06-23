/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import Modelo.CursoTO;
import com.mysql.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author danie
 */
public class CursoDAO {
    
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
    
    public ResultSet listarCursos() {
        Statement statement = null;

        try {
            statement = _connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT `codigo_Curso`,`descripcionCurso` FROM tb_cursos ;");
            return resultSet;
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
        }
        return null;
    }
    
}
