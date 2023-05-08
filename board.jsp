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
                    <div id="thisbut">
                        留言板
                    </div>
                </a>
                <a href="orderlist.jsp">
                    <div class="member-but">
                        管理訂單
                    </div>
                </a>
            </div>
        </section>

        <section class="member-right" id="member-order">
            <div class="member-data">
                <h1 style="font-size: 24px;">留言紀錄</h1>
                <p>於下方查看商品留言板的留言紀錄。</p>
                <br>
                <hr><br>
                <form class="orderlista">    

<%
if(session.getAttribute("id") != null){

                sql="SELECT * FROM `final`.`guestbook`";
                sql="SELECT a.* FROM `final`.`guestbook` a";
                sql="SELECT a.*, b.Name FROM final.guestbook a , final.information b where a.ID = b.ID ORDER BY `GBNO` DESC";
                ResultSet rs2=con.createStatement().executeQuery(sql);
                //sql="SELECT gustbook.*, information.NAME FROM guestbook , information where gustbook.ID = information.ID";
                //ResultSet rs2=con.createStatement().executeQuery(sql);
                while(rs2.next()){


                     out.println("<div class='contactcote'>");
                     out.println("<div class='contacthistory'>");
                     out.println("留言時間:"+rs2.getString(5));
                     out.println("<br>");
                     out.println("</div>");

                     out.println("<div class='contacthistory'>");
                     out.println("會員姓名:"+rs2.getString(2));
                     out.println("<br>");
                     out.println("</div>");

                     out.println("<div class='contacthistory'>");
                     out.println("產品名稱:"+rs2.getString(7));
                     out.println("<br>");
                     out.println("</div>");

                     out.println("<div class='contacthistory'>");
                     out.println("留言內容:"+rs2.getString(4));
                     out.println("</div>");

                     out.println("<div class='contacthistory'>");
                     out.println("<br>");
                     out.println("</div>");
                     out.println("</div>");
                     out.println("<hr class='historyhr'>");

                }
}
else{
out.println("<script>alert('你尚未登入!!');window.location='login.jsp'</script>");
}
con.close();
%>
                </form>  
            </div>
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
         

    

   