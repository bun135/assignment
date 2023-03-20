/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;
import model.Student;

/**
 *
 * @author PC
 */
@WebServlet(name="StudentServlet", urlPatterns={"/StudentServlet"})
public class StudentServlet extends HttpServlet {
      private static final long serialVersionUID = 1L;

   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet StudentServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet StudentServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
    int numOfStudents = Integer.parseInt(request.getParameter("numOfStudents"));
    String[] names = {"John", "Jane", "Robert", "Emily", "Michael", "Sarah"};
    
    ArrayList<Student> students = new ArrayList<>();
    Random rand = new Random();
   
    for (int i = 1; i <= numOfStudents; i++) {
      int index = rand.nextInt(names.length);
      int day = rand.nextInt(28) + 1;
      int month = rand.nextInt(12) + 1;
      int year = rand.nextInt(50) + 1970;
      boolean gender = rand.nextBoolean();
      students.add(new Student(i, names[index] , gender, day + "/" + month + "/" + year));
    }
    request.setAttribute("students", students);
  
    }
     catch (NumberFormatException e) {
         String err="Please enter number!";
         request.setAttribute("err", err);
        }
      request.getRequestDispatcher("student.jsp").forward(request, response);

        }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
