<%-- 
    Document   : reserveer
    Created on : 28-sep-2020, 14:21:35
    Author     : r0638823
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welkom, uw klantnr is <%= request.getSession().getAttribute("klantnr")%> </h1> 
        <h2>Maak uw reservatie</h2>
        <form method="post" action="ResController">
            <% response.encodeRedirectURL("Rescontroller");
               List locaties = (List) request.getServletContext().getAttribute("locatieList");
               List types = (List) request.getServletContext().getAttribute("typeList"); %>
            <label for="pickup">Pick_up Location :</label>
            <select name="Dlocaties" size="1">
                <% 
                    Iterator loc = locaties.iterator();
                    while(loc.hasNext()) {
                %>
                <option><%= loc.next() %></option>
                <% } %>
            </select>
            <br>
            <label for="types">Vehicle Type :</label>
            <select name="types" size="1">
                <% 
                    Iterator typ = types.iterator();
                    while(typ.hasNext()) {
                %>
                <option><%= typ.next() %></option>
                <% } %>
            </select>
            <br>
            <label for="Drop_of">Drop_of Location :</label>
            <select name="Plocaties" size="1">
                <% 
                    Iterator loca = locaties.iterator();
                    while(loca.hasNext()) {
                %>
                <option><%= loca.next() %></option>
                <% } %>
            </select>
            <br>
            <label for="Pdate">Pickup Date :</label>
            <input type="text" id="Pdate" name="Pdate">
            <br>
            <label for="days">Nr of days :</label>
            <input type="text" id="Pdate" name="days">
            <br>
            <% out.println("<a href=\"" + response.encodeRedirectURL("Rescontroller") + "\"> reserveer </a>");%>
            <input type="Submit" name="submit" value="reserveer"></input
            
        </form>
    </body>
</html>
