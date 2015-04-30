<%-- 
    Document   : SecondQuestion
    Created on : Mar 3, 2015, 8:40:55 PM
    Author     : Evaggelia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="question.css">
        <link rel="shortcut icon" href="files/askisi.ico" />
        <title>Ερώτηση 2</title>
    </head>
    <% String path = "files/questions/two/";%>
    <%String url = "http://askisi.azurewebsites.net/askisi";%>
    <body>
        <input id="go" type = "button"  value = "Ξεκινάμε!" onclick = "hidebutton();
                show();"><br><br>           
        <div id = "myDiv" style="display:none"><img id = "myImage" src=<%=path + "bell.png"%> onclick="getDateTime();"></div><br>

        <script type = "text/javascript">
            var cnt = 1;
            var cn = 0;
            var details = "";
            var path = "files/questions/two/";
            var pictures = [path + "book.png", path + "bell.png", path + "cube.png", path + "eraser.png",
                path + "globe.png", path + "pen.png", path + "pencil.png", path + "ruler.png",
                path + "scissor.png", path + "sharpener.png"];

            function show() {
                if (cnt === 1 || cnt === 6 || cnt === 7 || cnt === 10 || cnt === 12 || cnt === 15) {
                    cn = 0;
                }
                else {
                    cn = Math.floor(Math.random() * 9) + 1;
                }
                cnt++;
                document.getElementById("myImage").src = pictures[cn];
                document.getElementById("myDiv").style.display = "block";
                setTimeout('hide()', 3000);
                if (cnt > 16) {
                    document.getElementById("myDiv").style.display = "none";
                    document.getElementById("form").style.display = "block";
                }
            }

            function hide() {
                document.getElementById("myDiv").style.display = "none";
                setTimeout("show()", 1500); // 2.5 seconds
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

                fact = pictures[cn];
                temp = "question:" + cnt + " " + dateTime + " fact:" + fact + "\n";
                details = details + temp;
                return dateTime;
                return dateTime;
            }
            function getResults() {
                document.getElementById("outputText").value = "2 " + "\n" + details;
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
