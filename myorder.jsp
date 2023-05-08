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
    <link rel="stylesheet" type="text/css" href="assets/css/member.css">
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">
    <link rel="stylesheet" type="text/css" href="assets/css/cart.css">
    <script src="assets/js/style.js"></script>
    <script src="assets/js/login.js"></script>
    <script src="assets/js/cart.js"></script>
    <title>My Order | GOOD to EAT</title>
</head>
<body>
 <section>
        <%@ include file="header.jsp"%>
    </section>
    <section class="member">
        <section class="member-left">
            <div class="photo">
                <img src="assets/images/photo.jpg" width="100px" height="100px">
            </div>
            <div class="member-buttons">
                <a href="myorder.jsp">
                    <div id="thisbut">
                        My Orders
                    </div>
                </a>
                <a href="member.jsp">
                    <div class="member-but">
                        My Account
                    </div>
                </a>
                <a href="update.jsp">
                    <div class="member-but">
                        Update Data
                    </div>
                </a>
            </div>
        </section>
        <section class="member-right" id="member-order">
            <div class="member-data">
                <h1>我的訂單</h1>
                <p>於下方查看您的購買紀錄。</p>
                <br>
                <hr><br>
                <form class="orderlist">

                    <%
                    if(session.getAttribute("id") != null){
                        String id = (String)session.getAttribute("id");
                        sql="SELECT * FROM `record` WHERE `id`='"+id+"' GROUP BY `date` ORDER BY `date`";
                        ResultSet rs=con.createStatement().executeQuery(sql);
        
                        while(rs.next()){
                            String Putdate=rs.getString(6);
                            sql="SELECT * FROM `record` WHERE `id`='"+id+"' AND `date`='"+Putdate+"'";
                            ResultSet rs1=con.createStatement().executeQuery(sql);
                            while(rs1.next()){
                                String oid=rs1.getString(1);
                                sql="SELECT * FROM `record` WHERE `id`='"+id+"' AND `date`='"+Putdate+"' AND `Recordid`='"+oid+"'";
                                ResultSet rs2=con.createStatement().executeQuery(sql);
                                rs2.next();
                                String pname=rs2.getString(8);
                                String pimg=rs2.getString(9);
                                String quantity=rs2.getString(3);
                                String price=rs2.getString(5);
                                int quantity1=Integer.parseInt(quantity);
                                int price1=Integer.parseInt(price);
                                int tolpri=quantity1*price1;
                                
                    
                                out.println("<div class='order-1'>");
                                out.println("<div class='order-img'>");
                                    out.println("<img src='"+ pimg);
                                    out.println("' width='75px' height='75px'>");
                                    out.println("</div>");
                                    out.println("<div>");
                                        out.println("<p> "+ pname +"</p>");
                                        out.println("<p>數量："+ quantity +"</p>");
                                        out.println("<p>總價：$"+ tolpri +"</p>");
                                        out.println("</div>");
                                        out.println("</div>");
                                        out.println("<hr>");
                            }
                            
                        }
                        }
                    
  else{
                        response.sendRedirect("login.jsp");
                    }


                    %>
                </form>
            </div>
        </section>
    </section>
    </div>
    <footer>
        Copyright<sup>©</sup> 2022 by GOOD to EAT
    </footer>
</body>
</html>
