/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author MyPC
 */
public class Account {

    private String username;
    private String password;
    private String displayname;
    private int student;
    private int lecturers;
    private Student stu;
    private Lecturers lec;

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public Lecturers getLec() {
        return lec;
    }

    public void setLec(Lecturers lec) {
        this.lec = lec;
    }

    public int getStudent() {
        return student;
    }

    public void setStudent(int student) {
        this.student = student;
    }

    public int getLecturers() {
        return lecturers;
    }

    public void setLecturers(int lecturers) {
        this.lecturers = lecturers;
    }

    public Account() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDisplayname() {
        return displayname;
    }

    public void setDisplayname(String displayname) {
        this.displayname = displayname;
    }

  

}
