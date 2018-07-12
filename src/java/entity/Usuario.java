/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author APRENDIZ
 */
public class Usuario {
    
     int id;
     String nombreus;
     String nombres;
     String apellidos;
     String correo;
     String contraseña;
     int tipo=1;

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public int getId() {
        return id;
    }
    
    public String getNombreus() {
        return nombreus;
    }

    public String getNombres() {
        return nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public String getCorreo() {
        return correo;
    }

    public String getContraseña() {
        return contraseña;
    }
    
    /*  SETTERS */

    public void setId(int id) {
        this.id = id;
    }
    
    public void setNombreus(String nombreus) {
     this.nombreus = nombreus;
    }


    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
}
