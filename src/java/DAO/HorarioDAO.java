/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.HorarioTO;
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
public class HorarioDAO {

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

    public void IngresarRegistro(HorarioTO hora) throws SQLException {
        Statement statement = null;

        String dia = Integer.toString(hora.getDia());
        String ora = Integer.toString(hora.getHora());
        String cur = Integer.toString(hora.getCurso());
        String dispo = (hora.getDisponible());
        String codprofe = Integer.toString(hora.getCod_profe());
        try {
            statement = _connection.createStatement();
            statement.executeUpdate("INSERT INTO horario (dia,hora,curso,disponi,tb_profesores_codigo_Profe) VALUES (" + dia + "," + ora + "," + cur + ",'" + dispo + "'," + codprofe + ");");
            System.out.println("Ejecutado correctamente");
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());

        }

    }
    
        public void IngresarRegistroCurso(HorarioTO hora) throws SQLException {
        Statement statement = null;

        String dia = Integer.toString(hora.getDia());
        String ora = Integer.toString(hora.getHora());
        String cur = Integer.toString(hora.getCurso());
       
        String codprofe = Integer.toString(hora.getCod_profe());
        try {
            statement = _connection.createStatement();
            statement.executeUpdate("UPDATE horario SET  horario.curso = '"+cur+"'  where (`tb_profesores_codigo_Profe` = "+codprofe+" and dia = "+dia+" and hora = "+ora+") ;");
            System.out.println("Ejecutado correctamente");
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());

        }

    }

    public ResultSet horariolunes(HorarioTO ora) {
        String codigo = Integer.toString(ora.getCod_profe());
        Statement statement = null;
        try {
            statement = _connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM horario WHERE `tb_profesores_codigo_Profe`=" + codigo + " and dia = 1;");

            return resultSet;
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
            return null;
        }

    }

    public ResultSet horariomartes(HorarioTO ora) {
        String codigo = Integer.toString(ora.getCod_profe());
        Statement statement = null;
        try {
            statement = _connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM horario WHERE `tb_profesores_codigo_Profe`=" + codigo + " and dia = 2;");

            return resultSet;
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
            return null;
        }
    }

    public ResultSet horariomiercoles(HorarioTO ora) {
        String codigo = Integer.toString(ora.getCod_profe());
        Statement statement = null;
        try {
            statement = _connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM horario WHERE `tb_profesores_codigo_Profe`=" + codigo + " and dia = 3;");

            return resultSet;
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
            return null;
        }

    }

    public ResultSet horariojueves(HorarioTO ora) {
        String codigo = Integer.toString(ora.getCod_profe());
        Statement statement = null;
        try {
            statement = _connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM horario WHERE `tb_profesores_codigo_Profe`=" + codigo + " and dia = 4;");

            return resultSet;
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
            return null;
        }

    }

    public ResultSet horarioviernes(HorarioTO ora) {
        String codigo = Integer.toString(ora.getCod_profe());
        Statement statement = null;
        try {
            statement = _connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM horario WHERE `tb_profesores_codigo_Profe`=" + codigo + " and dia = 5;");

            return resultSet;
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
            return null;
        }

    }

    public ResultSet horariosabado(HorarioTO ora) {
        String codigo = Integer.toString(ora.getCod_profe());
        Statement statement = null;
        try {
            statement = _connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM horario WHERE `tb_profesores_codigo_Profe`=" + codigo + " and dia = 6;");

            return resultSet;
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
            return null;
        }

    }
}
