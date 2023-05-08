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
    <title>Update | GOOD to EAT</title>
</head>

<body>
    <section>
        <%@ include file="header.jsp"%>
    </section>

    <div class="member">
        <section class="member-left">
            <div class="photo">
                <img src="assets/images/photo.jpg" width="100px" height="100px">
            </div>
            <div class="member-buttons">
                <a href="myorder.jsp">
                    <div class="member-but">
                        My Orders
                    </div>
                </a>
                <a href="member.jsp">
                    <div class="member-but">
                        My Account
                    </div>
                </a>
                <a href="update.jsp">
                    <div id="thisbut">
                        Update Data
                    </div>
                </a>
            </div>
        </section>

        <section class="member-right" >
            <div class="member-data">
                <h1>修改資料</h1>
                <p>於下方更新您的個人資訊。</p>
                <br>
                <hr><br>
				<%
                if(session.getAttribute("id") != null){        

				sql = "SELECT * FROM `members` WHERE `id` = '"+session.getAttribute("id")+"'";
				con.createStatement().execute(sql);
				ResultSet rr=con.createStatement().executeQuery(sql);
				while(rr.next()) 
				{
				%>
                <form action="setmember.jsp" method="post">
                    <table class="datatable">
                        <tr>
                            <td class="left"><label>帳號</label></td>
                            <td><label>密碼</label></td>
                        </tr>
                        <tr>
                            <td class="left"><input type="text" class="input-data"  readonly="readonly" name="id" required value="<%=rr.getString("id")%>"/>
                            </td>
                            <td><input type="text" class="input-data"  name="pwd" required value="<%=rr.getString("pwd")%>"/></td>
                        </tr>
                        <tr>
                            <td class="left"><label>姓名</label></td>
                            <td><label>Email</label></td>
                        </tr>
                        <tr>
                            <td class="left"><input type="text" class="input-data"  name="name" required value="<%=rr.getString("name")%>"/></td>
                            <td><input type="text" class="input-data"  name="mail" required value="<%=rr.getString("mail")%>"/></td>
                        </tr>
                    </table>
                    <div class="button">
                        <a href="">
                            <div class="">
                                <input type="submit" class="but1" value="確認修改" style="height: 40px; width: 100px;">
                            </div>
                        </a>
                    </div>
                </form>
				<%}%>
<%
                        }
                    
  else{
                        response.sendRedirect("login.jsp");
                    }
%>
            </div>
        </section>
    </div>
   
    <footer>
        Copyright<sup>©</sup> 2022 by GOOD to EAT
    </footer>
</body>

</html>
