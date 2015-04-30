<%-- 
    Document   : questionEleven
    Created on : Mar 10, 2015, 6:55:23 PM
    Author     : Evaggelia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="question.css">
        <link rel="shortcut icon" href="files/askisi.ico" />
        <title>Ερώτηση 11</title>
    </head>
    <body>
        <%String url = "http://askisi.azurewebsites.net/askisi";%>
        <input id="go" type = "button"  value = "Ξεκινάμε!" onclick ="start();">

        <div id="answerEleven" style="display:none">
            <div id="questionEleven" style="display:none"> Άθροισμα είναι: </div>
            <br>

            <input type="radio" id="A" name="A" value="A" > <div id="One">Το αποτέλεσμα του πολλαπλασιασμού.</div>
            <input type="radio" id="B" name="A" value="B" > <div id="Two">Αυτό που βρίσκουμε όταν αφαιρούμε τον αφαιρετέο από τον αφαιρέτη.</div><br>
            <input type="radio" id="C" name="A" value="C" > <div id="Three">Αυτό που μας μένει στη διαίρεση.</div><br>
            <input type="radio" id="D" name="A" value="D" > <div id="Four">Το αποτέλεσμα της πρόσθεσης.</div><br>
            <br>
            <br>
        </div>
        <br>

        <input type="button" id="OKbuttonEleven" style="display:none" value="OK" onclick="check();">
        <br>
        <script type = "text/javascript">
            var res = "";
            var cnt = 0;
            var details = "";
            var value = "";
            function check() {
                var radios = document.getElementsByName('A');
                for (var i = 0, length = radios.length; i < length; i++) {
                    if (radios[i].checked) {
                        if ((cnt === 0 && radios[i].value === "D") || (cnt === 1 && radios[i].value === "C")) {
                            res = "correct";
                        }
                        else {
                            res = "wrong";
                        }
                        value = radios[i].value;
                    }
                }
                cnt++;
                getDateTime();
                res = "";
                value = "";

                if (cnt > 1) {
                    document.getElementById("answerEleven").style.display = "none";
                    document.getElementById("OKbuttonEleven").style.display = "none";
                    document.getElementById("nextTest").style.display = "block";
                }
                next();
            }


            function start() {
                document.getElementById("go").style.display = "none";
                document.getElementById("questionEleven").style.display = "block";
                document.getElementById("answerEleven").style.display = "block";
                document.getElementById("OKbuttonEleven").style.display = "block";
            }

            function next() {
                document.getElementById("questionEleven").innerHTML = "Κλάσμα είναι:";
                document.getElementById("One").innerHTML = "Ένας αριθμός που χωρίζει κάτι σε μέρη.";
                document.getElementById("Two").innerHTML = "Ένας αριθμός που δείχνει τα μέρη ενός συνόλου.";
                document.getElementById("Three").innerHTML = "Ένα τμήμα πραγμάτων.";
                document.getElementById("Four").innerHTML = "Ένα σύνολο πραγμάτων.";
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
                temp = "question:" + cnt + " " + dateTime + " the answer was:" + res + " answer:" + value + "\n";
                details = details + temp;
                return dateTime;
                return dateTime;
            }
            function getResults() {
                document.getElementById("outputText").value = "b\n" + details;
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
