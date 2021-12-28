<%--
  Created by IntelliJ IDEA.
  User: Unknown
  Date: 22/12/2021
  Time: 10:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>LAB 7</title>
    <style>
        .lab7self
        {
            border: 2px solid black;
            border-radius: 20px;
            padding: 20px;
            width:55%;
            font-family: Courier New, monospace;
            background-image: linear-gradient(whitesmoke,lightpink);
        }
    </style>
</head>
<body>
<%@include file="Menu.html"%><br>
<center>
    <div class="lab7self">
        <c:out value="His/Her name is ${MyName}.He/She is ${MyAge} years old.
         He/She like to ${MyHobbies} and his/her birthday is on ${MyBirth}."></c:out><br><br>
        <c:out value="${MyName}'s dad named ${MyDadName} while ${MyName}'s mom named ${MyMomName}.
        His/Her siblings' name are ${MySibName}."></c:out><br><br>
        <c:out value="${MyName} study at ${MyCampus} and his/her matric no is ${MyMatricNo}.
        He/She currently at Semester ${MySem} with course ${MyProgramCode}."></c:out><br><br>
        <c:out value="Next years ${MyName} will be ${MyAge+1}"></c:out>
    </div>
</center>
</body>
</html>
