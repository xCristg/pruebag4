/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import Modelo.UsuarioTO;
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
public class UsuarioDAO {
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
    
          public ResultSet ExisteUsuario(UsuarioTO usuario) throws SQLException{
        Statement statement = null;
        String numero_dni = Integer.toString(usuario.getNumero_dni());
        String contra = usuario.getContra();
        try {
            statement = _connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select tb_usuario.`contraseÃ±a` ,tb_persona.`Numero_Dni`,tb_persona.`Nombres`,tb_usuario.`cod_Perfil` FROM tb_usuario join tb_persona on tb_persona.`Numero_Dni`=tb_usuario.`Numero_Dni` where `contraseÃ±a`='"+contra+"' and tb_usuario.`Numero_Dni`="+numero_dni+";");
         
            return resultSet;   
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
            return null;
        }
        
       
    }
}
