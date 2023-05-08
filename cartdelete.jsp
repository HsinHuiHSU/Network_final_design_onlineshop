<%@ page pageEncoding="UTF-8" import="java.util.*, java.sql.*" %>

<%try {

            Class.forName("com.mysql.jdbc.Driver");	  
            try {

                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");   				
	        if(con.isClosed()){
                out.println("連線建立失敗");
            }
                    
			else{
            
            String product_ID = request.getParameter("delete_id");
			String user_id = (String) session.getAttribute("id");
			
			String sql="USE final";
			con.createStatement().execute(sql);


            
            
            sql="delete from `cart` where ID = '"+product_ID+"' AND user_id='"+user_id+"'";
            int no=con.createStatement().executeUpdate(sql);
            if (no > 0){
                out.print("<script>window.location='index.jsp'</script>");
            }
            con.close();
            
				}
			}
			catch (SQLException sExec) {
              out.println("SQL錯誤"+sExec.toString());
          }
      
			}	
    catch (ClassNotFoundException err) {
          out.println("class錯誤"+err.toString());
    }
%>