<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file = "config.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="assets/images/favicon.ico" rel="shortcut icon"/>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">
    <link rel="stylesheet" type="text/css" href="assets/css/cart.css">
    <link rel="stylesheet" type="text/css" href="assets/css/meats.css">
    <script src="assets/js/style.js"></script>
    <script src="assets/js/login.js"></script>
    <script src="assets/js/cart.js"></script>


    <title>Search | GOOD to EAT</title>
</head>

<body>
    <div id="upprow"></div>
    <section>
        <%@ include file="header2.jsp"%>
    </section>


    <main class="meats">
        <div class="uprow">
            <a href="#upprow">
                <img src="assets/images/up.png">
            </a>
        </div>

        <section class="logo">
            <div class="logoname">
                <h1>GOOD to EAT</h1>
            </div>

        </section>
        <section>
            <div class="meatstitle">
                <p>-  SEARCH FOR SOMETHING  -</p>
            </div>
        </section>
        <div class="ssss"></div>
        <!-- 日本頂級A5和牛 -->
        <section class="meatstop">
            
                <div class="form-feedback">
                    <form action="searchtoproduct.jsp" action="POST">
                        <input type="text" id="fname" name="search" class="tpyetext" placeholder="Searching">
                        
                        <div class="feedbackform">
                            <input type="submit" class="feedback" value="Submit">
                            <div class="feedbackspan">
                            </div>
                            <input type="reset" class="feedback" value="Reset">
                        </div>
                    </form>
                </div>
                
            
            <div class="sssss"></div>
        </section>



    </main>

    <%@ include file="cart.jsp"%>
    <footer>
        Copyright<sup>©</sup> 2022 by GOOD to EAT
    </footer>
</body>

</html>

<!--商城增減按鈕-->
<script>
    var add1 = document.getElementsByClassName("add2");
    //加
    for (var i = 0; i < add1.length; i++) {
        //標籤
        add1[i].index = i;
        //點擊+1
        add1[i].onclick = function () {

            var flag = this.index;
            //當前數量
            var q = document.getElementsByClassName("num2")[flag];


            var newvalue = parseInt(q.value) + 1;

            q.setAttribute("value", newvalue);

            changeSum(flag, newvalue);

        }
    }
    var minus1 = document.getElementsByClassName("minus2");
    //減
    for (var j = 0; j < minus1.length; j++) {
        //標籤
        minus1[j].index = j;
        //點擊+1
        minus1[j].onclick = function () {

            var flag = this.index;
            //當前數量
            var q = document.getElementsByClassName("num2")[flag];


            //1不能再減
            if (parseInt(q.value) == 1) {
                q.setAttribute("value", q.value);

            } else {


                var newvalue = parseInt(q.value) - 1;

                q.setAttribute("value", newvalue);


            }

        }
    }
</script>