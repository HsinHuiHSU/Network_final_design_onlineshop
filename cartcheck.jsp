<%@ page pageEncoding="UTF-8" import="java.util.*, java.sql.*" %>


<%
	if(session.getAttribute("id")==null){
		out.print("<script>alert('請先登入！'); window.location='login.jsp'</script>");
	}

	else{
			int quantity = Integer.parseInt(request.getParameter("num"));
			String product_ID = request.getParameter("cartid");
			String User_id = (String) session.getAttribute("id");

			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/";
			Connection con=DriverManager.getConnection(url,"root","1234");
			String sql="USE final";
			con.createStatement().execute(sql);

			sql = "select * from `cart` where ID='" + product_ID + "' AND user_id='"+User_id+"'";
			ResultSet rs=con.createStatement().executeQuery(sql); 
						
			// 檢查商品是否已存在購物車
			
			int q = 0;
			
			
			while (rs.next()) //查到內容就繼續
			{
			//表示已存在
				
				q = Integer.parseInt(rs.getString("quantity")); //取得購物車裡那商品原來的數量

			}
			
			if(q>0){
			q+=quantity; //點了加入購物車就加一
				sql="update `cart` set quantity='"+q+"' where ID='" + product_ID+"'";
				con.createStatement().execute(sql);
				
					out.print("<script>alert('加入購物車成功!'); window.location='beef.jsp'</script>");
					request.setAttribute("pid",product_ID);
				
				out.print("<script>alert('加入購物車成功!'); window.location='beef.jsp'</script>");
				}
			else{
				
				q+=quantity;
				sql="insert cart(ID,user_id,quantity) value ('" + product_ID + "' , ";
				sql+="'"+User_id+"',";
				sql+="'"+q+"')";
				con.createStatement().execute(sql);
				
					out.print("<script>alert('加入購物車成功!'); window.location='beef.jsp'</script>");
					
			}
			

		con.close();

	}


				
%>



