/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import java.util.Random;
import java.sql.SQLException;
import java.io.IOException;
import model.roomcheckbean;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.dbCon;

/**
 *
 * @author WUSC SRILANKA
 */
public class admindashboard extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet admindashboard</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet admindashboard at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        roomcheckbean rcheck = new roomcheckbean();
        dbCon con= new dbCon();
        //out.println(rcheck.checkroom());
        int introomno=Integer.valueOf(rcheck.checkroom());
        String username=request.getParameter("username");
        //String roomno=rcheck.checkroom();
        int x=1;
        if(introomno==21)
        {
        out.println("No rooms left");
        RequestDispatcher rs = request.getRequestDispatcher("./admindashboard.jsp");
        rs.include(request, response);
        }
        else
        {
            try {
                con.assingroom(rcheck.checkroom(),username);
            } catch (ClassNotFoundException | SQLException ex) {
                //Logger.getLogger(admindashboard.class.getName()).log(Level.SEVERE, null, ex);
            }
        out.println("Assing Successfull!");
        //response.sendRedirect("./admindashboard.jsp");
        String mail=con.getemail(username);
        
             String to=mail;//request.getParameter("to");  
             String subject="Hotel Soraborawawa Check-in";//request.getParameter("subject");  
             String msg="Hello "+username+"\n You are checked into Room no "+introomno+" \n Please await for Payment Link \n Thank You!" ;//request.getParameter("msg");  
          
             model.Mailer.send(to, subject, msg); 
             
        RequestDispatcher rs = request.getRequestDispatcher("./admindashboard.jsp");
        rs.include(request, response);
        }
        
        
        
        
        
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
