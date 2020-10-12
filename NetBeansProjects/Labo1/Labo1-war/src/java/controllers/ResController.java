/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.

Thijs Vercammen
 */
package controllers;

import data.Locaties;
import data.Reservaties;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author r0638823, Thijs Vercammen
 */
public class ResController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    public void init(){
        Locaties locaties = new Locaties();
        ArrayList<String> locatieList = locaties.getLocaties();
        getServletContext().setAttribute("locatieList", locatieList);
        ArrayList<String> typeList = locaties.getTypes();
        getServletContext().setAttribute("typeList", typeList);
        getServletContext().setInitParameter("korting", "25");
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            String action = request.getParameter("submit");
            
            if(action.equals("submit")){
                String klantnr = request.getParameter("klantnr");
                request.getSession().setAttribute("klantnr", klantnr);
                ArrayList<Reservaties> reservaties = new ArrayList<>();
                request.getSession().setAttribute("reservaties", reservaties);
                gotoPage("reserveer.jsp", request, response); 
            } else if(action.equals("reserveer_R")){
                request.getSession().setAttribute("klantnr", "66666666");
                response.encodeRedirectURL("Rescontroller");
                gotoPage("reserveer.jsp", request, response); 
            } else if(action.equals("registreer")){
                gotoPage("klant.jsp", request, response);
            } else if(action.equals("reserveer")){
                String pickup = request.getParameter("Plocaties");
                String types = request.getParameter("types");
                Reservaties r = new Reservaties(pickup, types, (String)request.getSession().getAttribute("klantnr"));
                ((ArrayList)request.getSession().getAttribute("reservaties")).add(r);
                gotoPage("overzicht.jsp", request, response);
            } else if(action.equals("afmelden")){
                request.getSession().invalidate();
                gotoPage("index.jsp", request, response);
            }  else if(action.equals("volgende reservatie")){
                gotoPage("reserveer.jsp", request, response); 
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
    
    protected void gotoPage(String page,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        RequestDispatcher view = request.getRequestDispatcher(page);
        view.forward(request, response);
    }
}
