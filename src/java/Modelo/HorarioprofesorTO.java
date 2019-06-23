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
public class HorarioprofesorTO {
    private int idhorariocodigo;
    private  String estado;
    private  int codprofe;
    private  int codhorario;

    public HorarioprofesorTO(int idhorariocodigo, String estado, int codprofe, int codhorario) {
        this.idhorariocodigo = idhorariocodigo;
        this.estado = estado;
        this.codprofe = codprofe;
        this.codhorario = codhorario;
    }
    
    
    public HorarioprofesorTO() {
        this.idhorariocodigo = 0;
        this.estado = "";
        this.codprofe = 0;
        this.codhorario = 0;
    }

    public int getIdhorariocodigo() {
        return idhorariocodigo;
    }

    public void setIdhorariocodigo(int idhorariocodigo) {
        this.idhorariocodigo = idhorariocodigo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getCodprofe() {
        return codprofe;
    }

    public void setCodprofe(int codprofe) {
        this.codprofe = codprofe;
    }

    public int getCodhorario() {
        return codhorario;
    }

    public void setCodhorario(int codhorario) {
        this.codhorario = codhorario;
    }
    
}
