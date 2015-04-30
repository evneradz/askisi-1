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
    <% String path = "files/questions/four/level2/";%>
    <%String url = "http://askisi.azurewebsites.net/askisi";%>
    <body>
        <input id="go" type = "button"  value = "Ξεκινάμε!" onclick ="start();">


        <div id="question" style="display: none">
            <div id="myDiv"><img id = "myImageMotif" alt="full" style="width:400px;height:250px" src=<%=path + "10b/B10_big.png"%>></div>
        </div>
        <br><br>
        <div id="answers" style="display: none">
            <input type="radio" id ="A" name="A" value="A" >A
            <img id = "ImageOne" src=<%=path + "10b/B10_1.png"%> alt="a" style="width:104px;height:65px">
            <input type="radio" id ="B" name="A" value="B" >Β
            <img id = "ImageTwo" src=<%=path + "10b/B10_2.png"%> alt="b" style="width:104px;height:65px">
            <input type="radio" id ="C" name="A" value="C" >Γ
            <img id = "ImageThree" src=<%=path + "10b/B10_3.png"%> alt="c" style="width:104px;height:65px">
            <input type="radio" id ="D" name="A" value="D" >Δ
            <img id = "ImageFour" src=<%=path + "10b/B10_4.png"%> alt="d" style="width:104px;height:65px">
            <input type="radio" id ="E" name="A" value="E" >E
            <img id = "ImageFive" src=<%=path + "10b/B10_5.png"%> alt="e" style="width:104px;height:65px">
            <input type="radio" id ="F" name="A" value="F" >Z
            <img id = "ImageSix" src=<%=path + "10b/B10_6.png"%> alt="f" style="width:104px;height:65px">
            <br><br>
            <input type="button" id="OKbutton" value="OK" onclick="check();
                   ">
        </div>
        <script type = "text/javascript">
            var cnt = 0;
            var res = "";
            var details = "";
            var value = "";
            var path = "files/questions/four/level2/";
            var images10b = [path + "10b/B10_big.png", path + "10b/B10_1.png",
                path + "10b/B10_2.png", path + "10b/B10_3.png",
                path + "10b/B10_4.png", path + "10b/B10_5.png",
                path + "10b/B10_6.png"];
            var images11c = [path + "11c/C11_big.png", path + "11c/C11_1.png",
                path + "11c/C11_2.png", path + "11c/C11_3.png",
                path + "11c/C11_4.png", path + "11c/C11_5.png",
                path + "11c/C11_6.png"];
            var images1c = [path + "1c/C1_big.png", path + "1c/C1_1.png",
                path + "1c/C1_2.png", path + "1c/C1_3.png",
                path + "1c/C1_4.png", path + "1c/C1_5.png",
                path + "1c/C1_6.png"];
            var images2c = [path + "2c/C2_big.png", path + "2c/C2_1.png",
                path + "2c/C2_2.png", path + "2c/C2_3.png",
                path + "2c/C2_4.png", path + "2c/C2_5.png",
                path + "2c/C2_6.png"];
            var images2d = [path + "2d/D2_big.png", path + "2d/D2_1.png",
                path + "2d/D2_2.png", path + "2d/D2_3.png",
                path + "2d/D2_4.png", path + "2d/D2_5.png",
                path + "2d/D2_6.png"];
            var images3c = [path + "3c/C3_big.png", path + "3c/C3_1.png",
                path + "3c/C3_2.png", path + "3c/C3_3.png",
                path + "3c/C3_4.png", path + "3c/C3_5.png",
                path + "3c/C3_6.png"];
            var images3d = [path + "3d/D3_big.png", path + "3d/D3_1.png",
                path + "3d/D3_2.png", path + "3d/D3_3.png",
                path + "3d/D3_4.png", path + "3d/D3_5.png",
                path + "3d/D3_6.png"];
            var images4c = [path + "4c/C4_big.png", path + "4c/C4_1.png",
                path + "4c/C4_2.png", path + "4c/C4_3.png",
                path + "4c/C4_4.png", path + "4c/C4_5.png",
                path + "4c/C4_6.png"];
            var images6c = [path + "6c/C6_big.png", path + "6c/C6_1.png",
                path + "6c/C6_2.png", path + "6c/C6_3.png",
                path + "6c/C6_4.png", path + "6c/C6_5.png",
                path + "6c/C6_6.png"];
            var images7c = [path + "7c/C7_big.png", path + "7c/C7_1.png",
                path + "7c/C7_2.png", path + "7c/C7_3.png",
                path + "7c/C7_4.png", path + "7c/C7_5.png",
                path + "7c/C7_6.png"];
            var images = [images10b, images11c, images1c, images2c, images2d, images3c, images3d, images4c, images6c, images7c];
            var image = ["10b", "11c", "1c", "2c", "2d", "3c", "3d", "4c", "6c", "7c"];
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
                        if ((image[cnt - 1] === "10b" || image[cnt - 1] === "3c" || image[cnt - 1] === "3d" || image[cnt - 1] === "11c") && radios[i].value === "C") {
                            res = "correct";
                        }
                        else if (image[cnt - 1] === "6c" && radios[i].value === "A") {
                            res = "correct";
                        }
                        else if (image[cnt - 1] === "2c" && radios[i].value === "B") {
                            res = "correct";
                        }
                        else if (image[cnt - 1] === "2d" && radios[i].value === "D") {
                            res = "correct";
                        }
                        else if (image[cnt - 1] === "7c" && radios[i].value === "E") {
                            res = "correct";
                        }
                        else if ((image[cnt - 1] === "1c" || image[cnt - 1] === "4c") && radios[i].value === "F") {
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
