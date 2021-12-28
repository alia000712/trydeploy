package com.example.lab3;

public class MyFamily extends Myself implements FamilyVehicle
{
    public String MyDad;
    public String MyMom;
    public String MySiblings;

    public MyFamily(String n, String a, String h,String b, String d, String m, String s)
    {
        super(n, a, h, b);
        MyDad = d;
        MyMom = m;
        MySiblings = s;
    }

    public String getMyDad() {return MyDad;}
    public String getMyMom() {return MyMom;}
    public String getMySiblings() {return MySiblings;}

    public void setMyDad(String d) {MyDad = d;}
    public void setMyMom(String m) {MyMom = m;}
    public void setMySiblings(String s) {MySiblings = s;}


    public void PrintInfo()
    {
        System.out.println("\nMy Name: "+super.MyName+"\nDaddy's Name: "+MyDad+"\nMommy's Name: "+MyMom+"\nSibling: "+MySiblings+
                "\nVehicle Type: "+VehicleType+"\nVehicle Brand: "+VehicleBrand+"\nVehicle ID: "+VehicleID);
    }

    public String PrintCar()
    {
        return("Vehicle Type: "+VehicleType+"<br><br>Vehicle Brand: "+VehicleBrand+"<br><br>Vehicle ID: "+VehicleID);
    }
}
