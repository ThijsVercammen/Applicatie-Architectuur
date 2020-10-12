<%-- 
    Document   : overzicht
    Created on : 5-okt-2020, 13:59:38
    Author     : r0638823
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>bedankt voor de reservatie <%= request.getSession().getAttribute("klantnr")%>
    </body>
</html>
