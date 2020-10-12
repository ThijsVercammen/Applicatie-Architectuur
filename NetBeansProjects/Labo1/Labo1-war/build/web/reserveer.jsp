<%-- 
    Document   : reserveer
    Created on : 28-sep-2020, 14:21:35
    Author     : r0638823
    Name        : Thijs Vercammen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reserveer</title>
        <c:url var="reserveer" value="reserveer" scope="session"/>
    </head>
    <body>
        <%@include file="header.jspf" %>
        <h2>Welkom, uw klantnr is ${sessionScope.klantnr} </h2> 
        <h3>Maak uw reservatie</h3>
        <form method="post" action="ResController">
            <label for="pickup">Pick_up Location :</label>
            <select name="Plocaties" size="1">
                <c:forEach var="loc" items="${applicationScope.locatieList}">
                    <option>${loc}</option>
                </c:forEach>
            </select>
            <br>
            <label for="types">Vehicle Type :</label>
            <select name="types" size="1">
                <c:forEach var="typ" items="${applicationScope.typeList}">
                    <option>${typ}</option>
                </c:forEach>
            </select>
            <br>
            <label for="Drop_of">Drop_of Location :</label>
            <select name="Dlocaties" size="1">
                <c:forEach var="loc" items="${applicationScope.locatieList}">
                    <option>${loc}</option>
                </c:forEach>
            </select>
            <br>
            <label for="Pdate">Pickup Date :</label>
            <input type="date" id="Pdate" name="Pdate">
            <br>
            <label for="days">Nr of days :</label>
            <input type="date" id="Pdate" name="days">
            <br>
            <input type="Submit" name="submit" value="${reserveer}">           
        </form>
        <%@include file="footer.jspf" %>    
    </body>
</html>
