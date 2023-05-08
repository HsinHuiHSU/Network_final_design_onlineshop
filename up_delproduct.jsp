<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>


<%
                String id = (String) session.getAttribute("id");
	            Class.forName("com.mysql.jdbc.Driver");
				String url="jdbc:mysql://localhost/";
				Connection con=DriverManager.getConnection(url,"root","1234");
				String sql="USE final";
				con.createStatement().execute(sql);

if(session.getAttribute("id") != null){
                String pid =request.getParameter("id");


                sql="DELETE FROM `information` WHERE `ID`='"+pid+"'" ;
                con.createStatement().execute(sql);
         		out.print("<script>alert('修改成功'); window.location='editproduct.jsp' </script>");
}
else{
out.println("<script>alert('你尚未登入!!');window.location='login.jsp'</script>");
}
                con.close();


                %>