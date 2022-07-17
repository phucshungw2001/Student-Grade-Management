/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller.Home;

import Dal.AccountDBContext;
import Model.Account;
import java.io.IOException;
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
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AccountDBContext db = new AccountDBContext();
        Account testaccount = db.getT(username, password);
        if (testaccount != null) {
            if (testaccount.getStudent() == 1 && testaccount.getLecturers() == 0) {
                ArrayList<Account> account = db.listaccount(username, password);
                HttpSession session = request.getSession();
                request.getSession().setAttribute("account", account);
                request.getRequestDispatcher("view_students/viewinformation.jsp").forward(request, response);
            }
            if (testaccount.getStudent()==0 && testaccount.getLecturers()==1){
                ArrayList<Account> account = db.listaccountlecturers(username, password);
                HttpSession session = request.getSession();
                request.getSession().setAttribute("account", account);                
                request.getRequestDispatcher("view_lecturers/viewinformationlecturers.jsp").forward(request, response);                
            }
        } else {
            request.getSession().setAttribute("account", null);
            request.setAttribute("mes", "Login fail");
            request.getRequestDispatcher("login.jsp").forward(request, response);

        }
    }

}
