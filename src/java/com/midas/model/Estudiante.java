/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.midas.model;

import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.transaction.UserTransaction;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;


@Entity
@Table(name = "estudiante")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Estudiante.findAll", query = "SELECT e FROM Estudiante e")})
public class Estudiante implements Serializable {

    @Id
    @Column(name = "idEstudiante")
    private Integer idEstudiante;
    @Size(min = 1, max = 20)
    @Column(name = "nombres")
    private String nombres;
    @Size(min = 1, max = 20)
    @Column(name = "apellidos")
    private String apellidos;
    @Size(max = 20)
    @Column(name = "ciudadNac")
    private String ciudadNac;
    @Column(name = "edad")
    private int edad;
    @Size(max = 20)
    @Column(name = "residencia")
    private String residencia;
    @Column(name = "tel")
    private Integer tel;
    @Size(max = 60)
    @Column(name = "correo")
    private String correo;
    @Size(max = 200)
    @Column(name = "materias")
    private String materias;
    

    public Estudiante(Integer idEstudiante, String nombres, String apellidos, String ciudadNac, int edad, String residencia, Integer tel, String correo, String materias) {
        this.idEstudiante = idEstudiante;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.ciudadNac = ciudadNac;
        this.edad = edad;
        this.residencia = residencia;
        this.tel = tel;
        this.correo = correo;
        this.materias = materias;
    }

    public Estudiante() {
    }

    public Estudiante(Integer idEstudiante) {
        this.idEstudiante = idEstudiante;
    }

    public Estudiante(Integer idEstudiante, String nombres, String apellidos, int edad) {
        this.idEstudiante = idEstudiante;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.edad = edad;
    }
    
    public Integer getIdEstudiante() {
        return idEstudiante;
    }

    public void setIdEstudiante(Integer idEstudiante) {
        this.idEstudiante = idEstudiante;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCiudadNac() {
        return ciudadNac;
    }

    public void setCiudadNac(String ciudadNac) {
        this.ciudadNac = ciudadNac;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getResidencia() {
        return residencia;
    }

    public void setResidencia(String residencia) {
        this.residencia = residencia;
    }

    public Integer getTel() {
        return tel;
    }

    public void setTel(Integer tel) {
        this.tel = tel;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
    
   public String getMaterias() {
        return materias;
    }

    public void setMaterias(String materias) {
        this.materias = materias;
    }
    
    

    public void persist(Object object) {
        /* Add this to the deployment descriptor of this module (e.g. web.xml, ejb-jar.xml):
         * <persistence-context-ref>
         * <persistence-context-ref-name>persistence/LogicalName</persistence-context-ref-name>
         * <persistence-unit-name>MidasPU</persistence-unit-name>
         * </persistence-context-ref>
         * <resource-ref>
         * <res-ref-name>UserTransaction</res-ref-name>
         * <res-type>javax.transaction.UserTransaction</res-type>
         * <res-auth>Container</res-auth>
         * </resource-ref> */
        try {
            Context ctx = new InitialContext();
            UserTransaction utx = (UserTransaction) ctx.lookup("java:comp/env/UserTransaction");
            utx.begin();
            EntityManager em = (EntityManager) ctx.lookup("java:comp/env/persistence/LogicalName");
            em.persist(object);
            utx.commit();
        } catch (Exception e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
        }
    }

    
}
