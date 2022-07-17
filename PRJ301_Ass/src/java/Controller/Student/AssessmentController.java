/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.Student;

import Dal.AssessmentDBContext;
import Dal.ExamDBContext;
import Dal.SubjectsDBContext;
import Model.Assessment;
import Model.Exam;
import Model.Subjects;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author MyPC
 */
public class AssessmentController extends HttpServlet {

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
        int sid = Integer.parseInt(request.getParameter("sid"));
        int subid = Integer.parseInt(request.getParameter("subid"));
        String w = "Workshop 1";
        String a = "Assignment 1";
        String p = "Project 1";
        String pe = "Practive Exam ";
        String fe = "Final Exam";
        String pt = "Progress test 1";
        String l = "Lab 1";
        String ass = "Assignment ";
        request.setAttribute("w", w);
        request.setAttribute("a", a);
        request.setAttribute("p", p);
        request.setAttribute("l", l);
        request.setAttribute("pt", pt);
        request.setAttribute("pe", pe);
        request.setAttribute("fe", fe);
        request.setAttribute("ass", ass);

        int countw = 0;
        int counta = 0;
        int countp = 0;
        int countpt = 0;
        int countl = 0;

        SubjectsDBContext db = new SubjectsDBContext();
        ArrayList<Subjects> subject = db.search(sid);
        request.setAttribute("subject", subject);
        request.setAttribute("sid", sid);

        AssessmentDBContext assdb = new AssessmentDBContext();
        ArrayList<Assessment> assessment = assdb.search(subid);

        for (Assessment assesment : assessment) {
            if (assesment.getName().startsWith("Workshop")) {
                countw++;
            }
            if (assesment.getName().startsWith("Assignment")) {
                counta++;
            }
            if (assesment.getName().startsWith("Project")) {
                countp++;
            }
            if (assesment.getName().startsWith("Progress")) {
                countpt++;
            }
            if (assesment.getName().startsWith("Lab")) {
                countl++;
            }
        }
        ExamDBContext examdb = new ExamDBContext();
        ArrayList<Exam> exam = examdb.search(sid, subid);
        float total = 0;
        
        for (int i = 0; i < exam.size(); i++) {
           total = total+ exam.get(i).getScore() * exam.get(i).getAssessment().getWeight()/100;
        }
        
        request.setAttribute("countw", countw);
        request.setAttribute("counta", counta);
        request.setAttribute("countp", countp);
        request.setAttribute("countpt", countpt);
        request.setAttribute("countl", countl);

        request.setAttribute("total", total);
        
        request.setAttribute("assessment", assessment);
        request.setAttribute("exam", exam);
        request.getRequestDispatcher("view_students/mark.jsp").forward(request, response);
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
