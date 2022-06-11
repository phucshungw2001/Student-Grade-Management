/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;

/**
 *
 * @author MyPC
 */
public class Student {

    private int sid;
    private String code;
    private String sname;
    private boolean sgender;
    private String smember;
    private String simg;
    private String saddress;
    private Date sdob;
    private Group group;

    public Subjects getSub() {
        return sub;
    }

    public void setSub(Subjects sub) {
        this.sub = sub;
    }
    private Subjects sub;

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSmember() {
        return smember;
    }

    public void setSmember(String smember) {
        this.smember = smember;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public boolean isSgender() {
        return sgender;
    }

    public void setSgender(boolean sgender) {
        this.sgender = sgender;
    }

    public String getSimg() {
        return simg;
    }

    public void setSimg(String simg) {
        this.simg = simg;
    }

    public String getSaddress() {
        return saddress;
    }

    public void setSaddress(String saddress) {
        this.saddress = saddress;
    }

    public Date getSdob() {
        return sdob;
    }

    public void setSdob(Date sdob) {
        this.sdob = sdob;
    }

    public Group getGroup() {
        return group;
    }

    public void setGroup(Group group) {
        this.group = group;
    }

}
