/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.HorarioTO;

import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author danie
 */
public class prueba {
    public static void main(String[] args) throws SQLException {
//        String contra ="zama";
//        String usuario = "70342339";
//                    
//                    ProfesorTO profe = new ProfesorTO();
//                    profe.setNumero_dni(Integer.parseInt(usuario));
//                            
//                    profesorDAO prodao = new profesorDAO();
//                    prodao.initialize();
//                    ResultSet respro = prodao.DatosProfesor(profe);
//                    respro.next();
//                    String nombre = respro.getString("Nombres");
//                    System.out.println(nombre);
//          
//         CursoDAO curso = new CursoDAO();
//         curso.initialize();
//         ResultSet res =curso.listarCursos();
//         while(res.next()){
//             String dato = res.getString("descripcionCurso");
//             System.out.println(dato);
//         }

//HorarioTO hora = new HorarioTO();
//hora.setDia(1);
//hora.setDisponible("no disponible");
//hora.setCurso(1);
//hora.setHora(1);
//hora.setCod_profe(16200089);
//HorarioDAO dao =  new HorarioDAO();
//dao.initialize();
//dao.IngresarRegistro(hora);
//ProfesorTO pr= new ProfesorTO();
//pr.setCodigo_profe(16200089);
//profesorDAO daoo = new profesorDAO();
//daoo.initialize();
//ResultSet datos = daoo.DatosProfesorconCodigo(pr);
//datos.next();
//
//        System.out.println(datos.getString(7));
//        UsuarioTO usu = new UsuarioTO();
//        usu.setNumero_dni(Integer.parseInt(usuario));
//        usu.setContra(contra);
      
//        ProfesorTO pro = new ProfesorTO();
//        pro.setNumero_dni(Integer.parseInt(usuario));
//    UsuarioDAO dao = new UsuarioDAO();
//     dao.initialize();
//     
//     
//     profesorDAO daop = new profesorDAO();
//     daop.initialize();
//     ResultSet resul2= daop.DatosProfesor(pro);
//     resul2.next();
//       String nom = resul2.getString("Nombres");
//       String nom2 = resul2.getString("ApellidoP");
//       String nom3 = resul2.getString("ApellidoM");
//        System.out.println(nom+ nom2+nom3);
     
//     ResultSet resul= dao.ExisteUsuario(usu);
//        System.out.println(resul.getRow());
//     resul.next();
//     String nom = resul.getString("Nombres");
//        System.out.println(nom);
//        System.out.println(resul.getRow());
//        
//        if(resul.getRow()==0){
//            System.out.println("NO existe usuario");
//        } else {
//            System.out.println("SI existe");
//        }

//           HorarioDAO horlunes = new HorarioDAO();
//            HorarioTO holu = new HorarioTO();
//            holu.setCod_profe(16200089);
//           horlunes.initialize();
//         ResultSet lunes = horlunes.horariolunes(holu);
//         for(int i=1;lunes.next();i++){
//             String disponible=  lunes.getString("disponi");
//             System.out.println(disponible+"numero"+i);
//             
//         }

String dato = null;
        System.out.println(dato);
    }
}
