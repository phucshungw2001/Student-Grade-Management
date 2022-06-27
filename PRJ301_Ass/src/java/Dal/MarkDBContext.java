/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Mark;
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
public class MarkDBContext extends DBContext<Mark> {

    public Mark getget(int sid, int subid) {
        try {
            String sql = "SELECT Mark.mid, Mark.prj1, Mark.prj2, Mark.prj3, Mark.ass1, Mark.ass2, Mark.ass3, Mark.pe , Mark.fe, Student.sid, Subjects.subid\n"
                    + "FROM   Mark INNER JOIN\n"
                    + "             Student ON Mark.sid = Student.sid INNER JOIN\n"
                    + "             Subjects ON Mark.subid = Subjects.subid\n"
                    + "			 where Student.sid = ? and Subjects.subid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sid);
            stm.setInt(2, subid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Mark m = new Mark();
                m.setMid(rs.getInt("mid"));
                m.setPrj1(rs.getInt("prj1"));             
                m.setPrj2(rs.getInt("prj2"));
                m.setPrj3(rs.getInt("prj3"));
                m.setAss1(rs.getInt("ass1"));
                m.setAss2(rs.getInt("ass2"));
                m.setAss3(rs.getInt("ass3"));
                m.setPe(rs.getInt("pe"));
                m.setFe(rs.getInt("fe"));
                Student stu = new Student();
                stu.setSid(rs.getInt("sid"));
                Subjects sub = new Subjects();
                sub.setSubid(rs.getInt("subid"));
                m.setStu(stu);
                m.setSub(sub);
                return  m;               
            }
        } catch (SQLException ex) {
            Logger.getLogger(MarkDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    @Override
    public ArrayList<Mark> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Mark get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Mark model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Mark model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Mark model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Mark getT(String a, String b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    public static void main(String[] args) {
        MarkDBContext db = new MarkDBContext();
        Mark get = db.getget(4, 1);
        System.out.println("" + get);    
    }
    
    
}
