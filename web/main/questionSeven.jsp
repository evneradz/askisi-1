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
        <audio id="demo0" src="files/questions/seven/nikos.mp3"></audio>
        <audio id="demo1" src="files/questions/seven/farm.mp3"></audio>
        <audio id="demo2" src="files/questions/seven/school.mp3"></audio>

        <div id="myDiv" style="display:none">  <button id="playAudio" onclick="play();
                hide();">Άκουσε το κείμενο</button>
        </div>

        <div id="answersSevenUp" style="display:none">
            <%--<div id="questionSeven">Πώς λένε το κορίτσι;</div><br><br>--%>
            <div id="questionSevenUp">Πώς τον τιμώρησε ο δάσκαλος;</div><br><br>
            <input type="radio" name="A" value="A" class="btns"><img height="150" width="150" src=<%=path + "student_alone.png"%> id="first">
            <input type="radio" name="A" value="B" class="btns"><img height="150" width="150" src=<%=path + "student_play.png"%> id="second">
            <input type="radio" name="A" value="C" class="btns"><img height="150" width="150" src=<%=path + "student_together.png"%> id="third">
        </div>

        <div id="answersSevenDown" style="display:none">
            <%--<div id="questionSeven">Πώς λένε το κορίτσι;</div><br><br>--%>
            <div id="questionSevenDown">Τι τάξη είναι τα παιδιά της ιστορίας;</div><br><br>
            <input type="radio" name="A" value="A" class="btns"><div id="_1"></div>
            <input type="radio" name="A" value="B" class="btns"><div id="_2"></div>
            <input type="radio" name="A" value="C" class="btns"><div id="_3"></div>
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
        var image1 = [path + "Louiza.png", path + "Evangelia.png", path + "Katerina.png"];
        var image2 = [path + "Grandparents.png", path + "Grandparents_aunt_uncle.png", path + "Grandparents_uncles.png"];
        var image3 = [path + "Cats_dogs_rabbits_pony.png", path + "Cats_dogs_pony.png", path + "Cats_dogs_rabbits_chickens_pony.png"];
        var image4 = [path + "Pony_run_to_girl.png", path + "Pony_licks_girl.png", path + "Pony_tail.png"];
        var images = [image1, image2, image3, image4];
        var image = ["Name", "Family", "Farm", "Pony", "question5", "question6", "question7", "question8", "question9"];
        var questions = ["Πώς λένε το κορίτσι;", "Ποιοί μένουν στο χωριό του κοριτσιού;",
            "Ποια ζώα υπάρχουν στο αγρόκτημα;", "Τι κάνει η Λουΐζα μόλις βλέπει το κορίτσι;",
            "Τι τάξη είναι τα παιδιά της ιστορίας;", "Πώς λένε το δάσκαλο της τάξης μας στη ιστορία;",
            "Με ποιο σχολείο θα αλληλογραφήσουν οι μαθητές της ιστορίας μας;", "Τι θα έπρεπε να περιλαμβάνει η επιστολή μας;",
            "Πώς επιλέχθηκε το συγκεκριμένο σχολείο;"];
        var answers = ["Γ΄ τάξη Δημοτικού", "Δ΄ τάξη Δημοτικού", "Ε΄ τάξη Δημοτικού", "κ. Κώστα", "κ. Γιώργο", "κ. Ιάκωβο",
            "Με το Ελληνικό Σχολείο της Νέας Υόρκης", "Με το Ελληνικό Σχολείο της Νέας Ορλεάνης", "Με το Ελληνικό Σχολείο του Νέου Μεξικού",
            "Φωτογραφίες από το χωριό μας", "Συνταγές με Ελληνικά Παραδοσιακά Φαγητά", "Κανένα από τα παραπάνω",
            "Έπειτα από κλήρωση", "Τα παιδιά γνωρίζονταν μεταξύ τους", "Ο δάσκαλός τους ήταν πέρυσι στο σχολείο μας"];
        function play() {
            if (cnt === 0) {
                document.getElementById('demo0').play();
            }
            if (cnt === 4) {
                document.getElementById('demo2').play();
                setTimeout("show()", 37000);
            }
        }
        function start() {
            document.getElementById("go").style.display = "none";
            document.getElementById("myDiv").style.display = "block";
            setTimeout("show()", 15000);//31500
        }

        function hide() {
            document.getElementById("myDiv").style.display = "none";
        }

        function show() {

            if (cnt === 4) {
                document.getElementById("answersSevenDown").style.display = "block";
                document.getElementById("first").style.display = "none";
                document.getElementById("second").style.display = "none";
                document.getElementById("third").style.display = "none";

                document.getElementById("_1").innerHTML = answers[i];
                document.getElementById("_2").innerHTML = answers[i + 1];
                document.getElementById("_3").innerHTML = answers[i + 2];
                i = i + 3;
            }
            else {
                document.getElementById("answersSevenUp").style.display = "block";
            }
            document.getElementById("OKbuttonSeven").style.display = "block";

        }

        function check() {
            cnt++;
            value = "";
            res = "wrong";

            if (cnt > questions.length - 1) {
                document.getElementById("form").style.display = "block";
                document.getElementById("answersSevenUp").style.display = "none";
                document.getElementById("answersSevenDown").style.display = "none";
                document.getElementById("OKbuttonSeven").style.display = "none";
            }
            var radios = document.getElementsByName('A');
            for (var i = 0, length = radios.length; i < length; i++) {
                if (radios[i].checked) {
                    if ((image[cnt - 1] === "Farm" || image[cnt - 1] === "question7" || image[cnt - 1] === "question8") && radios[i].value === "A") {
                        res = "correct";
                    }
                    else if ((image[cnt - 1] === "Pony" || image[cnt - 1] === "question5") && radios[i].value === "B") {
                        res = "correct";
                    }
                    else if ((image[cnt - 1] === "Family" || image[cnt - 1] === "Name" || image[cnt - 1] === "question6" || image[cnt - 1] === "question9") && radios[i].value === "C") {
                        res = "correct";
                    }
                    else {
                        res = "wrong";
                    }
                    value = radios[i].value;
                }
                radios[i].checked = false;
            }
            if (cnt === 4) {
                change();
                document.getElementById("answersSevenUp").style.display = "none";
                document.getElementById("answersSevenDown").style.display = "none";
                document.getElementById("OKbuttonSeven").style.display = "none";
            }
            getDateTime();

            next();
        }

        function next() {


            if (i > 0) {
                document.getElementById("questionSevenDown").innerHTML = questions[cnt];
                document.getElementById("_1").innerHTML = answers[i];
                document.getElementById("_2").innerHTML = answers[i + 1];
                document.getElementById("_3").innerHTML = answers[i + 2];
                i = i + 3;
            }
            else {
                document.getElementById("questionSevenUp").innerHTML = questions[cnt];
                document.getElementById("first").src = images[cnt][0];
                document.getElementById("second").src = images[cnt][1];
                document.getElementById("third").src = images[cnt][2];

            }
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
            temp = "question:" + cnt + " " + dateTime + " the answer was:" + res + " for: " + images[cnt - 1] + " value: " + value + "\n";
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
