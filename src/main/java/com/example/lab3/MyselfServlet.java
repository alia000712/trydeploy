package com.example.lab3;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "MyselfServlet", value = "/MyselfServlet")
public class MyselfServlet extends HttpServlet {
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

        Myself myself = new Myself (myname,myage,myhobbies,mybirth);

//        Myself myself = new Myself ("Alia",21,"Sleep","21 Julai 2000");

        out.println("<html><head><style> " +
                ".myself" +
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

        out.println("<div class=\"myself\">");
        out.println("<h1><center><u>"+"Myself"+"</u></center></h1>");
        out.println("<br>");
        out.println("<h2>" + "Name: "+ myself.getMyName() + "</h2>");
        out.println("<h2>" + "Age: "+ myself.getMyAge() + "</h2>");
        out.println("<h2>" + "Hobbies: "+ myself.getMyHobbies() + "</h2>");
        out.println("<h2>" + "Birthday: "+ myself.getMyBirth() + "</h2>");
        out.println("<h2>"+myself.PrintPhone() + "</h2>");
        out.println("<br><br><a href=\"index.jsp\">BACK</a></body></html>");
        out.println("</div>");


    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
