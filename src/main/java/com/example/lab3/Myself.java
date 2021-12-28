package com.example.lab3;

public class Myself implements MyPhone
{
    public String MyName;
    public String MyAge;
    public String MyHobbies;
    public String MyBirth;

    public Myself(String n, String a, String h,String b)
    {
        MyName = n;
        MyAge = a;
        MyHobbies = h;
        MyBirth=b;
    }

    public String getMyName() {return MyName;}
    public String getMyAge() {return MyAge;}
    public String getMyHobbies() {return MyHobbies;}
    public String getMyBirth() {return MyBirth;}

    public void setMyName(String n) {MyName = n;}
    public void setMyAge(String  a) {MyAge = a;}
    public void setMyHobbies(String h) {MyHobbies = h;}
    public void setMyBirth(String b) {MyBirth=b;}

    public void PrintInfo()
    {
        System.out.println ("\nName: "+MyName+"\nAge: "+MyAge+"\nHobbies: "+MyHobbies+"\nBirthday: "+MyBirth+"\nPhone Type: "+
                PhoneType+"\nPhone Brand: "+PhoneBrand);
    }

    public String PrintPhone()
    {
        return("Phone Type: "+PhoneType+"<br><br>Phone Brand: "+ PhoneBrand);
    }

}
