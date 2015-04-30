<%-- 
    Document   : eighthQuestion
    Created on : Mar 8, 2015, 9:31:39 PM
    Author     : Evaggelia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="question.css">
        <link rel="shortcut icon" href="files/askisi.ico" />
        <title>Ερώτηση 8</title>
    </head>
    <%String url = "http://askisi.azurewebsites.net/askisi";%>
    <body>
        <input id="go" type = "button"  value = "Ξεκινάμε!" onclick ="start();">
        <br>
        <div id="answersEight" style="display:none">
            <input id="radio81" type="radio" name="A" value="A"><div id="wordOne">μάθοιμα</div>
            <input id="radio82" type="radio" name="A" value="B"><div id="wordTwo">μάθημα</div>
            <input id="radio83" type="radio" name="A" value="C"><div id="wordThree">μάθειμα</div>
            <input id="radio84" type="radio" name="A" value="D"><div id="wordFour">μάθιμα</div>
        </div>
        <input type="button" style="display:none" id="OKbuttonEight" value="OK" onclick="check();">

        <script type = "text/javascript">
            var cnt = 0;
            var res = " ";
            var details = "";
            var value;
            var word0 = ["μάθοιμα", "μάθημα", "μάθειμα", "μάθιμα"];
            var word1 = ["μηράζω", "μιράζω", "μειράζω", "μοιράζω"];
            var word2 = ["αρρωσταίνω", "αρροσταίνω", "αρωστάινω", "αρροσταίνω"];
            var word3 = ["εκκλησία", "εκλησία", "εκκλυσία", "εκλυσία"];
            var word4 = ["σίννεφο", "σύνεφο", "σύννεφο", "σίνεφο"];
            var word5 = ["κίτταρο", "κύταρο", "κίταρο", "κύτταρο"];
            var word6 = ["κατάληλος", "κατάλιλος", "κατάλλιλος", "κατάλληλος"];
            var word7 = ["διάμμετρος", "διάμετρος", "διάμαιτρος", "διάμμαιτρος"];
            var word8 = ["ζίμη", "ζείμη", "ζύμη", "ζείμη"];
            var word9 = ["αντήληψη", "αντίληψη", "αντίλιψη", "αντήλιψη"];
            var word10 = ["ευαίσθητος", "εβαίσθητος", "ευέσθητος", "εβέσθητος"];
            var word11 = ["έννατος", "ένατος", "αίννατος", "αίνατος"];
            var words = [word0, word1, word2, word3, word4, word5, word6, word7, word8, word9, word10, word11];
            var word = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
            var greeklish = ["mathhma", "moirazw", "arrwstainw", "ekklhsia", "sunnefo", "kuttaro", "katallhlos", "diametros", "zumh", "antilhpsh", "euaisthhtos", "enatos"];
            function check() {
                cnt++;
                var radios = document.getElementsByName('A');

                for (var i = 0, length = radios.length; i < length; i++) {
                    if (radios[i].checked) {
                        if ((word[cnt - 1] === 1 || word[cnt - 1] === 5 || word[cnt - 1] === 6) && radios[i].value === "D") {
                            res = "correct";
                        }
                        else if ((word[cnt - 1] === 2 || word[cnt - 1] === 3 || word[cnt - 1] === 10) && radios[i].value === "A") {
                            res = "correct";
                        }
                        else if ((word[cnt - 1] === 4 || word[cnt - 1] === 8) && radios[i].value === "C") {
                            res = "correct";
                        }
                        else if ((word[cnt - 1] === 0 || word[cnt - 1] === 7 || word[cnt - 1] === 9 || word[cnt - 1] === 11) && radios[i].value === "B") {
                            res = "correct";
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
                    document.getElementById("OKbuttonEight").style.display = "none";
                    document.getElementById("nextTest").style.display = "block";
                    document.getElementById("answersEight").style.display = "none";
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
                document.getElementById("answersEight").style.display = "block";
                document.getElementById("OKbuttonEight").style.display = "block";
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
                temp = "question:" + cnt + " " + dateTime + "word:" + greeklish[cnt - 1] + " the answer was:" + res + " value:" + value + "\n";
                details = details + temp;
                return dateTime;
            }

            function getResults() {
                document.getElementById("outputText").value = "8\n" + details;
                document.form1.hiddenValue.value = details;
                document.form1.submit();
            }
        </script>
        <br><br>
        <div id="form">
            <form action=<%=url + "/ResultServlet"%>  method="post">
                <textarea id="outputText" name = "hiddenValue" rows=1 cols=10 style="display:none"></textarea>
                <input type = "submit" id="nextTest" style="display:none" value = "Συνέχεια" onclick="getResults()
                                ;">
            </form>
        </div>
    </body>
</html>