/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.midas.controller;

import com.midas.dao.EstudianteFacadeLocal;
import com.midas.model.Estudiante;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author santiago.marin10
 */
public class MenuServlet extends HttpServlet {

    @EJB
    private EstudianteFacadeLocal estudianteFacade;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("action");
            String idStr = request.getParameter("idEstudiante");
            int idEstudiante = 0;
            if (idStr != null && !idStr.equals("")) {
                idEstudiante = Integer.parseInt(idStr);
            }
            RequestDispatcher a;

            if ("Buscar".equalsIgnoreCase(action)) {
                Estudiante estu = estudianteFacade.mostrarEstudiante(idEstudiante);
                request.setAttribute("estudiante", estu);
                a = request.getRequestDispatcher("datos.jsp");
            } else {
                if ("Borrar".equalsIgnoreCase(action)) {
                    estudianteFacade.eliminarEstudiante(idEstudiante);

                } else {
                    String nombres = request.getParameter("nombres");
                    String apellidos = request.getParameter("apellidos");
                    String ciudadNac = request.getParameter("ciudadNac");
                    String edadStr = request.getParameter("edad");
                    int edad = 0;
                    if (edadStr != null && !edadStr.equals("")) {
                        edad = Integer.parseInt(edadStr);
                    }
                    String residencia = request.getParameter("residencia");
                    String telStr = request.getParameter("telefono");
                    int tel = 0;
                    if (telStr != null && !telStr.equals("")) {
                        tel = Integer.parseInt(telStr);
                    }
                    String correo = request.getParameter("correo");
                    String[] materias = request.getParameterValues("materias");
                    String materiasParaBd = "";
                    for (int i = 0; i < materias.length; i++) {
                        materiasParaBd = materiasParaBd + materias[i];
                    }
                    Estudiante est = new Estudiante(idEstudiante, nombres, apellidos, ciudadNac, edad, residencia, tel, correo, materiasParaBd);
                    estudianteFacade.editarEstudiante(est);
                }

                a = request.getRequestDispatcher("index.jsp");

            }
            a.forward(request, response);

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
