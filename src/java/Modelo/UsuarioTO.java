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
public class UsuarioTO {
    
    private int codigo_usuario;
    private  int numero_dni;
    private int codigo_perfil;
    private  String contra;

    public UsuarioTO(int codigo_usuario, int numero_dni, int codigo_perfil, String contra) {
        this.codigo_usuario = codigo_usuario;
        this.numero_dni = numero_dni;
        this.codigo_perfil = codigo_perfil;
        this.contra = contra;
    }
    
    public UsuarioTO() {
        this.codigo_usuario = 0;
        this.numero_dni = 0;
        this.codigo_perfil = 0;
        this.contra = "";
    }

    public int getCodigo_usuario() {
        return codigo_usuario;
    }

    public void setCodigo_usuario(int codigo_usuario) {
        this.codigo_usuario = codigo_usuario;
    }

    public int getNumero_dni() {
        return numero_dni;
    }

    public void setNumero_dni(int numero_dni) {
        this.numero_dni = numero_dni;
    }

    public int getCodigo_perfil() {
        return codigo_perfil;
    }

    public void setCodigo_perfil(int codigo_perfil) {
        this.codigo_perfil = codigo_perfil;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }
    
        
    
    
}
