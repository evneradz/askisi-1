<%-- 
    Document   : thirdQuestion
    Created on : Mar 4, 2015, 6:40:05 PM
    Author     : Evaggelia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="question.css">
        <link rel="shortcut icon" href="files/askisi.ico" />
        <title>Ερώτηση 3</title>
    </head>
    <%String url = "http://localhost:8080/askisi";%>
    <%--<%String url = "http://askisi.azurewebsites.net/askisi";%>--%>>
    <body>
        <input id="go" type = "button"  value = "Ξεκινάμε!" onclick ="show();">
        <div id="up">
            <div id = "myDiv" style="display:none">Μόκη</div><br>
            <button id = "exist" type="button" style="display:none" onclick="iscorrect();">Ναι σημαίνει!</button>
            <button id = "notexist" type="button" style="display:none" onclick="isnotcorrect();">Όχι δεν σημαίνει!</button><br>    

        </div>
        <script type = "text/javascript">
            var res = " ";
            var cnt = -1;
            var details = "";
            var pseudowords = ["Μόκη", "Πότε", "Βομύλι", "Αναμφισβήτητος", "Δυνάτσα", "Αντιρρησίας", "Τουτάμι", "Λουλούδια", "Ανατολή", "Αδιάβροχο", "Πεκήρι", "Βρεγμένο", "Θοπρύμο", "Πάρτεζα", "Ξαφνάκι", "Κατσαστράκα", "Αυλάκι", "Βικαρίδα", "Δονώβω", "Κόσμημα"];
            var words = ["Πότε", "Αναμφισβήτητος", "Αντιρρησίας", "Λουλούδια", "Ανατολή", "Αδιάβροχο", "Βρεγμένο", "Αυλάκι", "Κόσμημα"];

            function show() {
                cnt++;
                document.getElementById("myDiv").style.display = "block";
                document.getElementById("exist").style.display = "block";
                document.getElementById("notexist").style.display = "block";
                document.getElementById("go").style.display = "none";
            }

            function next_word() {
                if (cnt < pseudowords.length) {
                    document.getElementById("myDiv").innerHTML = pseudowords[cnt];
                }
                else {
                    document.getElementById("up").style.display = "none";
                    document.getElementById("form").style.display = "block";
                }
            }

            function iscorrect() {

                var a = words.indexOf(pseudowords[cnt]);
                if (a === -1) {
                    res = "wrong";
                }
                else {
                    res = "correct";

                }
                cnt++;
                getDateTime();
                next_word();
            }

            function isnotcorrect() {

                var a = words.indexOf(pseudowords[cnt]);
                if (a === -1) {
                    res = "correct";
                }
                else {
                    res = "wrong";

                }
                cnt++;
                getDateTime();
                next_word();
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

                return dateTime;
            }
            function getResults() {
                document.getElementById("outputText").value = "3 " + "\n" + details;
                document.form1.hiddenValue.value = details;
                document.form1.submit();
            }</script>
        <br><br>
        <form action=<%=url + "/ResultServlet"%>  method="post">
            <div id="form" style="display:none">
                <textarea id="outputText" name = "hiddenValue" rows=1 cols=10 style="display:none"></textarea>
                <input type = "submit" id="nextTest" value = "Συνέχεια" onclick="getResults();">
            </div>
        </form>
    </body>
</html>
