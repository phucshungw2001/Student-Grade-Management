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
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author MyPC
 */
public class StudentLecturersController extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int lid = Integer.parseInt(request.getParameter("lid"));
        int subid = Integer.parseInt(request.getParameter("subid"));
        int gid = Integer.parseInt(request.getParameter("gid"));

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
        String[] components = request.getParameterValues("component");   
        int lid = Integer.parseInt(request.getParameter("lid"));
        int subid1 = Integer.parseInt(request.getParameter("subid"));
        int gid = Integer.parseInt(request.getParameter("gid"));
        ArrayList<Exam> exams = new ArrayList<>();
        ExamDBContext dbexam = new ExamDBContext();
        for (String component : components) {
            int sid = Integer.parseInt(component.split("_")[0]);
            int aid = Integer.parseInt(component.split("_")[1]);
            int subid = Integer.parseInt(component.split("_")[2]);
            Exam e = new Exam();
            Student s = new Student();
            s.setSid(sid);
            Assessment a = new Assessment();
            a.setId(aid);
            a.setSubid(subid);
            e.setAssessment(a);
            e.setStudent(s);
            String score = request.getParameter("score" + sid + "_" + aid);
            if (score.length() > 0) {
                {
                    e.setScore(Float.parseFloat(score));
                }
            } else {
                {
                    e.setScore(-1);
                }
            }
            String eid = request.getParameter("eid" + sid + "_" + aid);
            if (eid.length() > 0) {
                {
                    e.setId(Integer.parseInt(eid));
                }
            } else {
                {
                    e.setId(-1);
                }
            }
            exams.add(e);
        }
        dbexam.saveChanges(exams);  
        
        String re = "";
        re = "marklecturers?lid="+lid+"&subid="+subid1+"&gid="+gid;
        
        response.sendRedirect(re);
    }

}
