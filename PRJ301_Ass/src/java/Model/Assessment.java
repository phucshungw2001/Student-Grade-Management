/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;


/**
 *
 * @author Ngo Tung Son
 */
public class Assessment {
    private int id;
    private String name;
    private float weight;
    private int subid;

    public int getSubid() {
        return subid;
    }

    public void setSubid(int subid) {
        this.subid = subid;
    }

    public ArrayList<Exam> getExams() {
        return exams;
    }
    public void setExams(ArrayList<Exam> exams) {
        this.exams = exams;
    }
    private ArrayList<Exam> exams = new ArrayList<>();
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getWeight() {
        return weight;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }

    
}
