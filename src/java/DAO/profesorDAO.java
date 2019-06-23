/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.HorarioTO;
import Modelo.ProfesorTO;
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
public class profesorDAO {
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
    
    public ResultSet DatosProfesor(ProfesorTO pro) throws SQLException{
        Statement statement = null;
        String numero_dni = Integer.toString(pro.getNumero_dni());
        try {
            statement = _connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select tb_persona.`Nombres`,tb_persona.`ApellidoP`,tb_persona.`ApellidoM`,codigo_profe, tb_condicion.descr_condicion , tb_categoria.descripcion_categoria,tb_categoria.horasdisponibles,tb_departamento_academico.`descripcion_Departamento`from tb_profesores \n" +
"inner join tb_condicion on (tb_profesores.`id_Condicion`= tb_condicion.`id_Condicion`)\n" +
"inner join tb_categoria on (tb_categoria.id_categoria=tb_profesores.`id_Categoria`)\n" +
"inner join tb_departamento_academico on (tb_departamento_academico.`cod_Departamento` = tb_profesores.`cod_Departamento`)\n" +
"inner join tb_persona on (tb_profesores.`Numero_Dni` = tb_persona.`Numero_Dni`)\n" +
" where (tb_profesores.`Numero_Dni`="+numero_dni+");");
         
            return resultSet;   
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
            return null;
        }
        
       
    }
    
        public ResultSet DatosProfesorconCodigo(ProfesorTO pro) throws SQLException{
        Statement statement = null;
        String codigo = Integer.toString(pro.getCodigo_profe());
        try {
            statement = _connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT a.`Nombres` , a.`ApellidoP`,\n" +
"a.`ApellidoM`, b.`codigo_Profe`, h.descripcion_categoria, h.horasdisponibles, c.`descripcionCurso`,\n" +
"d.`descripcionCurso`, e.`descripcionCurso`,f.`descripcionCurso`\n" +
"from tb_profesores  b\n" +
"inner join tb_persona a\n" +
"on a.`Numero_Dni` = b.`Numero_Dni`\n" +
"INNER JOIN tb_cursos c\n" +
"on c.`codigo_Curso` = b.`tb_cursos_codigo_Curso`\n" +
"INNER JOIN tb_cursos d\n" +
"on d.`codigo_Curso` = b.`tb_cursos_codigo_Curso1`\n" +
"INNER JOIN tb_cursos e\n" +
"on e.`codigo_Curso` = b.`tb_cursos_codigo_Curso2`\n" +
"INNER JOIN tb_cursos f\n" +
"on f.`codigo_Curso` = b.`tb_cursos_codigo_Curso3`\n" +
"INNER JOIN tb_categoria h\n" +
"ON  h.id_categoria = b.`id_Categoria` where b.`codigo_Profe` = "+codigo+";");
         
            return resultSet;   
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
            return null;
        }
        
       
    }
    
        public void IngresarRegistroCursos(ProfesorTO pro) throws SQLException {
        Statement statement = null;
        
        String curso1 = Integer.toString(pro.getCurso1());
        String curso2 = Integer.toString(pro.getCurso2());
        String curso3 = Integer.toString(pro.getCurso3());
        String curso4 = Integer.toString(pro.getCurso4());
        String cod = Integer.toString(pro.getCodigo_profe());
        String estado = pro.getEstadohorario();
        
        try {
            statement = _connection.createStatement();
            statement.executeUpdate("UPDATE `tb_profesores` SET `tb_cursos_codigo_Curso` = '"+curso1+"' , `tb_cursos_codigo_Curso1`='"+curso2+"',\n" +
" `tb_cursos_codigo_Curso2`='"+curso3+"', `tb_cursos_codigo_Curso3`='"+curso4+"' , `estadohorario` = '"+estado+"' WHERE `tb_profesores`.`codigo_Profe` = "+cod+";");
            System.out.println("Ejecutado correctamente");
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
            
        }

    }
       
    public ResultSet listarProfesores() {
        Statement statement = null;

        try {
            statement = _connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT tb_profesores.`codigo_Profe` ,  tb_persona.`Nombres` ,tb_persona.`ApellidoP`,  tb_persona.`ApellidoM`\n" +
",tb_profesores.estadohorario FROM tb_profesores join tb_persona on tb_persona.`Numero_Dni` = tb_profesores.`Numero_Dni`;");
            return resultSet;
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
        }
        return null;
    }

    public String estadohorario(String codigo){
        String mensaje;
        Statement statement = null;
        
        try {
            statement = _connection.createStatement();
            ResultSet resul = statement.executeQuery("SELECT tb_profesores.estadohorario FROM tb_profesores \n" +
        "WHERE (tb_profesores.`codigo_Profe`="+codigo+");");
           resul.next();
           mensaje= resul.getString(1);
            return mensaje;   
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
            return null;
        }
    }
    
        public void actualizarestadohorario(String codigo){
        
        Statement statement = null;
        
        try {
            statement = _connection.createStatement();
           statement.executeUpdate("UPDATE tb_profesores SET estadohorario = 'en espera' \n" +
"where `codigo_Profe`="+codigo+";");
          
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
            
        }
    }
        
     public void actualizarestadohorarioresgistrado(String codigo){
        
        Statement statement = null;
        
        try {
            statement = _connection.createStatement();
           statement.executeUpdate("UPDATE tb_profesores SET estadohorario = 'registrado' \n" +
"where `codigo_Profe`="+codigo+";");
          
        } catch (SQLException e) {
            System.out.println("Error crear la sentencia " + e.getMessage());
            
        }
    }

}
