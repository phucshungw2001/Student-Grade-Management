/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.Student;

import Dal.SubjectsDBContext;
import Model.Subjects;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author MyPC
 */
public class MarkController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int sid = Integer.parseInt(request.getParameter("sid"));
        SubjectsDBContext db = new SubjectsDBContext();
        ArrayList<Subjects> subject = db.search(sid);
        request.setAttribute("subject", subject);
        request.setAttribute("sid", sid);
        request.getRequestDispatcher("view_students/subjectviewmark.jsp").forward(request, response);
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {           
    }


}
