<%-- 
    Document   : ninethQuestion
    Created on : Mar 8, 2015, 9:35:09 PM
    Author     : Evaggelia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="question.css">
        <link rel="shortcut icon" href="files/askisi.ico" />
        <title>Ερώτηση 9</title>
    </head>
    <%String url = "http://askisi.azurewebsites.net/askisi";%>
    <body>
        <input id="go" type = "button"  value = "Ξεκινάμε!" onclick ="start();">

        <div id="answersNine" style="display:none">
            <input id="radio81" type="radio" name="A" value="A"><div id="wordOne">παιδή</div>
            <input id="radio82" type="radio" name="A" value="B"><div id="wordTwo">παιδεί</div>
            <input id="radio83" type="radio" name="A" value="C"><div id="wordThree">παιδί</div>
            <input id="radio84" type="radio" name="A" value="D"><div id="wordFour">παιδοί</div>
        </div>
        <input type="button" style="display:none" id="OKbuttonNine" value="OK" onclick="check();">

        <script type = "text/javascript">
            var cnt = 0;
            var res = " ";
            var details = "";
            var value;
            var word0 = ["παιδή", "παιδεί", "παιδί", "παιδοί"];
            var word1 = ["στάχυ", "στάχι", "στάχει", "στάχι"];
            var word2 = ["όρυ", "όροι", "όρει", "όρι"];
            var word3 = ["βασίλισα", "βασίλησσα", "βασίλεισα", "βασίλισσα"];
            var word4 = ["ταπεινός", "ταπινός", "ταπηνός", "ταπυνός"];
            var word5 = ["διαιρέσεις", "διαιρέσοις", "διαιρέσις", "διαιρέσυς"];
            var word6 = ["φυτρόνει", "φυτρώνη", "φυτρόνοι", "φυτρώνει"];
            var word7 = ["έξυπνει", "έξυπνοι", "έξυπνι", "έξυπνυ"];
            var word8 = ["περίφοιμος", "περίφιμος", "περίφημος", "περίφυμος"];
            var word9 = ["αγοράζη", "αγοράζει", "αγοράζι", "αγοράζυ"];
            var word10 = ["περιμαίνω", "περιμένο", "περιμαίνο", "περιμένω"];
            var word11 = ["δακρείζο", "δακρύζω", "δακρίζω", "δακρήζο"];
            var word12 = ["καθρέφτισσα", "καθρέφτησα", "καθρέφτισα", "καθρέφτησσα"];
            var word13 = ["κρυωμένος", "κρυομένος", "κρυωμμένος", "κρυομμένος"];
            var words = [word0, word1, word2, word3, word4, word5, word6, word7, word8, word9, word10, word11, word12, word13];
            var word = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
            var greeklish = ["paidi", "staxu", "oroi", "vasilissa", "tapeinos", "diaireseis", "futrwnei", "eksupnoi", "perifhmos", "agorazei", "perimenw", "dakruzw", "kathreftisa", "kruwmenos"];
            function check() {
                cnt++;
                var radios = document.getElementsByName('A');
                for (var i = 0, length = radios.length; i < length; i++) {
                    if (radios[i].checked) {
                        if ((word[cnt - 1] === 3 || word[cnt - 1] === 6 || word[cnt - 1] === 10) && (radios[i].value === "D")) {
                            res = "correct";
                            alert("1");
                        }
                        else if ((word[cnt - 1] === 1 || word[cnt - 1] === 4 || word[cnt - 1] === 5 || word[cnt - 1] === 13) && (radios[i].value === "A")) {
                            res = "correct";
                            alert("2");
                        }
                        else if ((word[cnt - 1] === 0 || word[cnt - 1] === 8 || word[cnt - 1] === 12) && (radios[i].value === "C")) {
                            res = "correct";
                            alert("3");
                        }
                        else if ((word[cnt - 1] === 2 || word[cnt - 1] === 7 || word[cnt - 1] === 9 || word[cnt - 1] === 11) && (radios[i].value === "B")) {
                            res = "correct";
                            alert("4");
                        }
                        else {
                            res = "wrong";
                        }
                        value = radios[i].value;
                        break;
                    }
                }
                getDateTime();
                res = " ";
                value = " ";
                if (cnt === (words.length)) {
                    document.getElementById("go").style.display = "none";
                    document.getElementById("OKbuttonNine").style.display = "none";
                    document.getElementById("nextTest").style.display = "block";
                    document.getElementById("answersNine").style.display = "none";
                }
                next();
                radios[i].checked = false;
            }

            function next() {
                document.getElementById("wordOne").innerHTML = words[0 + cnt][0];
                document.getElementById("wordTwo").innerHTML = words[0 + cnt][1];
                document.getElementById("wordThree").innerHTML = words[0 + cnt][2];
                document.getElementById("wordFour").innerHTML = words[0 + cnt][3];
            }

            function start() {
                document.getElementById("go").style.display = "none";
                document.getElementById("answersNine").style.display = "block";
                document.getElementById("OKbuttonNine").style.display = "block";
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
                temp = "question:" + cnt + " " + dateTime + "word:" + greeklish[cnt - 1] + " the answer was:" + res + " value" + value + "\n";
                details = details + temp;
                return dateTime;
            }

            function getResults() {
                document.getElementById("outputText").value = "9\n" + details;
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
