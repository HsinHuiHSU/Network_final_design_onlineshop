<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="assets/images/favicon.ico" rel="shortcut icon"/>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/checkorder.css">
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">
    <link rel="stylesheet" type="text/css" href="assets/css/cart.css">
    <script src="assets/js/style.js"></script>
    <script src="assets/js/login.js"></script>
    <script src="assets/js/cart.js"></script>

    <title>Check Order | GOOD to EAT</title>
</head>

<body>
    <section>
        <%@ include file="header.jsp"%>
    </section>

    <section class="check">
        <section class="check-left">
            <div id="myOrder">
                <label>我的購物車</label>
            </div>
            <hr>
      
            <!--商品1-->

            
                    <%
                    if(session.getAttribute("id")==null)
                    {
                        out.print("您尚未登入");
                    }
                    else{
                      Class.forName("com.mysql.jdbc.Driver");
                      String url4="jdbc:mysql://localhost/";
                      Connection con4=DriverManager.getConnection(url4,"root","1234");
                      String sql4="USE final";
                      request.setCharacterEncoding("utf-8");
                      con4.createStatement().execute(sql4);
                      String User_id = (String)session.getAttribute("id");
                      int tot = 0;
                      sql4="select * from `cart`, `information` where user_id='" + User_id + "' AND cart.ID = information.ID";
                      ResultSet rs4=con4.createStatement().executeQuery(sql4);
                      
                      while(rs4.next()){
          
                %>

                    <div class="check-pdt">
                <div class="check-inside">
                    <!--圖片-->
                    <div class="pdt-name">
                        <div class="pdt-img">
                            <img src="<%=rs4.getString("imgPath")%>"  width="150px">
                        </div>
                        <div>
                            <!--品名-->
                            <div class="pdt-title">
                                <label>
                                    <%=rs4.getString("Name")%>
                                </label>
                            </div>
                            <!--單個價錢-->
                            <div>
                                <p>
                                    NT<%=rs4.getInt("Money")%>
                                </p>
                            </div>
                        </div>
                    </div>
                  
                 
  

                    <!--計數器-->
                    <div class="quantity">
                        <div class="qty">

                            <input type="button" class="minus" field="qtynum" value="-" />
                            <input type="text" class="num" name="num" value="<%=rs4.getInt("quantity")%>" />
                            <input type="button" class="add" field="qtynum" value="+" />

                        </div>
                    </div>
  
                    <!--小計-->

                    <div>
                        <p>
                            NT$ <%=rs4.getInt("quantity")*rs4.getInt("Money")%>
                            <%
                                tot += rs4.getInt("quantity")*rs4.getInt("Money");
                            %>
                        </p>
                    </div>
                    <form action="cartdelete2.jsp" method="post">
                        <div class="cross">
                           <button class="delet" name="delete_id" value="<%=rs4.getString("ID")%>">x</button>
                           
                           
                          </div>
                    </form>
                </div>
            </div>
            <hr>
            
            <%}%>
            <!--商品4-->
            <!--商品5-->

        </section>
       
        <section class="check-right">
        
            <div id="check-detail">
                <label>訂單摘要</label>
            </div>
            <hr>
            <form action="addorderlist.jsp">
                
                <%String sql5="USE final";
                request.setCharacterEncoding("utf-8");
                con4.createStatement().execute(sql5);
                sql5="select * from final.totalprice ORDER BY totalprice_ID DESC limit 1";
                ResultSet rs5=con4.createStatement().executeQuery(sql5);
                while(rs5.next()){
                %>
            
                <div class="check-all-pay">
                    <div class="check-all">
                        <p>小計</p>
                        <p>NT$<%=tot %></p>
                    </div>
                    <div class="check-all">
                        <p>運費</p>
                        <p>免費</p>
                    </div>
                </div>
                <hr>
                <div class="check-all" id="total">
                    <div>
                        <p>總計</p>
                    </div>
                    <div>
                        NT$<%=tot%>
                    </div>
                </div>
                <div class="go-pay" id="go-pay" onclick="gopay()">
                    <div class="pay">
                        <input type="submit" value="結帳">
                    </div>

                </div>
                
                <!--
                    測試
                <div class="done" id="done">
                    <div class="done-block">
                        <div>
                            <h1>我們將會收到您的訂單</h1>
                        </div>
                        <div>
                            <h4>返回首頁查看更多商品</h4>
                        </div>
                        <div>
                            <input type="submit" value="大功告成">
                        </div>
                    </div>
                </div>
            -->
            </form>
        </section>
        <%}%>
        <%}%>
    </section>
</body>

    
                  

   