<%--
  Created by IntelliJ IDEA.
  User: Unknown
  Date: 6/11/2021
  Time: 7:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Myself</title>
    <style>
        .self,form
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

<center><form name="MyselfForm" method="post" action="Myself.jsp">
    <h1><u>Lab 5</u></h1>
    <table>
        <tr>
            <th>Name:</th>
            <td><input type="text" name="myName"></td></tr>
        <tr>
            <th>Age:</th>
            <td><input type="text" name="myAge"></td>
        </tr>
        <tr>
            <th>Hobbies:</th>
            <td><input type="text" name="myHobbies"></td>
        </tr>
        <tr>
            <th>Birthday:</th>
            <td><input type="text" name="myBirth"></td>
        </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="Submit"></td>
        </tr>
    </table>
</form>


    <%! String printSuccess()
    {
        return "<div style=\"border:2px solid black; font-size:20px;border-radius: 20px;width:58%;font-family: Courier New, monospace;background-image: linear-gradient(#b3b3cc, whitesmoke);\">" +
                "<b><br>LAB 6 <br><br> " +
                "Session create in declaration<br><br><b>" +
                "</div><br><br>";
    }
%>


<%
    String mytext = request.getParameter("myName");

    if (mytext == null)
    {

    }
    else
    {
        session.setAttribute("MyName",request.getParameter("myName"));
        session.setAttribute("MyAge",request.getParameter("myAge"));
        session.setAttribute("MyHobbies",request.getParameter("myHobbies"));
        session.setAttribute("MyBirth",request.getParameter("myBirth"));

        out.println(printSuccess());
    }

%>

    <c:if test = "${MyName != null}">
        <c:set var="MyName" scope="application" value="${MyName}"/>
        <c:set var="MyAge" scope="application" value="${MyAge}"/>
        <c:set var="MyHobbies" scope="application" value="${MyHobbies}"/>
        <c:set var="MyBirth" scope="application" value="${MyBirth}"/>
        <a href = "<c:url value = "lab7.jsp"/>">Click here for lab 7</a>
    </c:if>

<br><br>
</center>
    <center>
        <div class="self">
            <h1><u>Lab 3</u></h1>
            <h1><%= "Myself page" %></h1><br>
            <table>
                <caption>BIO</caption>
                <tr>
                    <th>Full Name</th>
                    <td> Nur Alia</td>
                </tr>
                <tr>
                    <th>Age</th>
                    <td>21</td>
                </tr>
                <tr>
                    <th>Birth Place</th>
                    <td>Perlis</td>
                </tr>
                <tr>
                    <th>Birthday</th>
                    <td>12 Julai 2000</td>
                </tr>
                <tr>
                    <th rowspan="3">Hobbies</th>
                    <td>Listen to music</td>
                </tr>
                <tr>
                    <td>Play game</td>
                </tr>
                <tr>
                    <td>Sleep</td>
                </tr>
                <tr>
                    <th>Ambition</th>
                    <td>Software Engineering</td>
                </tr>
            </table>
        </div>
    </center>

</body>
</html>
