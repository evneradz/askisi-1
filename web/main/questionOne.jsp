<%-- 
    Document   : questionFour
    Created on : Feb 18, 2015, 7:42:21 PM
    Author     : Evaggelia
--%>
<style>

</style>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="question.css">
        <link rel="shortcut icon" href="files/askisi.ico" />
        <title>Ερώτηση 1</title>
    </head>

    <body>
        <%String url = "http://askisi.azurewebsites.net/askisi";%>
        <input id = "go" type = "button" value = "Ξεκινάμε!" onclick = "hidebutton();
                getDateTime();
                show();"><br><br>
        <div id = "myDiv" style="display:none"><img id = "myImage" src = "files/questions/one/book.png" onclick = "getDateTime();"></div><br>

        <script type = "text/javascript">
            var details = "";
            var cnt = 0;
            function show() {
                cnt++;
                document.getElementById("myDiv").style.display = "block";
                setTimeout("hide()", 1500);
            }

            function hide() {
                if (cnt < 10) {//10
                    document.getElementById("myDiv").style.display = "none";
                    setTimeout("show()", 1500);
                }
                else {
                    document.getElementById("myDiv").style.display = "none";
                    document.getElementById("form").style.display = "block";
                }
            }

            function hidebutton() {
                document.getElementById("go").style.visibility = "hidden";
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
                // document.getElementById("outputText").value = cnt + " " + dateTime;
                //fact = pseudowords[cnt];

                temp = "question:" + cnt + " " + dateTime + "\n";
                details = details + temp;
                return dateTime;

                return dateTime;
            }

            function getResults() {
                document.getElementById("outputText").value = "1 " + "\n" + details;
                document.form1.hiddenValue.value = details;
                document.form1.submit();
            }
        </script>
        <br><br>

        <form action=<%=url + "/ResultServlet"%>  method="post">
            <div id="form" style="display:none">
                <textarea id="outputText" name = "hiddenValue" rows=1 cols=10 style="display:none"></textarea>
                <input type = "submit" id="nextTest" value = "Συνέχεια" onclick="getResults();">
            </div>
        </form>

    </body>
</html>