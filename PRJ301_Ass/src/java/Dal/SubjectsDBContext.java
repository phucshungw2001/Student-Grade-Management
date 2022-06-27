/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

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
public class SubjectsDBContext extends DBContext<Subjects> {

    @Override
    public ArrayList<Subjects> list() {
        ArrayList<Subjects> sub = new ArrayList<>();
        try {
            String sql = "SELECT [subid]\n"
                    + "      ,[subname]\n"
                    + "      ,[subcode]\n"
                    + "  FROM [Subjects]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Subjects s = new Subjects();
                s.setSubid(rs.getInt("subid"));
                s.setSubcode(rs.getString("subcode"));
                s.setSubname(rs.getString("subname"));
                sub.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectsDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sub;

    }

    public ArrayList<Subjects> search(int sid) {
        ArrayList<Subjects> sub = new ArrayList<>();
        try {
            String sql = "SELECT *\n"
                    + "FROM   Student INNER JOIN\n"
                    + "             Student_Subjects ON Student.sid = Student_Subjects.sid INNER JOIN\n"
                    + "             Subjects ON Student_Subjects.subid = Subjects.subid\n"
                    + "			 where Student.sid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Subjects s = new Subjects();
                s.setSubid(rs.getInt("subid"));
                s.setSubcode(rs.getString("subcode"));
                s.setSubname(rs.getString("subname"));
                Student stu = new Student();
                stu.setSid(rs.getInt("sid"));
                stu.setCode(rs.getString("code"));
                stu.setSmember(rs.getString("smember"));
                stu.setSname(rs.getString("sname"));
                stu.setSimg(rs.getString("simg"));
                stu.setSgender(rs.getBoolean("sgender"));
                stu.setSdob(rs.getDate("sdob"));
                stu.setSaddress(rs.getString("saddress"));
                s.setStu(stu);
                sub.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sub;
    }

    @Override
    public Subjects get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Subjects model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Subjects model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Subjects model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Subjects getT(String a, String b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    public static void main(String[] args) {
        SubjectsDBContext db = new SubjectsDBContext();
        ArrayList<Subjects> search = db.search(4);
        System.out.println("" + search);
        ArrayList<Subjects> list = db.list();
        System.out.println("" + list);
    }

}
