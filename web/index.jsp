<%-- 
    Document   : index
    Created on : Feb 1, 2015, 1:11:24 PM
    Author     : Evaggelia
--%>

<%@ page language="java" 
         contentType="text/html; utf-8"
         pageEncoding="utf-8"
         %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
        <link rel="stylesheet" type="text/css" href="static.css">
        <link rel="shortcut icon" href="askisi.ico" />
        <title>Σύνδεση</title>
    </head>

    <body>
        <form action="LoginServlet" autocomplete="on" method="post">
            <div id="login">
                <b>Πληκτρολόγησε το ψευδώνυμο και τον κωδικό σου για να ξεκινήσεις</b>	<br><br>
                <label for="username" class="uname" data-icon="u">Ψευδώνυμο:</label><input id="username" name="un" required="required" type="text" placeholder="myusername"/><br>       
                <label for="password" class="youpasswd" data-icon="p">Κωδικός:</label><input id="password" name="pw" required="required" type="password" placeholder="eg. X8df!90EO"/><br><br>
                <label></label><input id="submit_button_1" type="submit" value="Είσοδος">
            </div>
        </form>
    </body>
</html>