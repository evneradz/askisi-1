<%-- 
    Document   : questionTwelve
    Created on : Mar 10, 2015, 6:55:35 PM
    Author     : Evaggelia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="question.css">
        <link rel="shortcut icon" href="files/askisi.ico" />
        <title>Ερώτηση 12</title>
    </head>
    <body>
        <%String url = "http://askisi.azurewebsites.net/askisi";%>
        <input id="go" type = "button"  value = "Ξεκινάμε!" onclick ="start();">
        <div id="answerTwelve" style="display:none">

            <div id="questionTwelve" style="display:none">Ένας γεωργός φύτεψε 72 μηλιές. Σε κάθε σειρά έβαλε 8 δέντρα.<br> 
                Πόσες σειρές σχημάτισαν τα δέντρα που φύτεψε;</div><br>

            Ποιά πράξη θα χρησιμοποιήσουμε;<br><br>
            <input type="radio" name="A" value="A" ><div id="One">πρόσθεση</div><br>
            <input type="radio" name="A" value="B" ><div id="Two">αφαίρεση</div><br>
            <input type="radio" name="A" value="C" ><div id="Three">πολλαπλασιασμό</div><br>
            <input type="radio" name="A" value="D" ><div id="Four">διαίρεση</div><br>
            <br>
            <br>
        </div>
        <br>
        <br>
        <input type="button" id="OKbuttonTwelve" style="display:none" value="OK" onclick="check();">
        <br>
        <script type = "text/javascript">
            var res = "";
            var details = "";
            var cnt = 0;
            function check() {
                var radios = document.getElementsByName('A');
                for (var i = 0, length = radios.length; i < length; i++) {
                    if (radios[i].checked) {
                        if ((cnt === 0 && radios[i].value === "D") || (cnt === 1 && radios[i].value === "B")) {
                            res = "correct";
                        }
                        else {
                            res = "wrong";
                        }
                    }
                }
                cnt++;
                getDateTime();
                //radios[i].checked = false;
                if (cnt > 1) {
                    document.getElementById("answerTwelve").style.display = "none";
                    document.getElementById("OKbuttonTwelve").style.display = "none";
                    document.getElementById("nextTest").style.display = "block";
                }
                next();
            }

            function start() {
                document.getElementById("go").style.display = "none";
                document.getElementById("questionTwelve").style.display = "block";
                document.getElementById("answerTwelve").style.display = "block";
                document.getElementById("OKbuttonTwelve").style.display = "block";
            }

            function next() {
                document.getElementById("questionTwelve").innerHTML = "Ένα σχολείο έχει 317 παιδιά. Από αυτά τα 169 είναι κορίτσια. Πόσα είναι τα αγόρια;";
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
                temp = "question:" + cnt + " " + dateTime + " the answer was:" + res + "\n";
                details = details + temp;
                return dateTime;

                return dateTime;
            }
            function getResults() {
                document.getElementById("outputText").value = "c\n" + details;
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
