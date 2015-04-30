<%-- 
    Document   : questionOne
    Created on : Feb 9, 2015, 6:48:25 PM
    Author     : Evaggelia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="question.css">
        <link rel="shortcut icon" href="files/askisi.ico" />

        <title>Ερώτηση 6</title>
    </head>
    <% String path = "files/questions/six/";%>
    <%String url = "http://askisi.azurewebsites.net/askisi";%>
    <body>

        <input id="go" type = "button" value = "Ξεκινάμε!" onclick ="start();">
        <div id="text" style="display:none">Ο Γιάννης είναι ένα αγόρι που του αρέσουν τα μήλα – ιδίως αν είναι κλεμμένα. Μια 
            σκοτεινή νύχτα μπήκε σε ένα περιβόλι, έκοψε <br>κάτι που το νόμισε για μήλο και το δάγκωσε λαίμαργα. Αυτό, όμως, ήταν ένα 
            πολύ άγουρο αχλάδι, κι ένα δόντι του Γιάννη που <br>κουνιόταν απόμεινε μέσα στο φρούτο. Τώρα ο Γιάννης κλέβει μήλα μόνο 
            την ημέρα.</div>



        <div id="text" style="display:none">Ο κύριος Γιώργος πάει εκδρομή με τον Αθλητικό Όμιλο Λαμίας στον Παρνασσό. 
            Βάζει μέσα στη βαλίτσα του δύο φόρμες, δύο <br>ζευγάρια παπούτσια, κασκόλ, γάντια και σκουφί για το αξέχαστο διήμερο 
            στη φύση και την ξεγνοιασιά. Θα εξασκηθεί στη <br>χιονοδρομία, θα μάθει να προσανατολίζεται στο βουνό και θα χορτάσει 
            καθαρό αέρα. Η εκδρομή θα πραγματοποιηθεί από τις <br>δεκαπέντε έως τις δεκαεννέα Ιανουαρίου. Το λεωφορείο θα τους 
            πάρει το πρωί από την πλατεία Λαού, θα σταματήσουν στο <br>Μαντείο των Δελφών και χωρίς να το καταλάβουν θα φτάσουν 
            στο υπέροχο ξενοδοχείο που τους περιμένει. Υπεύθυνος της <br>εκδρομής είναι ο κύριος Παπαδόπουλος και όσοι επιθυμούν 
            να δηλώσουν συμμετοχή, έχουν στη διάθεσή τους διάστημα δύο <br>εβδομάδων. Λίγες ώρες μετά πετάχτηκε γιατί χτύπησε το 
            τηλέφωνο. Ο κύριος Γιώργος είχε αργήσει να πάει στη δουλειά του. </div>

        <input id="start" type = "button" style="display:none" value = "Ερωτήσεις" onclick ="disappear();">

        <div id="questionSixB" style="display:none"><br><br>
            <div id="questionsix" style="display:none">Τι έκλεψε ο Γιάννης;</div><br>
            <input type="radio" name="A" value="A" id="_1" class="btns"><div id="questionOne">Ένα ροδάκινο</div>
            <input type="radio" name="A" value="B" id="_2" class="btns"><div id="questionTwo">Ένα μήλο</div>
            <input type="radio" name="A" value="C" id="_3" class="btns"><div id="questionThree">Ένα αχλάδι</div>
        </div>
        <br>
        <br>
        <input type="submit" id="OKbuttonSix" style="display:none" value="OK" onclick="check();">
    </body>
    <script type = "text/javascript">
        var cnt = 0;
        var res = "";
        var value = "";
        var details = "";
        var question1 = ["Πού θα πάει εκδρομή ο κύριος Γιώργος;", "Στον Παρνασσό", "Στο Πήλιο", "Στον Πλαταμώνα"];
        var question2 = ["Ποιος διοργανώνει την εκδρομή;", "Αθλητικός Όμιλος Λαμίας", "Ο Αθλητικός Όμιλος Λειβαδιάς", "Ο Αθλητικός Όμιλος Λάρισας"];
        var question3 = ["Τι ρούχα έβαλε στη βαλίτσα ο κύριος Γιώργος;", "Δύο μπουφάν, δύο παντελόνια, πουλόβερ και γυαλιά",
            "Δύο μπουφάν, δύο ζευγάρια παπούτσια, παντελόνια και πουλόβερ", "Δύο φόρμες, δύο ζευγάρια παπούτσια, κασκόλ, γάντια και σκουφί"];
        var question4 = ["Θα εξασκηθεί:", "Στην ιππασία", "Στη χιονοδρομία", "Στο χιονοπόλεμο"];
        var question5 = ["Η εκδρομή θα γίνει:", "15 έως 19 Ιανουαρίου", "15 έως 19 Φεβρουαρίου", "10 έως 15 Δεκεμβρίου"];
        var question6 = ["Ο κύριος Παπαδόπουλος είναι:", "Φίλος του κυρίου Γιώργου", "Οδηγός του λεωφορείου", "Ο υπεύθυνος της εκδρομής "];
        var question7 = ["Τελικά ο κύριος Γιώργος πήγε εκδρομή;", "Ναι, γιατί μπορούσε", "Όχι, γιατί δεν μπορούσε", "Όχι, γιατί το ονειρεύτηκε"];
        var question8 = ["Ποιος Ανέβαζε την Παράσταση;", "Το τρίτο σχολείο Θηλέων", "Το Πέμπτο σχολείο Αρρένων", "Δεν αναφέρει το κείμενο "];
        var question9 = ["Ποια παράσταση θα έπαιζαν;", "Τον Οιδίποδα επί Κολωνώ", "Τον Οιδίποδα Τύραννο", "Την Αντιγόνη"];
        var question10 = ["Πού γίνονταν οι πρόβες;", "Μια κανονική σχολική αίθουσα", "Ένα κλειστό γήπεδο μπάσκετ", "Μια αίθουσα εκδηλώσεων με εξέδρα και πιάνο"];
        var question11 = ["Ποιο ρόλο έπαιζε η Μυρτώ;", "Τον Οιδίποδα", "Την Ιοκάστη", "Την Αντιγόνη"];
        var question12 = ["Ποιο ρόλο έπαιζε η Μαρία;", "Τον Οιδίποδα", "Την Ιοκάστη", "Την Αντιγόνη"];
        var question13 = ["Σε πόσες μέρες θα ανέβαινε η παράσταση;", "Σε τρεις μέρες", "Σε έξι μέρες", "Σε τέσσερεις μέρες"];
        var questions = [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12, question13];
        var question = ["question1", "question2", "question3", "question4", "question5", "question6", "question7", "question8", "question9", "question10", "question11", "question12", "question13"];


        function change() {
            document.getElementById("text").style.display = "block";
            document.getElementById("start").style.display = "block";
            document.getElementById("questionSixB").style.display = "none";
            document.getElementById("questionsix").style.display = "none";
            document.getElementById("OKbuttonSix").style.display = "none";
            document.getElementById("text").innerHTML = "Στο τέλος κάθε χρονιάς το τρίτο Σχολείο Θηλέων ανέβαζε μια θεατρική παράσταση σε ένα μεγάλο θέατρο της πόλης." + "<br />"
                    + "Οι μαθητές και οι καθηγητές έφτιαχναν τα σκηνικά και τα κουστούμια. Όλοι οι ρόλοι αντρικοί και γυναικείοι παίζονταν από κορίτσια. Οι πρόβες θα γίνονταν στην" + "<br />"
                    + "αίθουσα ρυθμικής που είχε το πιάνο και την εξέδρα. Φέτος θα ανέβαζαν τον Οιδίποδα Τύραννο του Σοφοκλή που σύμφωνα με τον Αριστοτέλη είναι ίσως η κορυφαία" + "<br />"
                    + "τραγωδία που έχει γραφτεί ποτέ. Για τα σκηνικά χρειάστηκαν κουρτίνες που είχαν ζωγραφισμένο δάσος και αρχαίες κολώνες, πράγμα εύκολο για τα κορίτσια. Τρεις" + "<br />"
                    + "ράφτρες έραβαν τα κουστούμια της παράστασης μέρα νύχτα. Τα πέδιλα τα παρήγγειλαν σε υποδηματοποιό. Μια κομμώτρια ερχόταν κάθε βράδυ και χτένιζε τα μαλλιά των" + "<br />"
                    + "ηθοποιών." + "<br />"
                    + "Σε λίγες μέρες ξεκινούσε η παράσταση. Η γενική δοκιμή θα ήταν σε τέσσερεις μέρες και σε έξι μέρες θα παρουσιάζονταν το έργο στο κοινό. Στη γενική δοκιμή" + "<br />"
                    + "η Μυρτώ που έπαιζε την Ιοκάστη φορούσε ένα ολόλευκο μεταξωτό χιτώνα κοντό πάνω από το γόνατο και κίτρινες κορδέλες να στολίζουν τα ξανθά κατσαρά της μαλλιά. Η" + "<br />"
                    + "Μαρία που έπαιζε τον Οιδίποδα είχα πιάσει τα μαλλιά της κοτσίδα ψηλά στο κεφάλι και φορούσε ένα πορτοκαλί χιτώνα μακρύ." + "<br />"
                    + "Όταν ήρθε τελικά η βραδιά της παράστασης όλα πήγαν τέλεια, παρόλο τον κόμπο στο στομάχι και το σφίξιμο των ηθοποιών από την αγωνία.";
        }
        function check() {
            cnt++;
            value = "";
            res = "wrong";
            if (cnt > question.length - 1) {
                document.getElementById("form").style.display = "block";
                document.getElementById("text").style.display = "none";
                document.getElementById("questionSixB").style.display = "none";
                document.getElementById("OKbuttonSix").style.display = "none";
            }
            var radios = document.getElementsByName('A');
            for (var i = 0, length = radios.length; i < length; i++) {
                if (radios[i].checked) {
                    if ((question[cnt - 1] === "question1" || question[cnt - 1] === "question2" || question[cnt - 1] === "question5" || question[cnt - 1] === "question8" || question[cnt - 1] === "question12") && radios[i].value === "A") {
                        res = "correct";
                    }
                    else if ((question[cnt - 1] === "question4" || question[cnt - 1] === "question9" || question[cnt - 1] === "question11" || question[cnt - 1] === "question13") && radios[i].value === "B") {
                        res = "correct";
                    }
                    else if ((question[cnt - 1] === "question3" || question[cnt - 1] === "question6" || question[cnt - 1] === "question7" || question[cnt - 1] === "question10") && radios[i].value === "C") {
                        res = "correct";
                    }
                    else {
                        res = "wrong";
                    }
                    value = radios[i].value;
                }
                radios[i].checked = false;
            }
            if (cnt === 7) {
                change();
            }
            getDateTime();
            next();
        }

        function next() {
            document.getElementById("questionsix").innerHTML = questions[cnt][0];
            document.getElementById("questionOne").innerHTML = questions[cnt][1];
            document.getElementById("questionTwo").innerHTML = questions[cnt][2];
            document.getElementById("questionThree").innerHTML = questions[cnt][3];
        }

        function hide() {
            document.getElementById("myDiv").style.display = "none";
        }


        function disappear() {
            document.getElementById("text").style.display = "none";
            document.getElementById("start").style.display = "none";
            document.getElementById("questionSixB").style.display = "block";
            document.getElementById("questionsix").style.display = "block";
            document.getElementById("OKbuttonSix").style.display = "block";
        }


        function start() {
            document.getElementById("go").style.display = "none";
            document.getElementById("text").style.display = "block";
            document.getElementById("start").style.display = "block";

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
            document.getElementById("outputText").value = "6\n" + details;
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
