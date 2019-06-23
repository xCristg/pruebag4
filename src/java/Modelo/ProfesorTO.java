/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author danie
 */
public class ProfesorTO {
    
   private int codigo_profe;
   private int numero_dni;
   private int id_condicion;
   private int id_categoria;
   private int id_clase;
   private int cod_facultad;
   private int cod_despartamento;
   
   private int curso1;
   private int curso2;
   private int curso3;
   private int curso4;
private  String estadohorario;
    public ProfesorTO(int codigo_profe, int numero_dni, int id_condicion, int id_categoria, int id_clase, int cod_facultad, int cod_despartamento, int curso1 , int curso2 , int curso3 , int curso4 , String estadohorario) {
        this.codigo_profe = codigo_profe;
        this.numero_dni = numero_dni;
        this.id_condicion = id_condicion;
        this.id_categoria = id_categoria;
        this.id_clase = id_clase;
        this.cod_facultad = cod_facultad;
        this.cod_despartamento = cod_despartamento;
        this.curso1 = curso1;
        this.curso2 =curso2;
        this.curso3 = curso3;
        this.curso4 = curso4;
        this.estadohorario = estadohorario;
                }
    
        public ProfesorTO() {
        this.codigo_profe = 0;
        this.numero_dni = 0;
        this.id_condicion =0;
        this.id_categoria = 0;
        this.id_clase = 0;
        this.cod_facultad = 0;
        this.cod_despartamento = 0;
        this.curso1 = 0;
        this.curso2 = 0;
        this.curso3 = 0;
        this.curso4 = 0;
        this.estadohorario= "";
    }

    public int getCodigo_profe() {
        return codigo_profe;
    }

    public void setCodigo_profe(int codigo_profe) {
        this.codigo_profe = codigo_profe;
    }

    public int getNumero_dni() {
        return numero_dni;
    }

    public void setNumero_dni(int numero_dni) {
        this.numero_dni = numero_dni;
    }

    public int getId_condicion() {
        return id_condicion;
    }

    public void setId_condicion(int id_condicion) {
        this.id_condicion = id_condicion;
    }

    public int getId_categoria() {
        return id_categoria;
    }

    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
    }

    public int getId_clase() {
        return id_clase;
    }

    public void setId_clase(int id_clase) {
        this.id_clase = id_clase;
    }

    public int getCod_facultad() {
        return cod_facultad;
    }

    public void setCod_facultad(int cod_facultad) {
        this.cod_facultad = cod_facultad;
    }

    public int getCod_despartamento() {
        return cod_despartamento;
    }

    public void setCod_despartamento(int cod_despartamento) {
        this.cod_despartamento = cod_despartamento;
    }

    public int getCurso1() {
        return curso1;
    }

    public int getCurso2() {
        return curso2;
    }

    public int getCurso3() {
        return curso3;
    }

    public int getCurso4() {
        return curso4;
    }

    public void setCurso1(int curso1) {
        this.curso1 = curso1;
    }

    public void setCurso2(int curso2) {
        this.curso2 = curso2;
    }

    public void setCurso3(int curso3) {
        this.curso3 = curso3;
    }

    public void setCurso4(int curso4) {
        this.curso4 = curso4;
    }

    public String getEstadohorario() {
        return estadohorario;
    }

    public void setEstadohorario(String estadohorario) {
        this.estadohorario = estadohorario;
    }
        
   
}
