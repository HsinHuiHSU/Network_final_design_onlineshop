<%@ page pageEncoding="UTF-8" import="java.util.*, java.sql.*, org.json.*" %>

<%

 session.removeAttribute("id"); 
 
out.print("<script>alert('登出成功！');window.location='index.jsp'</script>");
%>