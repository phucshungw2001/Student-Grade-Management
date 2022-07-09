/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Assessment;
import Model.Exam;
import Model.Student;
import Model.Subjects;
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
public class ExamDBContext extends DBContext<Exam> {

    public ArrayList<Exam> search(int sid, int subid) {
        ArrayList<Exam> exam = new ArrayList<>();
        try {
            String sql = "SELECT Exam.eid, Exam.score, Assessment.aname,Assessment.aid, Assessment.weight , Student.sid, Subjects.subid\n"
                    + "FROM   Assessment INNER JOIN\n"
                    + "             Exam ON Assessment.aid = Exam.aid INNER JOIN\n"
                    + "             Student ON Exam.sid = Student.sid INNER JOIN\n"
                    + "             Subjects ON Assessment.subid = Subjects.subid AND Exam.subid = Subjects.subid\n"
                    + "			 where Student.sid = ? and Subjects.subid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(2, subid);
            stm.setInt(1, sid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Exam e = new Exam();
                e.setId(rs.getInt("eid"));
                e.setScore(rs.getFloat("score"));
                Assessment a = new Assessment();
                a.setId(rs.getInt("aid"));
                a.setName(rs.getString("aname"));
                a.setWeight(rs.getFloat("weight"));
                Student stu = new Student();
                stu.setSid(rs.getInt("sid"));
                Subjects sub = new Subjects();
                sub.setSubid(rs.getInt("subid"));
                e.setAssessment(a);
                e.setStu(stu);
                e.setSub(sub);
                exam.add(e);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ExamDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return exam;
    }

    @Override
    public ArrayList<Exam> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Exam get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Exam model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Exam model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Exam model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Exam getT(String a, String b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
        public static void main(String[] args) {
        ExamDBContext db = new ExamDBContext();
        ArrayList<Exam> search = db.search(4, 1);
        System.out.println("" + search);    
    }
    
}
