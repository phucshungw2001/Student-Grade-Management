/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.Lecturers;

import Dal.GroupDBContext;
import Dal.StudentDBContext;
import Model.Group;
import Model.Student;
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
public class GroupLecturersController extends HttpServlet {
   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int lid = Integer.parseInt(request.getParameter("lid"));
        int subid = Integer.parseInt(request.getParameter("subid"));       
        GroupDBContext dbgroup = new GroupDBContext();
        ArrayList<Group> grouplecturers = dbgroup.searchlecturers(lid, subid);
        request.setAttribute("grouplecturers", grouplecturers);
        request.setAttribute("lid", lid);
        request.setAttribute("subid", subid);
        request.getRequestDispatcher("view_lecturers/viewallmark.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {      
    } 
}


