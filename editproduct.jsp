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
                    <div id="thisbut">
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
                    <div class="member-but">
                        管理訂單
                    </div>
                </a>
            </div>
        </section>

        <section class="member-right" id="member-order">
            <div class="member-data">
                <h1 style="font-size: 24px;">管理產品</h1>
                <p>於下方修改產品資料。</p>
                <br>
                <hr><br>
 
                <br>
                <form action="up_editproduct.jsp" method="GET">
                    <table class="admin">
                        <tr>
                            <td class="left">要修改的產品編號為</td>
                            <td class="right"><input type="text" required class="input-data" name="id" /></td>
                        </tr>
                        <tr>
                            <td class="left">將商品名稱修改為</td>
                            <td class="right"><input type="text" required class="input-data" name="name" /></td>
                        </tr>
                         <tr>
                            <td class="left">將商品分類修改為</td>
                            <td class="right"><input type="text" required class="input-data" name="category" /></td>
                        </tr>
                        <tr>
                            <td class="left">將商品價格修改為</td>
                            <td class="right"><input type="text" required class="input-data" name="price" /></td>
                        </tr>
                        <tr>
                            <td class="left">將商品敘述修改為</td>
                            <td class="right"><input type="text" required class="input-data" name="content" /></td>
                        </tr>
                        <tr>
                            <td class="left">將商品庫存修改為</td>
                            <td class="right"><input type="text" required class="input-data" name="num1" /></td>
                        </tr>
                        <tr>
                            <td class="left">將圖片路徑修改為</td>
                            <td class="right"><input type="text" required class="input-data" name="num2" /></td>
                        </tr>
                        <tr>
                    </table>
                    
                    <div class="button">
                        <a href="">
                            <div class="">
                                <input type="submit" class="but3" value="確認修改" style="height: 40px; width: 100px;">
                            </div>
                        </a>
                    </div>
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
    