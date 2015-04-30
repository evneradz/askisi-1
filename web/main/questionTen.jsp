<%-- 
    Document   : questionTen
    Created on : Mar 10, 2015, 6:55:07 PM
    Author     : Evaggelia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="question.css">
        <link rel="shortcut icon" href="files/askisi.ico" />
        <title>Ερώτηση 10</title>
    </head>
    <% String path = "files/questions/ten/";%>
    <%String url = "http://askisi.azurewebsites.net/askisi";%>
    <body>
        <input id="go" type = "button"  value = "Ξεκινάμε!" onclick ="start();">

        <img id = "ImageCalc" src=<%=path + "a.png"%> alt="a" style="width:208px;height:116px;display:none">

        <button id = "correct" style="display:none" type="button" onclick="iscorrect();">Σωστό</button>
        <button id = "wrong" style="display:none" type="button" onclick="isnotcorrect();">Λάθος</button><br>  

        <script type = "text/javascript">
            var cnt = 0;
            var res = "";
            var path = "files/questions/ten/";
            var details = "";
            var images = [path + "a.png", path + "b.png", path + "c.png", path + "d.png"];
            var answers = [1, 0, 1, 0];
            var details;
            function iscorrect() {
                cnt++;
                if (answers[cnt - 1] === 1) {
                    res = "correct";
                } else {
                    res = "wrong";
                }

                next(cnt);
            }

            function isnotcorrect() {
                cnt++;
                if (answers[cnt - 1] === 1) {
                    res = "wrong";
                } else {
                    res = "correct";
                }
                next();
            }

            function next() {
                getDateTime();
                if (cnt < images.length) {
                    document.getElementById("ImageCalc").src = images[cnt];
                }
                else {
                    document.getElementById("ImageCalc").style.display = "none";
                    document.getElementById("correct").style.display = "none";
                    document.getElementById("wrong").style.display = "none";
                    document.getElementById("nextTest").style.display = "block";
                }
            }

            function start() {
                document.getElementById("go").style.display = "none";
                document.getElementById("ImageCalc").style.display = "block";
                document.getElementById("correct").style.display = "block";
                document.getElementById("wrong").style.display = "block";
            }

            function getDateTime() {
                var temp;
                var now = new Date();
                var hour = now.getHours();
                var minute = now.getMinutes();
                var second = now.getSeconds();
                if (hour.toString().length === 1) {
                    var hour = '0' + hour;
                }
                if (minute.toString().length === 1) {
                    var minute = '0' + minute;
                }
                if (second.toString().length === 1) {
                    var second = '0' + second;
                }
                var dateTime = hour + ':' + minute + ':' + second;
                temp = "question:" + cnt + " " + dateTime + " the answer was:" + res + "\n";
                details = details + temp;
                return dateTime;
            }

            function getResults() {
                document.getElementById("outputText").value = "a" + "\n" + details;
                document.form1.hiddenValue.value = details;
                document.form1.submit();
            }
        </script>
        <br><br>
        <div id="form">
            <form action=<%=url + "/ResultServlet"%>  method="post">
                <textarea id="outputText" name = "hiddenValue" rows=1 cols=10 style="display:none"></textarea>
                <input type = "submit" style="display:none" id="nextTest" value = "Συνέχεια" onclick="getResults();">
            </form>
        </div>
    </body>
</html>
