<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp"%>
<%
        sql = "UPDATE `members` SET `id`='"+request.getParameter("id")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	    con.createStatement().execute(sql);
	    sql = "UPDATE `members` SET `email`='"+request.getParameter("mail")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	    con.createStatement().execute(sql);	
        sql = "UPDATE `members` SET `pwd`='"+request.getParameter("pwd")+"' WHERE `id`='"+session.getAttribute("id")+"'";		
	    con.createStatement().execute(sql);	
	    sql = "UPDATE `members` SET `address`='"+request.getParameter("name")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	    con.createStatement().execute(sql);	
	    con.close();//結束資料庫連結
	    out.println("更新成功!! 請<a href='member.html'>按此</a>回會員頁面!!");
%>   
      
    