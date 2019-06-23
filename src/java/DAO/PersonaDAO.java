/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.PersonaTO;
import Modelo.ProfesorTO;
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
public class PersonaDAO {
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
    
        public ResultSet DatosProfesor(PersonaTO per) throws SQLException{
        Statement statement = null;
        String numero_dni = Integer.toString(per.getNum_dni());
        try {
            statement = _connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT tb_persona.`Nombres` ,tb_persona.`ApellidoP` ,tb_persona.`ApellidoM` ,tb_persona.`Numero_Dni` FROM tb_usuario JOIN tb_persona ON tb_usuario.`Numero_Dni` = tb_persona.`Numero_Dni` where tb_persona.`Numero_Dni` = "+numero_dni+";");
         
            return resultSet;   
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
            return null;
        }
        
       
    }
}
