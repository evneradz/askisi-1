<%-- 
    Document   : login
    Created on : Mar 16, 2015, 7:15:48 PM
    Author     : Evaggelia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="Java" import="java.sql.*" %> 
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <jsp:useBean id="login" scope="request" class="askisi.com.UserBean" >
            <jsp:setProperty name="login" property="username" value='<%=request.getParameter("un")%>'/>
            <jsp:setProperty name="login" property="password" value='<%=request.getParameter("pw")%>'/>
        </jsp:useBean>
        <jsp:forward page="LoginServlet">
            <jsp:param name="user" value="<%=login.getUsername()%>" />
            <jsp:param name="pass" value="<%=login.getPassword()%>" />
        </jsp:forward>
        
       
    </body>
</html>
