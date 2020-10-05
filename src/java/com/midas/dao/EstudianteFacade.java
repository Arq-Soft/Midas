/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.midas.dao;

import com.midas.model.Estudiante;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


@Stateless
public class EstudianteFacade implements EstudianteFacadeLocal {

    @PersistenceContext(unitName = "MidasPU")
    private EntityManager em;

    @Override
    public void agregarEstudiante(Estudiante estudiante) {
        em.persist(estudiante);
    }

    @Override
    public Estudiante mostrarEstudiante(int id) {
        return em.find(Estudiante.class, id);
    }

    @Override
    public void eliminarEstudiante(int id) {
        em.remove(mostrarEstudiante(id));
    }

    @Override
    public void editarEstudiante(Estudiante estudiante) {
        em.merge(estudiante);
    }

  
    
}
