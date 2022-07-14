/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.Lecturers;

import Dal.AssessmentDBContext;
import Dal.ExamDBContext;
import Dal.GroupDBContext;
import Dal.StudentDBContext;
import Model.Assessment;
import Model.Exam;
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
public class MarkLecturersController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int lid = 1;
        int subid = 1;
        int gid = 2;

        GroupDBContext dbgroup = new GroupDBContext();
        ArrayList<Group> grouplecturers = dbgroup.searchlecturers(lid, subid);

        AssessmentDBContext dbass = new AssessmentDBContext();
        ArrayList<Assessment> assessment = dbass.search(subid);

        StudentDBContext dbstu = new StudentDBContext();
        ArrayList<Student> student = dbstu.search(gid);

        ExamDBContext dbexam = new ExamDBContext();
        ArrayList<Exam> listmark = dbexam.listmark(subid);

        request.setAttribute("grouplecturers", grouplecturers);
        request.setAttribute("listmark", listmark);
        request.setAttribute("student", student);
        request.setAttribute("assessment", assessment);
        request.setAttribute("lid", lid);
        request.setAttribute("subid", subid);
        request.setAttribute("gid", gid);
        request.getRequestDispatcher("view_lecturers/viewallmark.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
