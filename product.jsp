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
    <link rel="stylesheet" type="text/css" href="assets/css/product.css">
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">
    <link rel="stylesheet" type="text/css" href="assets/css/cart.css">
    <script src="assets/js/style.js"></script>
    <script src="assets/js/login.js"></script>
    <script src="assets/js/cart.js"></script>
    <script src="assets/js/findus.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="assets/js/jquery.star-rating-svg.js"></script>
    <script src="assets/js/jquery.star-rating-svg.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
    <title>Product | GOOD to EAT</title>
</head>

<body>
 <div id="upprow"></div>
     <section>
        <%@ include file="header2.jsp"%>
    </section>

    <main class="product-top">
        <div class="uprow">
            <a href="#upprow">
                <img src="assets/images/up.png">
            </a>
        </div>
        <section>
            <article class="productop">

            <%
                    String pid=request.getParameter("pid");
                    sql="SELECT * FROM `information` WHERE `ID`='"+pid+ "'";
                    ResultSet rs1=con.createStatement().executeQuery(sql);
                    rs1.next();

                %>

                 <div class="productop1">
                    <a href="index.jsp" class="productop1index">首頁</a> / <a href=""><%= rs1.getString(3) %></a> / <%= rs1.getString(2) %>
                </div>

            
                <div class="productop2">
                    <div class="productimg">
                        <img width="500px" src="<%= rs1.getString(8) %>">
                    </div>
                    <div class="productop3">
                        <div class="producttexttop">
                            <%= rs1.getString(2) %>
                        </div>
                        
                        <div class="producttextdown">
                            <div class="instock">庫存單位: <%= rs1.getString(5) %></div>
                            <div class="producttextprice">NT$<%= rs1.getString(4) %></div>
                            <br><p>數量:</p><br>
                            <div class="">
                                <div class="">
                                    <div class="qty2">
                                        <!-- form表單 -->
                                        <form action="cartcheck.jsp" accept-charset="utf-8" method="get">
                                            <input type="button" class="minus2" field="qtynum" value="-" />
                                            <input type="text" class="num2" name="num" value="1" />
                                            <input type="button" class="add2" field="qtynum" value="+" />
                                            <input type="submit" class="quant"  value="加入購物車">
                                            <input type="hidden" name="cartid" value='<%=rs1.getString(1)%>' >
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="productintroduce">
                                <%= rs1.getString(7) %>
                            </div>
                        </div>
                    </div>            
                </div>  
                <br><br><br>
                <div>
                    <div class="visit">
                        <p>- BOARD -</p>
                    </div>
                    <div class="form-feedback">
                        <form action="add.jsp" method="get">
                            
                            
                            <div class="contactpage1">
                                <div class="my-rating-6">
                                  
                                </div>
                            </div>
                            <textarea id="subject" name="content" placeholder="Type your message here..."
                                style="height:140px"></textarea>
                            <input type="hidden" name="pid" value="<%= pid %>">
                            <div class="feedbackform">
                                <input type="submit" class="feedback" id="feeed" value="Submit">
                                <input type="reset" class="feedback" value="Reset">
                            </div>
                        </form>
                    </div>
                </div>
                    <div class="contactbox">
                        <%
                            sql="SELECT * FROM `guestbook` WHERE `ID`='"+pid+"' ORDER BY `GBNO` DESC";
                            ResultSet rs=con.createStatement().executeQuery(sql);
    
                            while(rs.next()){
                                out.println("<div class='contactcotet'>");
                                out.println("<div class='contacthistory'>");
                                out.println("留言時間："+rs.getString(5));
                                out.println("<br>");
                                out.println("</div>");
                                out.println("<div class='contacthistory'>");
                                out.println("會員姓名："+rs.getString(2));
                                out.println("<br>");
                                out.println("</div>");
                                out.println("<div class='contacthistory'>");
                                out.println("留言內容："+rs.getString(4));
                                out.println("</div>");
                                out.println("<div class='contacthistory'>");
                                out.println("<hr class='historyhr'><br>");
                                out.println("</div>");
                                out.println("</div>");
                                
                            }
                        
                        
                    %>
                    </div>
                    
            </article>
            <%

                  
                    sql="SELECT * FROM `information` WHERE `ID`='"+pid+ "'";
                    ResultSet rs9=con.createStatement().executeQuery(sql);
                    rs9.next();

            %>

            <article class="productttt">

                <%
                    String img1=rs9.getString(10);
                    String img2=rs9.getString(11);
                    String img3=rs9.getString(12);
                    String img4=rs9.getString(13);
                    String img5=rs9.getString(14);
                    if(img1 != null){
                        out.println("<img src="+img1+"><br>");
                    }
                    if(img2 != null){
                        out.println("<img src="+img2+"><br>");
                    }
                    if(img3 != null){
                        out.println("<img src="+img3+"><br>");
                    }
                    if(img4 != null){
                        out.println("<img src="+img4+"><br>");
                    }
                    if(img5 != null){
                        out.println("<img src="+img5+"><br>");
                    }

                    con.close();
                
                %>
                
                
            </article>
            

        </section>


        

        




        
    </main>
    <%@ include file="cart.jsp"%>
    
    <footer>
        Copyright<sup>©</sup> 2022 by GOOD to EAT
    </footer>
    <script>
        var array = '';
    
        $(".my-rating-6").starRating({
          totalStars: 5,
          emptyColor: 'lightgray',
          hoverColor: 'salmon',
          activeColor: 'cornflowerblue',
          initialRating: 4,
          strokeWidth: 0,
          useGradient: false,
          minRating: 1,
          callback: function (currentRating, $el) {
            alert('rated ' + currentRating);
            console.log('DOM element ', $el);
            $('#test').attr("value", currentRating);
            array = currentRating;
          }
        });
    
        // var app = new Vue({
        //   el: '#test',
        //   data: {
        //     message: array
        //   }
        // })
      </script>
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