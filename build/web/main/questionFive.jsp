<%-- 
    Document   : fifthQuestion
    Created on : Mar 4, 2015, 9:29:06 PM
    Author     : Evaggelia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="question.css">
        <link rel="shortcut icon" href="files/askisi.ico" />
        <title>Ερώτηση 5</title>
    </head>
    <% String path = "files/questions/five/";%>
    <%String url = "http://askisi.azurewebsites.net/askisi";%>
    <body>
        <input id="go" type = "button"  value = "Ξεκινάμε!" onclick = "hidebutton();
                show();"><br><br>

        <div id = "myDiv"><img id = "myImageTree" style="display:none" height="470" width="650" src=<%=path + "tree.png"%>></div><br>

        <script type = "text/javascript">
            var res = "";
            var x = -1;
            var details = "";
            var wrong = 0;
            var answer = 0;
            var path = "files/questions/five/";
            var images = [path + "3a.png", path + "3b.png",
                path + "4a.png", path + "4b.png",
                path + "5a.png", path + "5b.png",
                path + "6a.png", path + "6b.png",
                path + "7a.png", path + "7b.png",
                path + "8a.png", path + "8b.png",
                path + "9a.png", path + "9b.png"];

            var results = ["693", "249", "5286", "3647", "17392", "47815", "064107", "341625", "3752984", "6702518",
                "16432587", "09327164", "948217035", "720941853"];

            function show() {
                document.getElementById("next").style.display = "block";
            }

            function next(x) {
                document.getElementById("keypad").style.display = "none";
                document.getElementById("next").style.display = "none";
                check(x - 1);
                if (x < 4) { //3,4
                    document.getElementById("myImageTree").src = images[x];
                    document.getElementById("myDiv").style.display = "block";
                    setTimeout("hide()", 3000);
                }
                else if (x >= 4 && x < 10) { //5,6,7
                    document.getElementById("myImageTree").src = images[x];
                    document.getElementById("myDiv").style.display = "block";
                    setTimeout("hide()", 5500);
                }
                else if (x >= 10 && x < 14) { //8,9
                    document.getElementById("myImageTree").src = images[x];
                    document.getElementById("myDiv").style.display = "block";
                    setTimeout("hide()", 7000);
                }
                else {

                    document.getElementById("nextTest").style.display = "block";
                }
            }

            function start() {
                if (wrong === 2) {
                    x = 14;
                }
                x++;
                next(x);
            }
            function hide() {
                document.getElementById("calcfield").value = "";
                document.getElementById("keypad").style.display = "block";
                document.getElementById("next").style.display = "block";
                document.getElementById("myImageTree").src = path + "tree.png";
            }

            function hidebutton() {
                document.getElementById("go").style.visibility = "hidden";
                document.getElementById("myImageTree").style.display = "block";
            }
            function hideotherbutton() {
                document.getElementById("next").style.display = "none";
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
                temp = "question:" + x + " " + dateTime + " the answer was:" + res + " It should be:" + results[x - 1] + " it was:" + answer + "\n";
                details = details + temp;
                return dateTime;
            }

            onload = function () {
                attachHandlers();
            };

            function attachHandlers() {
                var the_nums = document.getElementsByName("number");
                for (var i = 0; i < the_nums.length; i++) {
                    the_nums[i].onclick = inputNumbers;
                }
            }

            function inputNumbers() {
                var the_value = this.value;
                document.getElementById("calcfield").value += the_value;
                document.getElementById('calcfield').focus();
                return true;
            }

            function getValue() {
                document.getElementById('calcfield').focus();
                return false;
            }

            function check(x) {
                answer = document.getElementById("calcfield").value;
                if (answer === results[x]) {
                    res = "correct";
                    //alert("correct");
                }
                else {
                    wrong++;
                    res = "wrong";
                }

                getDateTime();
                answer = 0;
            }

            function getResults() {
                document.getElementById("outputText").value = "5\n" + details;
                document.form1.hiddenValue.value = details;
                document.form1.submit();
            }
        </script>
        <form name="CalcForm" onsubmit="getValue()" AUTOCOMPLETE="OFF">

            <div id="keypad" style="display:none" style="width:200px;">
                <div>
                    <input type="text" name="calcvalues" id="calcfield" value="" size="9">
                </div>
                <div id="row1">
                    <input type="button" name="number" value="1" id="_1" class="btns"> 
                    <input type="button" name="number" value="2" id="_2" class="btns">
                    <input type="button" name="number" value="3" id="_3" class="btns">
                </div>
                <div id="row2">
                    <input type="button" name="number" value="4" id="_4" class="btns">
                    <input type="button" name="number" value="5" id="_5" class="btns">
                    <input type="button" name="number" value="6" id="_6" class="btns">
                </div>
                <div id="row3">
                    <input type="button" name="number" value="7" id="_7" class="btns">
                    <input type="button" name="number" value="8" id="_8" class="btns">
                    <input type="button" name="number" value="9" id="_9" class="btns">
                </div>
                <div id="row4">
                    <input type="button" name="number" value="0" id="_0" class="btns">

                </div>
            </div>

        </form>
        <button id="next" style="display:none" type="button" onclick="start();
                hidetherbutton();">Επόμενο
        </button>
        <br>
        <div id="form" >
            <form action=<%=url + "/ResultServlet"%>  method="post">
                <textarea id="outputText" name = "hiddenValue" rows=1 cols=10 style="display:none"></textarea>
                <input type = "submit" style="display:none" id="nextTest" value = "Συνέχεια" onclick="

                        getResults();">
            </form>
        </div>
    </body>
</html>
