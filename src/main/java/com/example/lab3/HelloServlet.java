package com.example.lab3;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "You are beautiful the way you are";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><head><style> " +
                "h1" +
                "{" +
                    "padding:10px;" +
                    "border:2px solid black;" +
                    "font-family:Courier New,monospace; " +
                    "font-size:20px;" +
                    "border-radius:20px; " +
                    "width:40%;" +
                "}" +

                "a" +
                "{" +
                    "text-decoration:none;" +
                    "font-size:20px;" +
                    "border:2px solid dimgray;" +
                    "border-radius:10px;" +
                    "color:chocolate;" +
                    "padding:10px;" +
                    "font-family:Courier New,monospace;" +
                "}" +

                "</style></head><center><body>");

        for(int i=0;i<5;i++)
        {
            out.println("<h1>" + message + "</h1>");
        }

        out.println("<br><br><a href=\"index.jsp\">BACK</a></body></center></html>");
    }

    public void destroy() {
    }
}