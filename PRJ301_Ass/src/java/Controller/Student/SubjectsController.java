/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.Student;

import Dal.GroupDBContext;
import Dal.SubjectsDBContext;
import Model.Group;
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
public class SubjectsController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SubjectsDBContext db = new SubjectsDBContext();
        ArrayList<Subjects> subject = db.list();
        request.setAttribute("subject", subject);      
        GroupDBContext dbgroup = new GroupDBContext();
        ArrayList<Group> group = dbgroup.search(1);
        request.setAttribute("group", group); 
        request.getRequestDispatcher("view_students/group.jsp").forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
        
    }



}
