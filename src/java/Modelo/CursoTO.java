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
public class CursoTO {
    private  int codigoCurso;
    private  String descr_curso;
    private  int cod_facultad;
    private  int cod_escuela;

    public CursoTO(int codigoCurso, String descr_curso, int cod_facultad, int cod_escuela) {
        this.codigoCurso = codigoCurso;
        this.descr_curso = descr_curso;
        this.cod_facultad = cod_facultad;
        this.cod_escuela = cod_escuela;
    }
    
        public CursoTO() {
        this.codigoCurso = 0;
        this.descr_curso = "";
        this.cod_facultad = 0;
        this.cod_escuela = 0;
    }

    public int getCodigoCurso() {
        return codigoCurso;
    }

    public void setCodigoCurso(int codigoCurso) {
        this.codigoCurso = codigoCurso;
    }

    public String getDescr_curso() {
        return descr_curso;
    }

    public void setDescr_curso(String descr_curso) {
        this.descr_curso = descr_curso;
    }

    public int getCod_facultad() {
        return cod_facultad;
    }

    public void setCod_facultad(int cod_facultad) {
        this.cod_facultad = cod_facultad;
    }

    public int getCod_escuela() {
        return cod_escuela;
    }

    public void setCod_escuela(int cod_escuela) {
        this.cod_escuela = cod_escuela;
    }
    
        
}
