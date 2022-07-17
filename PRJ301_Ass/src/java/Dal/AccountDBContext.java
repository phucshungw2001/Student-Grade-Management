/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Account;
import Model.Lecturers;
import Model.Student;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MyPC
 */
public class AccountDBContext extends DBContext<Account> {

    public ArrayList<Account> listaccount(String username, String password) {
        ArrayList<Account> account = new ArrayList<>();
        try {
            String sql = "SELECT Account.username,Account.password,Account.displayname,Account.student,Account.lecturers,Student.sid,Student.smember\n"
                    + "FROM   Account INNER JOIN\n"
                    + "             Account_Student ON Account.username = Account_Student.username INNER JOIN\n"
                    + "             Student ON Account_Student.sid = Student.sid\n"
                    + "\n"
                    + "			 where Account.username = ? and Account.password = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUsername(rs.getString("username"));
                a.setPassword(rs.getString("password"));
                a.setDisplayname(rs.getString("displayname"));
                a.setStudent(rs.getInt("student"));
                a.setLecturers(rs.getInt("lecturers"));
                Student s = new Student();
                s.setSid(rs.getInt("sid"));
                s.setSmember(rs.getString("smember"));
                a.setStu(s);
                account.add(a);
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Account> listaccountlecturers(String username, String password) {
        ArrayList<Account> account = new ArrayList<>();
        try {
            String sql = "SELECT Account.username,Account.password,Account.displayname,Account.student,Account.lecturers,Lecturers.lid,Lecturers.lname\n"
                    + "FROM   Account INNER JOIN\n"
                    + "             Account_Lecturers ON Account.username = Account_Lecturers.username INNER JOIN\n"
                    + "             Lecturers ON Account_Lecturers.lid = Lecturers.lid\n"
                    + "			 where Account.username = ? and Account.password = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUsername(rs.getString("username"));
                a.setPassword(rs.getString("password"));
                a.setDisplayname(rs.getString("displayname"));
                a.setStudent(rs.getInt("student"));
                a.setLecturers(rs.getInt("lecturers"));
                Lecturers l = new Lecturers();
                l.setLid(rs.getInt("lid"));
                l.setLname(rs.getString("lname"));
                a.setLec(l);
                account.add(a);
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void insert(Account model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Account model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Account model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Account> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Account get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Account getT(String username, String password) {
        try {
            String sql = "select username,password,displayname,student,lecturers from Account where username = ? and password = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUsername(rs.getString("username"));
                a.setPassword(rs.getString("password"));
                a.setDisplayname(rs.getString("displayname"));
                a.setStudent(rs.getInt("student"));
                a.setLecturers(rs.getInt("lecturers"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

}
