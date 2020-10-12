<%-- 
    Document   : index
    Created on : 28-sep-2020, 13:54:03
    Author     : r0638823
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <h1>Geef uw klantennummer</h1>
        <form method="post" action="ResController">
             <label for="klantnr">Klantnr :</label>
            <input type="text" id="klantnr" name="klantnr">
            <input type="submit" name="submit" value="submit">
            <br>
            <input type="submit" name="submit" value="registreer">
        </form>
        
    </body>
</html>
