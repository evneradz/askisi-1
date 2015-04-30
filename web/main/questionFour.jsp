<%-- 
    Document   : questionThree
    Created on : Feb 12, 2015, 7:16:38 PM
    Author     : Evaggelia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="question.css">
        <link rel="shortcut icon" href="files/askisi.ico" />
        <title>Ερώτηση 4</title>
    </head>
    <% String path = "files/questions/four/level1/";%>
    <%String url = "http://askisi.azurewebsites.net/askisi";%>
    <body>
        <input id="go" type = "button"  value = "Ξεκινάμε!" onclick ="start();">


        <div id="question" style="display: none">
            <div id="myDiv"><img id = "myImageMotif" alt="full" style="width:400px;height:250px" src=<%=path + "10a/A10_big.png"%>></div>
        </div>
        <br><br>
        <div id="answers" style="display: none">
            <input type="radio" id ="A" name="A" value="A" >A
            <img id = "ImageOne" src=<%=path + "10a/A10_1.png"%> alt="a" style="width:104px;height:58px">
            <input type="radio" id ="B" name="A" value="B" >Β
            <img id = "ImageTwo" src=<%=path + "10a/A10_2.png"%> alt="b" style="width:104px;height:58px">
            <input type="radio" id ="C" name="A" value="C" >Γ
            <img id = "ImageThree" src=<%=path + "10a/A10_3.png"%> alt="c" style="width:104px;height:58px">
            <input type="radio" id ="D" name="A" value="D" >Δ
            <img id = "ImageFour" src=<%=path + "10a/A10_4.png"%> alt="d" style="width:104px;height:58px">
            <input type="radio" id ="E" name="A" value="E" >E
            <img id = "ImageFive" src=<%=path + "10a/A10_5.png"%> alt="e" style="width:104px;height:58px">
            <input type="radio" id ="F" name="A" value="F" >Z
            <img id = "ImageSix" src=<%=path + "10a/A10_6.png"%> alt="f" style="width:104px;height:58px">
            <br><br>
            <input type="button" id="OKbutton" value="OK" onclick="check();
                   ">
        </div>
        <script type = "text/javascript">
            var cnt = 0;
            var res = "";
            var details = "";
            var value = "";
            var path = "files/questions/four/level1/";
            var images10a = [path + "10a/A10_big.png", path + "10a/A10_1.png",
                path + "10a/A10_2.png", path + "10a/A10_3.png",
                path + "10a/A10_4.png", path + "10a/A10_5.png",
                path + "10a/A10_6.png"];
            var images11a = [path + "11a/A11_big.png", path + "11a/A11_1.png",
                path + "11a/A11_2.png", path + "11a/A11_3.png",
                path + "11a/A11_4.png", path + "11a/A11_5.png",
                path + "11a/A11_6.png"];
            var images1a = [path + "1a/A1_big.png", path + "1a/A1_1.png",
                path + "1a/A1_2.png", path + "1a/A1_3.png",
                path + "1a/A1_4.png", path + "1a/A1_5.png",
                path + "1a/A1_6.png"];
            var images12b = [path + "12b/B12_big.png", path + "12b/B12_1.png",
                path + "12b/B12_2.png", path + "12b/B12_3.png",
                path + "12b/B12_4.png", path + "12b/B12_5.png",
                path + "12b/B12_6.png"];
            var images5a = [path + "5a/A5_big.png", path + "5a/A5_1.png",
                path + "5a/A5_2.png", path + "5a/A5_3.png",
                path + "5a/A5_4.png", path + "5a/A5_5.png",
                path + "5a/A5_6.png"];
            var images5ab = [path + "5ab/AB5_big.png", path + "5ab/AB5_1.png",
                path + "5ab/AB5_2.png", path + "5ab/AB5_3.png",
                path + "5ab/AB5_4.png", path + "5ab/AB5_5.png",
                path + "5ab/AB5_6.png"];
            var images6ab = [path + "6ab/AB6_big.png", path + "6ab/AB6_1.png",
                path + "6ab/AB6_2.png", path + "6ab/AB6_3.png",
                path + "6ab/AB6_4.png", path + "6ab/AB6_5.png",
                path + "6ab/AB6_6.png"];
            var images7a = [path + "7a/A7_big.png", path + "7a/A7_1.png",
                path + "7a/A7_2.png", path + "7a/A7_3.png",
                path + "7a/A7_4.png", path + "7a/A7_5.png",
                path + "7a/A7_6.png"];
            var images8a = [path + "8a/A8_big.png", path + "8a/A8_1.png",
                path + "8a/A8_2.png", path + "8a/A8_3.png",
                path + "8a/A8_4.png", path + "8a/A8_5.png",
                path + "8a/A8_6.png"];
            var images8b = [path + "8b/B8_big.png", path + "8b/B8_1.png",
                path + "8b/B8_2.png", path + "8b/B8_3.png",
                path + "8b/B8_4.png", path + "8b/B8_5.png",
                path + "8b/B8_6.png"];
            var images9b = [path + "9b/B9_big.png", path + "9b/B9_1.png",
                path + "9b/B9_2.png", path + "9b/B9_3.png",
                path + "9b/B9_4.png", path + "9b/B9_5.png",
                path + "9b/B9_6.png"];
            var images = [images10a, images11a, images1a, images12b, images5a, images5ab, images6ab, images7a, images8a, images8b, images9b];
            var image = ["10a", "11a", "1a", "12b", "5a", "5ab", "6ab", "7a", "8a", "8b", "9b"];


            function start() {
                document.getElementById("go").style.display = "none";
                document.getElementById("question").style.display = "block";
                document.getElementById("answers").style.display = "block";
            }
            function check() {

                if (cnt > image.length - 2) {
                    document.getElementById("question").style.display = "none";
                    document.getElementById("answers").style.display = "none";
                    document.getElementById("form").style.display = "block";
                }
                cnt++;
                value = "";
                res = "wrong";
                var radios = document.getElementsByName('A');
                for (var i = 0, length = radios.length; i < length; i++) {
                    if (radios[i].checked) {
                        if ((image[cnt - 1] === "1a" || image[cnt - 1] === "11a" || image[cnt - 1] === "9b") && radios[i].value === "D") {
                            res = "correct";
                        }
                        else if (image[cnt - 1] === "6ab" && radios[i].value === "A") {
                            res = "correct";
                        }
                        else if ((image[cnt - 1] === "5ab" || image[cnt - 1] === "8a") && radios[i].value === "B") {
                            res = "correct";
                        }
                        else if (image[cnt - 1] === "10a" && radios[i].value === "C") {
                            res = "correct";
                        }
                        else if ((image[cnt - 1] === "5a" || image[cnt - 1] === "7a" || image[cnt - 1] === "8b") && radios[i].value === "F") {
                            res = "correct";
                        }
                        else if (image[cnt - 1] === "12b" && radios[i].value === "E") {
                            res = "correct";
                        }
                        else {
                            res = "wrong";

                        }
                        value = radios[i].value;
                    }

                    radios[i].checked = false;
                }
                getDateTime();
                next();
            }

            function next() {
                document.getElementById("myImageMotif").src = images[cnt][0];
                document.getElementById("ImageOne").src = images[cnt][1];
                document.getElementById("ImageTwo").src = images[cnt][2];
                document.getElementById("ImageThree").src = images[cnt][3];
                document.getElementById("ImageFour").src = images[cnt][4];
                document.getElementById("ImageFive").src = images[cnt][5];
                document.getElementById("ImageSix").src = images[cnt][6];
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
                temp = "question:" + cnt + " " + dateTime + " the answer was:" + res + " for: " + image[cnt - 1] + " value: " + value + "\n";
                details = details + temp;
                return dateTime;
            }

            function getResults() {
                document.getElementById("outputText").value = "4\n" + details;
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
