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

        <input id="go" type = "button"  value = "Ξεκινάμε!" onclick ="start();">
        <div id="textOne" style="display:none">Ο Γιάννης είναι ένα αγόρι που του αρέσουν τα μήλα – ιδίως αν είναι κλεμμένα. 
            Μια σκοτεινή νύχτα μπήκε σε ένα περιβόλι, <br>έκοψε ένα μήλο και το δάγκωσε λαίμαργα. Την επόμενη μέρα τον 
            πονούσε η κοιλιά του γιατί το μήλο ήταν σάπιο.</div>



        <div id="textOne" style="display:none">Ο Έκτορας ήταν ένας ωραίος σκύλος. Όποιος τον έβλεπε να καμαρώνει 
            στο μπαλκόνι έσκαγε από τη ζήλια του. Ήταν λεπτός με <br>γαλάζια μάτια, ξανθός, γυαλιστερός με μπλε λουράκι.
            Ακίνητος πίσω από τα κάγκελα του μπαλκονιού για ώρες καθόταν σαν <br>άγαλμα. Ζούσε με το αφεντικό του 
            τον κ. Γαβριήλ που ήταν διαιτολόγος. Κάθε πρωί ο Έκτορας και ο κ. Γαβριήλ τρώγανε το ίδιο <br>πρωινό.
            Ένα αυγό, γάλα, πορτοκαλάδα και ψωμί με μαρμελάδα χωρίς βούτυρο. Ο Έκτορας τηγανητό, 
            ο κ. Γαβριήλ βραστό, ο <br>Έκτορας γάλα, ο κ. Γαβριήλ πορτοκαλάδα. Ψωμί με μαρμελάδα και οι δύο. </div>

        <input id="start" type = "button" style="display:none" value = "Ερωτήσεις" onclick ="disappear();">

        <div id="questionSix" style="display:none"> <br>Διάλεξε το σωστό!<br><br>
            <input type="radio" name="A" value="A" id="_1" class="btns"><img height="100" width="100" src=<%=path + "apple.png"%> id="first">
            <input type="radio" name="A" value="B" id="_2" class="btns"><img height="100" width="100" src=<%=path + "orange.png"%> id="second">
            <input type="radio" name="A" value="C" id="_3" class="btns"><img height="100" width="100" src=<%=path + "pear.png"%> id="third">
            <input type="radio" name="A" value="D" id="_4" class="btns" style="display:none"><img height="100" width="100" src=<%=path + "white_dog.png"%> id="fourth" style="display:none">
        </div>
        <br>
        <br>
        <input type="submit" id="OKbuttonSix" style="display:none" value="OK" onclick="check();">
    </body>
    <script type = "text/javascript">
        var cnt = 0;
        var path = "files/questions/six/";
        var res = "";
        var value = "";
        var details = "";
        var image1 = [path + "black_dog.png", path + "blonde_dog.png",
            path + "grey_dog.png", path + "white_dog.png"];
        var image2 = [path + "Gabriel_a.png", path + "Gabriel_b.png",
            path + "Gabriel_c.png", path + "Gabriel_d.png"];
        var image3 = [path + "Hector_breakfast_a.png", path + "Hector_breakfast_b.png",
            path + "Hector_breakfast_c.png", path + "Hector_breakfast_d.png"];
        var image4 = [path + "Gabriel_breakfast_a.png", path + "Gabriel_breakfast_b.png",
            path + "Gabriel_breakfast_c.png", path + "Gabriel_breakfast_d.png"];
        var image5 = [path + "team_of_three.png", path + "team_of_five.png",
            path + "team_of_six.png"];
        var image6 = [path + "football_team.png", path + "basketball_team.png",
            path + "volleyball_team.png"];
        var image7 = [path + "stone_branch.png", path + "tree_stone.png",
            path + "tree_stone_branch.png"];
        var image8 = [path + "normal_boy.png", path + "strong_boy.png",
            path + "tall_boy.png", path];
        var image9 = [path + "madam_screaming.png", path + "ball_explose.png",
            path + "egg's_nest.png"];
        var images = [image1, image2, image3, image4, image5, image6, image7, image8, image9];
        var image = ["Hector", "Gabriel", "HBreakfast", "GBreakfast", "Team_of", "Court", "Idea", "Boy", "Madame_ball_eggs"];

        function change() {
            document.getElementById("textOne").style.display = "block";
            document.getElementById("start").style.display = "block";
            document.getElementById("questionSix").style.display = "none";
            document.getElementById("OKbuttonSix").style.display = "none";
            document.getElementById("textOne").innerHTML = "Μια καλοκαιρινή μέρα μια παρέα από 10 παιδιά έπαιζαν ποδόσφαιρο στο πάρκο της γειτονιάς.Ο πιο άτσαλος όμως έκανε ένα" + "<br />"
                    + " σουτ κι η μπάλα καρφώθηκε στα κλαδιά ενός ψηλού δέντρου.Τα παιδιά άρχισαν να λένε διάφορους τρόπους για να κατεβάσουν" + "<br />"
                    + "την μπάλα.Άλλος είπε να σκαρφαλώσουν στο δέντρο και άλλος είπε να χρησιμοποιήσουν ένα μακρύ κλαδί.Σαν πιο γρήγορη λύση " + "<br />"
                    + "τους φάνηκε να πετάξουν μια πέτρα.Ο πιο δυνατός της παρέας την πέταξε κατ’ ευθείαν πάνω της.Τα ‘χασαν τα παιδιά όταν είδαν " + "<br />"
                    + "τα αβγουλάκια να πέφτουν κάτω.";
        }
        function check() {
            cnt++;
            value = "";
            res = "wrong";
            if (cnt > image.length - 1) {
                document.getElementById("form").style.display = "block";
                document.getElementById("textOne").style.display = "none";
                document.getElementById("questionSix").style.display = "none";
                document.getElementById("OKbuttonSix").style.display = "none";
            }
            var radios = document.getElementsByName('A');
            for (var i = 0, length = radios.length; i < length; i++) {
                if (radios[i].checked) {
                    if ((image[cnt - 1] === "HBreakfast" || image[cnt - 1] === "GBreakfast" || image[cnt - 1] === "Court") && radios[i].value === "A") {
                        res = "correct";
                    }
                    else if ((image[cnt - 1] === "Hector" || image[cnt - 1] === "Team_of" || image[cnt - 1] === "Boy") && radios[i].value === "B") {
                        res = "correct";
                    }
                    else if ((image[cnt - 1] === "Gabriel" || image[cnt - 1] === "Idea" || image[cnt - 1] === "Madame_ball_eggs") && radios[i].value === "C") {
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
                document.getElementById("fourth").style.display = "none";
                document.getElementById("_4").style.display = "none";
            }
            getDateTime();
            next();
        }

        function next() {
            document.getElementById("first").src = images[cnt][0];
            document.getElementById("second").src = images[cnt][1];
            document.getElementById("third").src = images[cnt][2];
            document.getElementById("fourth").src = images[cnt][3];
        }

        function hide() {
            document.getElementById("myDiv").style.display = "none";
            //setTimeout("next(x)", 1500);  // 2.5 seconds
        }

        function disappear() {
            document.getElementById("textOne").style.display = "none";
            document.getElementById("start").style.display = "none";
            document.getElementById("questionSix").style.display = "block";
            document.getElementById("OKbuttonSix").style.display = "block";
        }


        function start() {
            document.getElementById("go").style.display = "none";
            document.getElementById("textOne").style.display = "block";
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
            temp = "question:" + cnt + " " + dateTime + " the answer was:" + res + " for: " + images[cnt - 1] + " value: " + value + "\n";
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
