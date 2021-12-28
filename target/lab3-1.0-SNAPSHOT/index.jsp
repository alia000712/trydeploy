<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lab 3</title>
    <style>
        .index
        {
            border: 2px solid black;
            border-radius: 20px;
            padding: 20px;
            width:55%;
            font-family: Courier New, monospace;
            font-size:13px;
            background-image: linear-gradient(whitesmoke,#b3b3cc);
        }

        .click
        {
            text-decoration: none;
            font-size:20px;
            border: 2px solid dimgray;
            border-radius: 10px;
            color: #00ffff;
            padding: 10px;
            background-color: #3d3d5c;
        }

    </style>
</head>

<body>
<%@include file="Menu.html"%><br>
    <center>
        <div class="index">
            <h1><%="Your are entering home zone.<br><br> Hai my name is "+session.getAttribute("MyName")+
                    "<br><br>Click button above and below to see more information about me.<br>"%></h1><br/>
            <a class="click" href="hello-servlet">Click me</a>
            <a class="click" href="MyselfServlet">Myself</a>
            <a class="click" href="MyStudentServlet">My Student</a>
            <a class="click" href="MyFamilyServlet">My Family</a>
        </div>
    </center>
</body>
</html>