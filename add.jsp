<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "config.jsp" %>
<html>
<head>
<title>add</title>
</head>
<body>
<%
//Step 1: 載入資料庫驅動程式 
        if(con.isClosed()){
           out.println("連線建立失敗");
        }
        else {
//Step 3: 選擇資料庫  
                if(session.getAttribute("id") != null){
                         request.setCharacterEncoding("UTF-8");  
                        String new_id=String.valueOf(session.getAttribute("id"));
                        String new_content=request.getParameter("content");
                        String new_pid=request.getParameter("pid");
                        //舊版MySQL從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
                        //String new_name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
                        //String new_subject=new String(request.getParameter("subject").getBytes("ISO-8859-1"),"UTF-8");
                        //String new_content=new String(request.getParameter("content").getBytes("ISO-8859-1"),"UTF-8");
                        java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());

                        sql="SELECT * FROM `members` WHERE `id`='"+new_id+"'";
                        ResultSet rs=con.createStatement().executeQuery(sql);
                        rs.next();

                        String new_name=rs.getString(7);

                //Step 4: 執行 SQL 指令	
                        sql="INSERT guestbook (`GBName`, `Account`, `Content`, `Putdate`,`ID`) ";
                        sql+="VALUES ('" + new_name + "', ";
                        sql+="'"+new_id+"', ";
                        sql+="'"+new_content+"', "; 
                        sql+="'"+new_date+"', "; 
                        sql+="'"+new_pid+"')";      

                        con.createStatement().execute(sql);
                //Step 6: 關閉連線
                        con.close();
                //Step 5: 顯示結果 
                        //直接顯示最新的資料
                        response.sendRedirect("index.jsp");
                }
                else{
                        //out.println("您尚未登入!! 請<a href='index.jsp'>按此<a>回到首頁畫面");
                     //   out.print("<script>alert('登入失敗，請確認帳號密碼！');window.location='login.jsp'</script>");

                        out.println("<script>alert('你尚未登入!!');window.location='login.jsp'</script>");
                }
        }
%>
</body>
</html>
