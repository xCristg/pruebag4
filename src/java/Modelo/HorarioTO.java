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
public class HorarioTO {
    private int id_horario;
    private int dia;
    private  int hora;
    private  int curso;
    private  String disponible;
    private  int cod_profe;

    public HorarioTO(int id_horario, int dia, int hora, int curso, String disponible, int cod_profe) {
        this.id_horario = id_horario;
        this.dia = dia;
        this.hora = hora;
        this.curso = curso;
        this.disponible = disponible;
        this.cod_profe = cod_profe;
    }
    
        public HorarioTO() {
        this.id_horario = 0;
        this.dia = 0;
        this.hora = 0;
        this.curso = 0;
        this.disponible = "";
        this.cod_profe= 0;
    }

    public int getId_horario() {
        return id_horario;
    }

    public void setId_horario(int id_horario) {
        this.id_horario = id_horario;
    }

    public int getDia() {
        return dia;
    }

    public void setDia(int dia) {
        this.dia = dia;
    }

    public int getHora() {
        return hora;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }

    public int getCurso() {
        return curso;
    }

    public void setCurso(int curso) {
        this.curso = curso;
    }

    public String getDisponible() {
        return disponible;
    }

    public void setDisponible(String disponible) {
        this.disponible = disponible;
    }

    public int getCod_profe() {
        return cod_profe;
    }

    public void setCod_profe(int cod_profe) {
        this.cod_profe = cod_profe;
    }
        
        
}
