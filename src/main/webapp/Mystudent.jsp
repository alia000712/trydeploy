<%--
  Created by IntelliJ IDEA.
  User: Unknown
  Date: 6/11/2021
  Time: 7:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>My Student</title>
    <style>
        .student,form
        {
            border: 2px solid black;
            border-radius: 20px;
            padding: 20px;
            width:55%;
            font-family: Courier New, monospace;
            background-image: linear-gradient(whitesmoke,#b3b3cc);
        }

        table,th,td
        {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 5px;
        }

        caption
        {
            font-weight: bold;
        }
    </style>
</head>
<body>
<%@include file="Menu.html"%><br>

<center><form name="StudentForm" method="post" action="Mystudent.jsp">
    <h1><u>Lab 5</u></h1>
    <table>
        <tr>
            <th>Matric No:</th>
            <td><input type="text" name="myMatricNo"></td>
        </tr>
        <tr>
            <th>Program Code:</th>
            <td><input type="text" name="myProgramCode"></td>
        </tr>
        <tr>
            <th>Campus:</th>
            <td><input type="text" name="myCampus"></td>
        </tr>
        <tr>
            <th>Semester:</th>
            <td><input type="text" name="mySem"></td>
        </tr>
        <tr>
            <th></th>
            <td> <input type="submit" value="Submit"></td>
        </tr>
    </table>
</form>

<%! String printSuccess()
    {
        return "<div style=\"border:2px solid black;font-size:20px; border-radius: 20px;width:58%;font-family: Courier New, monospace;background-image: linear-gradient(#b3b3cc, whitesmoke);\">" +
                "<b><br>LAB 6 <br><br> " +
                "Session create in declaration<br><br><b>" +
                "</div><br><br>";
    }
%>

<%
    String mytext = request.getParameter("myMatricNo");

    if (mytext == null)
    {

    }
    else
    {
        session.setAttribute("MyMatricNo",request.getParameter("myMatricNo"));
        session.setAttribute("MyProgramCode",request.getParameter("myProgramCode"));
        session.setAttribute("MyCampus",request.getParameter("myCampus"));
        session.setAttribute("MySem",request.getParameter("mySem"));

        out.println(printSuccess());
    }
%>
    <c:if test = "${MyMatricNo != null}">
        <c:set var="MyMatricNo" scope="application" value="${MyMatricNo}"/>
        <c:set var="MyProgramCode" scope="application" value="${MyProgramCode}"/>
        <c:set var="MyCampus" scope="application" value="${MyCampus}"/>
        <c:set var="MySem" scope="application" value="${MySem}"/>
        <a href = "<c:url value = "lab7.jsp"/>">Click here for lab 7</a>
    </c:if>
    <br><br>

</center>

    <center>
        <div class="student">
            <h1><u>Lab 3</u></h1>
            <h1><%= "My student page" %></h1><br>
            <table>
                <caption>INFO</caption>
                <tr>
                    <th>Name</th>
                    <td>Alia</td>
                </tr>
                <tr>
                    <th>Student ID</th>
                    <td>2021125471</td>
                </tr>
                <tr>
                    <th>Semester</th>
                    <td>4</td>
                </tr>
                <tr>
                    <th>Campus</th>
                    <td>Jasin</td>
                </tr>
                <tr>
                    <th>Faculty</th>
                    <td>FSKM</td>
                </tr>
                <tr>
                    <th>Current CGPA</th>
                    <td>3.3</td>
                </tr>
            </table>
        </div>
    </center>
</body>
</html>
