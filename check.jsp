<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%
		



				Class.forName("com.mysql.jdbc.Driver");
				String url="jdbc:mysql://localhost/";
				Connection con=DriverManager.getConnection(url,"root","1234");
				String sql="use final";
				con.createStatement().execute(sql);
				String id = request.getParameter("id");
				String pwd = request.getParameter("pwd");
				
				
		if( id.equals ("admin") &&  pwd.equals ("admin")){
			session.setAttribute("id","admin");
			out.print("<script>alert('管理員登入成功！'); window.location='addproduct.jsp' </script>");
		}
		else{


	//sql="SELECT * from `member` where `email`='"+id+"' and password='"+psw+"'" ;
	sql = "SELECT * FROM `members` WHERE `id`=? AND pwd=?";
	PreparedStatement pstmt = null;
	pstmt=con.prepareStatement(sql);
	pstmt.setString(1,request.getParameter("id"));
    pstmt.setString(2,request.getParameter("pwd"));
	//con.createStatement().execute(sql);

	//ResultSet rs=con.createStatement().executeQuery(sql);
	ResultSet paperrs = pstmt.executeQuery();

	if(paperrs.next()){
		session.setAttribute("id",request.getParameter("id"));
		out.print("<script>alert('登入成功！');window.location='index.jsp'</script>");
	}
	else{
		out.print("<script>alert('登入失敗，請確認帳號密碼！');window.location='login.jsp'</script>");
	}
}
		
	/*while(rs.next()){
				
		session.setAttribute("id",id);
		out.print("<script>alert('登入成功!');window.location='index.jsp'</script>");

		
	}
	rs.last();	

	if (rs.getRow() == 0)
	{
		out.print("<script>alert('登入失敗，請確認帳號密碼!');window.location='login.jsp'</script>");
	}	*/

	


%>