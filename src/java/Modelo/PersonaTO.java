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
public class PersonaTO {
    private int num_dni;
    private String nombre;
    private String apeP;
    private String apeM;
    private String sexo;
    private String fechaNac;
    private String correo;

    public PersonaTO(int num_dni, String nombre, String apeP, String apeM, String sexo, String fechaNac, String correo) {
        this.num_dni = num_dni;
        this.nombre = nombre;
        this.apeP = apeP;
        this.apeM = apeM;
        this.sexo = sexo;
        this.fechaNac = fechaNac;
        this.correo = correo;
    }
    
        public PersonaTO() {
        this.num_dni = 0;
        this.nombre = "";
        this.apeP = "";
        this.apeM = "";
        this.sexo = "";
        this.fechaNac = "";
        this.correo = "";
    }

    public int getNum_dni() {
        return num_dni;
    }

    public void setNum_dni(int num_dni) {
        this.num_dni = num_dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApeP() {
        return apeP;
    }

    public void setApeP(String apeP) {
        this.apeP = apeP;
    }

    public String getApeM() {
        return apeM;
    }

    public void setApeM(String apeM) {
        this.apeM = apeM;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getFechaNac() {
        return fechaNac;
    }

    public void setFechaNac(String fechaNac) {
        this.fechaNac = fechaNac;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
    
}
