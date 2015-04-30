<%-- 
    Document   : subuser
    Created on : Apr 11, 2015, 4:11:55 PM
    Author     : Evaggelia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <jsp:useBean id="subuser" scope="request" class="askisi.com.UserBean" >
            <jsp:setProperty name="subuser" property="subuser" value='<%=request.getParameter("subuser")%>'/>
            <jsp:setProperty name="subuser" property="level" value='<%=request.getParameter("level")%>'/>
            <jsp:setProperty name="subuser" property="sex" value='<%=request.getParameter("sex")%>'/>
        </jsp:useBean>
        <jsp:forward page="http://localhost:8080/askisi/CreateDir">
            <jsp:param name="subuser" value="<%=subuser.getSubuser()%>" />
            <jsp:param name="level" value="<%=subuser.getLevel()%>" />
            <jsp:param name="sex" value="<%=subuser.getSex()%>" />
        </jsp:forward>
    </body>
</html>
