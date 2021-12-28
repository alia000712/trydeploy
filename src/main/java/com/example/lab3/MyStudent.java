package com.example.lab3;

public class MyStudent extends Myself
{
    public String MyMatricNo;
    public String MyProgramCode;
    public String MyCampus;
    public String MySem;

    public MyStudent(String n, String  a, String h, String b, String m, String pc, String c, String  s)
    {
        super(n, a, h, b);
        MyMatricNo = m;
        MyProgramCode = pc;
        MyCampus = c;
        MySem = s;
    }

    public String getMyMatricNo() {return MyMatricNo;}
    public String getMyProgramCode() {return MyProgramCode;}
    public String getMyCampus() {return MyCampus;}
    public String getMySem() {return MySem;}

    public void setMyMatricNo(String m) {MyMatricNo = m;}
    public void setMyProgramCode(String pc) {MyProgramCode = pc;}
    public void setMyCampus(String c) {MyCampus = c;}
    public void setMySem(String s) {MySem = s;}

    public void PrintInfo()
    {
        System.out.println("Name: "+super.MyName+"\nAge: "+super.MyAge+ "\nMatric No: "+MyMatricNo+
                "\nProgram Code: "+MyProgramCode+ "\nCampus: "+MyCampus+"\nSemester: "+MySem);
    }
}
