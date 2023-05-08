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


    <title>Pork | GOOD to EAT</title>
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
        <div class="search">
            <a href="search.jsp">
                <img src="assets/images/search.png">
            </a>
        </div>
        <section class="logo">
            <div class="logoname">
                <h1>GOOD to EAT</h1>
            </div>

        </section>
        <section>
            <div class="meatstitle">
                <p>-  SHOP WITH US  -</p>
            </div>
        </section>
        <section class="meatstop">
            <article  class="animalimg">
                <img src="assets/images/pig3.png">
            </article>
            <article>
                <div class="meatstitle">
                    <p>-  PORK  -</p>
                </div>
            </article>
            <article class="meatstitle1">
                <div class="productaa">
                    <div class="productimg">
 
 <%
                        sql="SELECT * FROM `information` WHERE `Category`='Pork'";
                        ResultSet rs3=con.createStatement().executeQuery(sql);

                            while(rs3.next()){
                            out.println("<div class='product0'>");
                            out.println("<form action='product.jsp'>");
                            out.println("<a href='product.jsp?pid="+rs3.getString(1)+"' class='productlink'>");
                            out.println("<div class='productblock'>");
                            out.println("<div class='hidden'>");
                            out.println("<input type='image' src='"+rs3.getString(8)+"' class='productimg1'>");
                            out.println("<div class='producttext2'>");
                            out.println("<div class='toup'>");
                            out.println("來去逛逛");
                            out.println("</div>");
                            out.println("</div>");
                            out.println("</div>");
                            out.println("<div class='producttext'>"+rs3.getString(2)+"<br><br>NT$"+rs3.getString(4)+"</div>");
                            out.println("<input type='hidden' name='pid' value='"+rs3.getString(1)+"'>");
                            out.println("</div>");
                            out.println("</a>");
                            out.println("</form>");
                            out.println("<div class='compute'>");
                            out.println("<div class='quantity2'>");
                            out.println("<div class='qty2'>");
                            out.println("<form action='cartcheck.jsp'>");
                            out.println("<input type='button' class='minus2' field='qtynum' value='-' />");
                            out.println("<input type='text' class='num2' name='num' value='1' />");
                            out.println("<input type='button' class='add2' field='qtynum' value='+' />");
                            out.println("<input type='submit' class='quant'  value='加入購物車'>");
                            out.println("<input type='hidden' name='cartid' value='"+rs3.getString(1)+"'>");
                            out.println("</form>");
                            out.println("</div>");
                            out.println("</div>");
                            out.println("</div>");
                            out.println("</div>");
                        }
                    %>

                    </div>
                </div>
            </article>
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