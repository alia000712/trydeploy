package com.example.lab3;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "MyFamilyServlet", value = "/MyFamilyServlet")
public class MyFamilyServlet extends HttpServlet {
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
        String mydadname = (String) session.getAttribute("MyDadName");
        String mymomname = (String) session.getAttribute("MyMomName");
        String mysibname = (String) session.getAttribute("MySibName");

        MyFamily myfamily= new MyFamily(myname,myage,myhobbies,mybirth, mydadname, mymomname, mysibname);

//       MyFamily myfamily= new MyFamily("Alia","21","Sleep","21 Julai 2000", "Ahmad", "Nurul", "Amir and Amira");

        out.println("<html><head><style> " +
                ".fam" +
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

        out.println("<div class=\"fam\">");
        out.println("<h1><center><u>"+"My Family"+"</u></center></h1>");
        out.println("<br>");
        out.println("<h2>" + "My name: "+ myfamily.getMyName() + "</h2>");
        out.println("<h2>" + "Dad's name: "+ myfamily.getMyDad() + "</h2>");
        out.println("<h2>" + "Mom's name: "+ myfamily.getMyMom() + "</h2>");
        out.println("<h2>" + "Siblings' name: "+ myfamily.getMySiblings() + "</h2>");
        out.println("<h2>" + myfamily.PrintCar() + "</h2>");
        out.println("<br><br><a href=\"index.jsp\">BACK</a></body></html>");
        out.println("</div>");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
