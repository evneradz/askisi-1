<%-- 
    Document   : questionTwo
    Created on : Feb 9, 2015, 7:48:11 PM
    Author     : Evaggelia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="question.css">
        <link rel="shortcut icon" href="files/askisi.ico" />
        <title>Ερώτηση 7</title>
    </head>
    <% String path = "files/questions/seven/";%>
    <%String url = "http://askisi.azurewebsites.net/askisi";%>
    <body>
        <input id="go" type = "button"  value = "Ξεκινάμε!" onclick ="start();">
        <audio id="demo0" src="files/questions/seven/Hector.mp3"></audio>
        <audio id="demo1" src="files/questions/seven/school.mp3"></audio>
        <audio id="demo2" src="files/questions/seven/kok.mp3"></audio>

        <div id="myDiv" style="display:none">  <button id="playAudio" onclick="play();
                hide();">Άκουσε το κείμενο</button>
        </div>

        <div id="answersSevenUp" style="display:none">
            <%--<div id="questionSeven">Πώς λένε το κορίτσι;</div><br><br>--%>
            <div id="questionSeven">Τι χρώμα ήταν ο Έκτορας;</div><br><br>
            <input type="radio" name="A" value="A" id="_1" class="btns"><div id="first">Μαύρος</div>
            <input type="radio" name="A" value="B" id="_2" class="btns"><div id="second">Άσπρος</div>
            <input type="radio" name="A" value="C" id="_3" class="btns"><div id="third">Ξανθός</div>
        </div>
        <input type="submit" style="display:none" id="OKbuttonSeven" value="OK" onclick="check();">
    </body>
    <script type = "text/javascript">
        var cnt = 0;
        var path = "files/questions/seven/";
        var res = "";
        var value = "";
        var details = "";
        var i = 0;
        var question1 = ["Τι τάξη είναι τα παιδιά της ιστορίας;", "Γ΄ τάξη Δημοτικού", "Δ΄ τάξη Δημοτικού", "Ε΄ τάξη Δημοτικού"];
        var question2 = ["Πώς λένε το δάσκαλο της τάξης μας στη ιστορία;", "κ. Κώστα", "κ. Γιώργο", "κ. Ιάκωβο"];
        var question3 = ["Με ποιο σχολείο θα αλληλογραφήσουν οι μαθητές της ιστορίας μας;", "Με το Ελληνικό Σχολείο της Νέας Υόρκης", "Με το Ελληνικό Σχολείο της Νέας Ορλεάνης", "Με το Ελληνικό Σχολείο του Νέου Μεξικού"];
        var question4 = ["Τι θα έπρεπε να περιλαμβάνει η επιστολή μας;", "Συνταγές με Ελληνικά Παραδοσιακά Φαγητά", "Φωτογραφίες από το χωριό μας", "Κανένα από τα παραπάνω"];
        var question5 = ["Πώς επιλέχθηκε το συγκεκριμένο σχολείο;", "Ο δάσκαλός τους ήταν πέρυσι στο σχολείο μας", "Έπειτα από κλήρωση", "Τα παιδιά γνωρίζονταν μεταξύ τους"];
        var question6 = ["Πώς λέγαν τα κορίτσια;", "Δομινίκη και Λυδία", "Φερενίκη και Αμαλία", "Νίκη και Μαρία"];
        var question7 = ["Ποιος ήταν ο τίτλος της έκθεσης;", "Η ζώνη σώζει ζωές", "Η ζώνη δεν περιορίζει……ασφαλίζει", "Η ζώνη ασφαλίζει"];
        var question8 = ["Ένας κανόνας απ’ τον κατάλογο ανέφερε:", "Τα παιδιά δεν τα κρατάει ποτέ η μαμά ή ο  μπαμπάς στο πίσω κάθισμα", "Τα παιδιά κάθονται στα ειδικά καθισματάκια στο μπροστινό κάθισμα", "Τα παιδιά δεν τα κρατάει ποτέ η μαμά ή ο μπαμπάς στο μπροστινό κάθισμα", ];
        var question9 = ["Τι λάθος ακούσατε στην ιστορία;", "Ημερομηνία", "Τον τίτλο της έκθεσης ", "Δεν υπήρχε λάθος"];
        var questions = [question1, question2, question3, question4, question5, question6, question7, question8, question9];
        var question = ["question1", "question2", "question3", "question4", "question5", "question6", "question7", "question8", "question9"];


        function play() {
            if (cnt === 0) {
                document.getElementById('demo1').play();
            }
            if (cnt === 5) {
                document.getElementById('demo2').play();
                setTimeout("show()", 37000);
            }
        }
        function start() {
            document.getElementById("go").style.display = "none";
            document.getElementById("myDiv").style.display = "block";
            setTimeout("show()", 16000);//31500
        }

        function hide() {
            document.getElementById("myDiv").style.display = "none";
        }

        function show() {
            document.getElementById("answersSevenUp").style.display = "block";
            document.getElementById("OKbuttonSeven").style.display = "block";
        }

        function check() {
            cnt++;
            value = "";
            res = "wrong";

            if (cnt > questions.length - 1) {
                document.getElementById("form").style.display = "block";
                document.getElementById("answersSevenUp").style.display = "none";
                document.getElementById("OKbuttonSeven").style.display = "none";
            }
            var radios = document.getElementsByName('A');
            for (var i = 0, length = radios.length; i < length; i++) {
                if (radios[i].checked) {
                    if ((question[cnt - 1] === "question3" || question[cnt - 1] === "question5" || question[cnt - 1] === "question6" || question[cnt - 1] === "question9") && radios[i].value === "A") {
                        res = "correct";
                    }
                    else if ((question[cnt - 1] === "question1" || question[cnt - 1] === "question4" || question[cnt - 1] === "question7") && radios[i].value === "B") {
                        res = "correct";
                    }
                    else if ((question[cnt - 1] === "question2" || question[cnt - 1] === "question8") && radios[i].value === "C") {
                        res = "correct";
                    }
                    else {
                        res = "wrong";
                    }
                    value = radios[i].value;
                }
                radios[i].checked = false;
            }
            if (cnt === 5) {
                change();
                document.getElementById("answersSevenUp").style.display = "none";
                document.getElementById("OKbuttonSeven").style.display = "none";
            }
            getDateTime();

            next();
        }

        function next() {
            document.getElementById("questionSeven").innerHTML = questions[cnt][0];
            document.getElementById("first").innerHTML = questions[cnt][1];
            document.getElementById("second").innerHTML = questions[cnt][2];
            document.getElementById("third").innerHTML = questions[cnt][3];


        }

        function change() {
            document.getElementById("myDiv").style.display = "block";

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
            temp = "question:" + cnt + " " + dateTime + " the answer was:" + res + " value: " + value + "\n";
            details = details + temp;
            return dateTime;
        }

        function getResults() {
            document.getElementById("outputText").value = "7\n" + details;
            document.form1.hiddenValue.value = details;
            document.form1.submit();
        }
    </script>
    <br><br>
    <form action=<%=url + "/ResultServlet"%>  method="post">
        <div id="form" style="display: none">
            <textarea id="outputText" name = "hiddenValue" rows=1 cols=10 style="display:none"></textarea>
            <input type = "submit" id="nextTest" value = "Συνέχεια" onclick="getResults();">
        </div>
    </form>
</body>
</html>
