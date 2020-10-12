<%-- 
    Document   : overzicht
    Created on : 5-okt-2020, 13:59:38
    Author     : r0638823
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <%@include file="header.jspf" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <c:url var="volgende_reservatie" value="volgende reservatie" scope="session"/>
    </head>
    <body>
        <h2>bedankt voor de reservatie ${sessionScope.klantnr}</h2>
        <h3>reservaties:</h3>
        <ul>
        <c:forEach var="res" items="${sessionScope.reservaties}">
            <li>klantNr: ${res.klantnr}</li>
            <li>Model: ${res.model}</li>
            <li>Locatie: ${res.locatie}</li>
            <br>
        </c:forEach>
        </ul>
        <form method="post" action="ResController">
            <input type="Submit" name="submit" value="${volgende_reservatie}" >
        </form>
<%@include file="footer.jspf" %>    
    </body>
</html>
