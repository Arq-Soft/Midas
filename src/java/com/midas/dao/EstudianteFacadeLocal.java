/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.midas.dao;

import com.midas.model.Estudiante;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author santiago.marin10
 */
@Local
public interface EstudianteFacadeLocal {

    void agregarEstudiante(Estudiante estudiante);

    Estudiante mostrarEstudiante(int id);

    void eliminarEstudiante(int id);

    void editarEstudiante(Estudiante estudiante);

    




    
}
