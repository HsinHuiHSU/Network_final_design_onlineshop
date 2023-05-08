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

                String ID = request.getParameter("id");
                String Name =request.getParameter("name");
                String Category = request.getParameter("category");
                String Money = request.getParameter("price");
                String description = request.getParameter("content");
                String inventory = request.getParameter("num1");
                String imgPath = request.getParameter("num2");

 
                sql="INSERT information (`ID`, `Name`,`Category`, `Money`, `description`,`inventory`,imgPath) ";
                sql+="VALUES ('" + ID + "', ";
                sql+="'"+Name+"', ";
                sql+="'"+Category+"', ";
                sql+="'"+Money+"', "; 
                sql+="'"+description+"', "; 
                sql+="'"+inventory+"', "; 
                sql+="'"+imgPath+"')";  

                con.createStatement().execute(sql);
				
         //Step 5: 顯示結果          
         		out.print("<script>alert('新增成功'); window.location='addproduct.jsp' </script>");
    }
    else{
out.println("<script>alert('你尚未登入!!');window.location='login.jsp'</script>");
}
         		
                con.close();
%>