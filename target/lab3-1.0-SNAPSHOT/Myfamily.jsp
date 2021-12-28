<%--
  Created by IntelliJ IDEA.
  User: Unknown
  Date: 6/11/2021
  Time: 7:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>My Family</title>
    <style>
        .family,form
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

<center><form name="MyfamilyForm" method="post" action="Myfamily.jsp">
    <h1><u>Lab 5</u></h1>
    <table>
        <tr>
            <th>Dad's name:</th>
            <td><input type="text" name="myDadName"></td>
        </tr>
        <tr>
            <th>Mom's name:</th>
            <td><input type="text" name="myMomName"></td>
        </tr>
        <tr>
            <th>Siblings' name:</th>
            <td><input type="text" name="mySibName"></td>
        </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="Submit"></td>
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
    String mytext = request.getParameter("myDadName");

    if (mytext == null)
    {

    }
    else
    {
        session.setAttribute("MyDadName",request.getParameter("myDadName"));
        session.setAttribute("MyMomName",request.getParameter("myMomName"));
        session.setAttribute("MySibName",request.getParameter("mySibName"));

        out.println(printSuccess());
    }
%>
    <c:if test = "${MyDadName != null}">
        <c:set var="MyDadName" scope="application" value="${MyDadName}"/>
        <c:set var="MyMomName" scope="application" value="${MyMomName}"/>
        <c:set var="MySibName" scope="application" value="${MySibName}"/>
        <a href = "<c:url value = "lab7.jsp"/>">Click here for lab 7</a>
    </c:if>
    <br><br>

</center>

    <center>
        <div class="family">
            <h1><u>Lab 3</u></h1>
            <h1><%= "My family page" %></h1><br>
            <table>
                <caption>DAD</caption>
                <tr>
                    <th>Name</th>
                    <td>Ahmad</td>
                </tr>
                <tr>
                    <th>Age</th>
                    <td>50</td>
                </tr>
                <tr>
                    <th>Occupation</th>
                    <td>Police</td>
                </tr>
            </table><br><br>
            <table>
                <caption>MOM</caption>
                <tr>
                    <th>Name</th>
                    <td>Nurul</td>
                </tr>
                <tr>
                    <th>Age</th>
                    <td>45</td>
                </tr>
                <tr>
                    <th>Occupation</th>
                    <td>Nurse</td>
                </tr>
            </table><br><br>
            <table>
                <caption>BROTHER</caption>
                <tr>
                    <th>Name</th>
                    <td>Amir</td>
                </tr>
                <tr>
                    <th>Age</th>
                    <td>25</td>
                </tr>
                <tr>
                    <th>Occupation</th>
                    <td>Soldier</td>
                </tr>
            </table><br><br>
            <table>
                <caption>SISTER</caption>
                <tr>
                    <th>Name</th>
                    <td>Amira</td>
                </tr>
                <tr>
                    <th>Age</th>
                    <td>18</td>
                </tr>
                <tr>
                    <th>Occupation</th>
                    <td>Student</td>
                </tr>
            </table>
        </div>
    </center>
</body>
</html>
