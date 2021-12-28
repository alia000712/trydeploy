package com.example.lab3;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "MyStudentServlet", value = "/MyStudentServlet")
public class MyStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession();

        String myname = (String) session.getAttribute("MyName");
        String myage = (String) session.getAttribute("MyAge");
        String myhobbies = (String) session.getAttribute("MyHobbies");
        String mybirth = (String) session.getAttribute("MyBirth");
        String mymatricno = (String) session.getAttribute("MyMatricNo");
        String myprogramcode = (String) session.getAttribute("MyProgramCode");
        String mycampus = (String) session.getAttribute("MyCampus");
        String mysem = (String) session.getAttribute("MySem");

        MyStudent mystudent = new MyStudent (myname,myage,myhobbies,mybirth,mymatricno,myprogramcode,mycampus,mysem);

//        MyStudent mystudent = new MyStudent ("Alia","21","Sleep","21 Julai 2000","2021125471","CSC266","Jasin",4);

        out.println("<html><head><style> " +
                ".stud" +
                "{" +
                "padding:50px;" +
                "border:2px solid black;" +
                "font-family:Courier New,monospace; " +
                "font-size:20px;" +
                "border-radius:10px; " +
                "width:50%;" +
                "margin: auto;"+
                "background-image: linear-gradient(whitesmoke,#b3b3cc);"+
                "}" +

                "a" +
                "{" +
                "text-decoration:none;" +
                "font-size:20px;" +
                "border:2px solid dimgray;" +
                "border-radius:10px;" +
                "color:#00ffff;" +
                "padding:10px;" +
                "font-family:Courier New,monospace;" +
                "background-color: #3d3d5c;"+
                "}" +

                "</style></head><body>");

        out.println("<div class=\"stud\">");
        out.println("<h1><center><u>"+"My Student"+"</u></center></h1>");
        out.println("<br>");
        out.println("<h2>" + "Name: "+ mystudent.getMyName() + "</h2>");
        out.println("<h2>" + "Age: "+ mystudent.getMyAge() + "</h2>");
        out.println("<h2>" + "Matrix No: "+ mystudent.getMyMatricNo() + "</h2>");
        out.println("<h2>" + "Program code: "+ mystudent.getMyProgramCode() + "</h2>");
        out.println("<h2>" + "Campus: "+ mystudent.getMyCampus() + "</h2>");
        out.println("<h2>" + "Semester: "+ mystudent.getMySem() + "</h2>");

        out.println("<br><br><a href=\"index.jsp\">BACK</a></body></html>");
        out.println("</div>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
