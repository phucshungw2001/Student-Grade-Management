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
            String sql = "SELECT Exam1.eid, Exam1.score, Assessment.aname,Assessment.aid, Assessment.weight , Student.sid, Subjects.subid\n"
                    + "FROM   Assessment INNER JOIN\n"
                    + "             Exam1 ON Assessment.aid = Exam1.aid INNER JOIN\n"
                    + "             Student ON Exam1.sid = Student.sid INNER JOIN\n"
                    + "             Subjects ON Assessment.subid = Subjects.subid AND Exam1.subid = Subjects.subid\n"
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

    public ArrayList<Exam> listmark(int subid) {
        ArrayList<Exam> exams = new ArrayList<>();
        try {
            String sql = "SELECT A.* FROM\n"
                    + "              (SELECT eid,sid,aid,score,subid,date FROM Exam1) A\n"
                    + "               INNER JOIN\n"
                    + "            (SELECT sid,aid,MAX(date) as date FROM Exam1\n"
                    + "                GROUP BY sid,aid) B\n"
                    + "             ON A.aid = B.aid AND A.sid = B.sid AND A.date = B.date\n"
                    + "			 where subid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, subid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Exam e = new Exam();
                e.setId(rs.getInt("eid"));

                Assessment a = new Assessment();
                a.setId(rs.getInt("aid"));
                a.setSubid(rs.getInt("subid"));

                Student s = new Student();
                s.setSid(rs.getInt("sid"));

                e.setScore(rs.getFloat("score"));
                e.setDate(rs.getDate("date"));

                e.setAssessment(a);
                e.setStudent(s);

                exams.add(e);

            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return exams;
    }

    public void saveChanges(ArrayList<Exam> exams) {
        try {
            connection.setAutoCommit(false);
            for (Exam exam : exams) {
                //INSERT
                if (exam.getId() == -1 && exam.getScore() != -1) {
                    String sql_insert_exam = "INSERT INTO [Exam1]\n"
                            + "           ([score]\n"
                            + "           ,[date]\n"
                            + "           ,[sid]\n"
                            + "           ,[subid]\n"
                            + "           ,[aid])\n"
                            + "     VALUES\n"
                            + "           (?\n"
                            + "           ,GETDATE()\n"
                            + "           ,?\n"
                            + "           ,?\n"
                            + "           ,?)";
                    PreparedStatement stm = connection.prepareStatement(sql_insert_exam);
                    stm.setInt(2, exam.getStudent().getSid());
                    stm.setInt(4, exam.getAssessment().getId());
                    stm.setFloat(1, exam.getScore());
                    stm.setFloat(3, exam.getAssessment().getSubid());
                    stm.executeUpdate();
                } //UPDATE
                else if (exam.getId() != -1 && exam.getScore() != -1) {
                    String sql_update_exam = "UPDATE Exam1 SET Score = ? WHERE eid = ?";
                    PreparedStatement stm = connection.prepareStatement(sql_update_exam);
                    stm.setInt(2, exam.getId());
                    stm.setFloat(1, exam.getScore());
                    stm.executeUpdate();
                } //DELETE
                else if (exam.getId() != -1 && exam.getScore() == -1) {
                    String sql_delete_exam = "DELETE Exam1 WHERE eid = ?";
                    PreparedStatement stm = connection.prepareStatement(sql_delete_exam);
                    stm.setInt(1, exam.getId());
                    stm.executeUpdate();
                }
            }
            connection.commit();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
            try {
                connection.rollback();
            } catch (SQLException ex1) {
                Logger.getLogger(ExamDBContext.class.getName()).log(Level.SEVERE, null, ex1);
            }
        } finally {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException ex) {
                Logger.getLogger(ExamDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
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
        ArrayList<Exam> search = db.listmark(1);
        System.out.println("" + search);
    }

}
