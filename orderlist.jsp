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
    <title>後台管理</title>
</head>

<body>
<%if (session.getAttribute("id") != null){%>
                    <%if (session.getAttribute("id") == "admin"){%>
        <section>
        <%@ include file="header.jsp"%>
    </section>

    <section class="member">
        <section class="member-left">
            <div class="photo">
                <img src="assets/images/photo.jpg" width="100px" height="100px">
            </div>
            <div class="member-buttons">
                <a href="addproduct.jsp">
                    <div class="member-but">
                        新增產品
                    </div>
                </a>
                <a href="editproduct.jsp">
                    <div class="member-but">
                        修改產品資訊
                    </div>
                </a>
                <a href="delproduct.jsp">
                    <div class="member-but">
                        移除產品
                    </div>
                </a>
                <a href="board.jsp">
                    <div class="member-but">
                        留言板
                    </div>
                </a>
                <a href="orderlist.jsp">
                    <div id="thisbut">
                        管理訂單
                    </div>
                </a>
            </div>
        </section>

        <section class="member-right" id="member-order">
            <div class="member-data">
                <h1 style="font-size: 24px;">管理訂單</h1>
                <p>於下方查看訂單列表。</p>
                <br>
                <hr>
                <form class="orderlista">

<%
if(session.getAttribute("id") != null){
            sql="SELECT a.* FROM final.record a";
            sql="create or replace view total as select  Recordid,(sum(quantity*Money)) AS total_price   FROM record group by Recordid";
            sql="select a.*, b.total_price from final.record a ,total  b where a.Recordid = b.Recordid";
            ResultSet rs5=con.createStatement().executeQuery(sql);
            while(rs5.next()){

            out.println("<div class='contactcotet'>");
            out.println("<div class='contacthistory'>");
            out.println("<br>");
            out.println("購買時間:"+rs5.getString(6));
            out.println("</div>");
            out.println("<div class='contacthistory'>");
            out.println("會員姓名:"+rs5.getString(7));
            out.println("<br>");
            out.println("</div>");
            out.println("<div class='contacthistory'>");
            out.println("產品:"+rs5.getString(8)+"*"+rs5.getString(3));
            out.println("<br>");
            out.println("</div>");
            out.println("<div class='contacthistory'>");
            out.println("總價:"+"$"+rs5.getString(10));
            out.println("<br>");
            out.println("</div>");
            out.println("<br>");
            out.println("<hr>");

                }
}
else{
out.println("<script>alert('你尚未登入!!');window.location='login.jsp'</script>");
}
con.close();
%>
<!--
                <div class="contactcotet">
                    
                    <div class="contacthistory">
                        購買時間：2022-06-08
                        <br>
                    </div>
                    <div class="contacthistory">
                        會員姓名：陳爸
                        <br>
                    </div>
                    <div class="contacthistory">
                        產品：牛肉*888、雞肉*999
                        <br>
                    </div>
                    <div class="contacthistory">
                        總價：$1111111
                        <br>
                    </div>
                    <div class="contacthistory">
                        <br>
                    </div>
                </div>
                <hr class="historyhr">
                
            </div>-->
            </form>
        </section>
    </section>
              <%}
                    else{out.print("<script>alert('你不是管理員請你離開 ! ');location.href='index.jsp'</script>");

                    }%>
                       <%}
                    else{out.print("<script>alert('請先登入 ! ');location.href='login.jsp'</script>");

                    }%>
    
    <footer>
        Copyright<sup>©</sup> 2022 by GOOD to EAT
    </footer>
</body>
</html>
