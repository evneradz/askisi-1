<%-- 
    Document   : sexChoice
    Created on : Mar 3, 2015, 8:13:49 PM
    Author     : Evaggelia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
        <link rel="stylesheet" type="text/css" href="static.css">
        <link rel="shortcut icon" href="files/askisi.ico" />
        <title>Πες μας...</title>

    </head>
    <%--<%String url = "http://localhost:8084/askisi";%>--%>
    <%String url = "http://askisi.azurewebsites.net/askisi";%>
    <body>

        <div id="details">
            Επέλεξε το φύλο σου...
        </div>

        <div id="aboy">
            <input type="image" class="btns" src="files/boy.png" height="250" width="200" onclick="boychoice();">
        </div>
        <p id="gap"></p>
        <div id="agirl">
            <input type="image" class="btns" src="files/girl.png" height="250" width="200" onclick="girlchoice();">
        </div>
    </body>


    <script type = "text/javascript">
        function boychoice() {
            document.getElementById("aboy").style.display = "none";
            document.getElementById("agirl").style.display = "none";
            document.getElementById("levels").style.display = "block";
            document.getElementById("sex").value = "boy";
            document.getElementById("details").innerHTML = "... την τάξη σου...";
        }

        function girlchoice() {
            document.getElementById("aboy").style.display = "none";
            document.getElementById("agirl").style.display = "none";
            document.getElementById("levels").style.display = "block";
            document.getElementById("sex").value = "girl";
            document.getElementById("details").innerHTML = "... την τάξη σου...";
        }

        function getlevelC() {
            document.getElementById("level").value = "3";
            document.getElementById("levels").style.display = "none";
            document.getElementById("nextTest").style.display = "block";
            document.getElementById("subuser").style.display = "block";
            document.getElementById("details").innerHTML = "... και το όνομά σου!";

        }
        function getlevelD() {
            document.getElementById("level").value = "4";
            document.getElementById("levels").style.display = "none";
            document.getElementById("nextTest").style.display = "block";
            document.getElementById("subuser").style.display = "block";
            document.getElementById("details").innerHTML = "... και το όνομά σου!";
        }
        function getlevelE() {
            document.getElementById("level").value = "5";
            document.getElementById("levels").style.display = "none";
            document.getElementById("nextTest").style.display = "block";
            document.getElementById("subuser").style.display = "block";
            document.getElementById("details").innerHTML = "... και το όνομά σου!";
        }
        function getlevelF() {
            document.getElementById("level").value = "6";
            document.getElementById("levels").style.display = "none";
            document.getElementById("nextTest").style.display = "block";
            document.getElementById("subuser").style.display = "block";
            document.getElementById("details").innerHTML = "... και το όνομά σου!";
        }
    </script>

    <div id="levels" style="display:none">
        <button id="aButton" type="button" onclick="getlevelC();">Γ' Δημοτικού</button><br>
        <button id="aButton" type="button" onclick="getlevelD();">Δ' Δημοτικού</button><br>
        <button id="aButton" type="button" onclick="getlevelE();">Ε' Δημοτικού</button><br>
        <button id="aButton" type="button" onclick="getlevelF();">Στ' Δημοτικού</button><br>
    </div>
    <div id="form" >
        <form action=<%=url + "/CreateDir"%>  method="post">
            <input type="text" id="subuser" style="display:none" required="required" name="subuser">
            <input type="text" id="sex" style="display:none" name="sex">
            <input type="text" id="level" style="display:none" name="level">
            <input type = "submit" style="display:none" id="nextTest" value = "Πάμε!">

        </form>
    </div>
</html>
