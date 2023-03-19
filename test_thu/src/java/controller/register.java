/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.Period;

/**
 *
 * @author ACER
 */
public class register extends HttpServlet{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet register</title>");  
        out.println("</head>");
        out.println("<body>");
        String code = request.getParameter("code");
        String name = request.getParameter("name");
        String dob = request.getParameter("dob");
        
        String msg = "";
    if (!code.startsWith("FPT") || code.length() > 9) {
            msg += "Student Code must begin with \"FPT\" and contains maximum 9 characters.<br>";
        }
        
        // Check name
        if (name.length() < 6 || name.length() > 32) {
            msg += "Student Name must contain 6 to 32 characters.<br>";
        }
        
        // Check age
        int age = 0;
        if (!dob.equals("")) {
            LocalDate birthday = LocalDate.parse(dob);
            LocalDate today = LocalDate.now();
            Period period = Period.between(birthday, today);
            age = period.getYears();
        }
        
        if (age < 18) {
            msg += "Student must be 18-year-old or older.<br>";
        }
        
        if(msg.equals("")) {
            msg = "Student registered successful.";
        }
        
        out.println(msg);

        out.println("</body>");
        out.println("</html>");
    } 
    
}
