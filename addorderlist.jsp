<!-- Step 0: import library -->
<%@page import= "java.sql.* "%>
<%@page import= "java.io.*,java.util.*" %>
<%@page import= "javax.servlet.*,java.text.*" %>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "config.jsp" %>
<html>
<head>
<title>add</title>
</head>
<body>
<%

            sql="SELECT a.* FROM `final`.`cart` a";
            sql="SELECT a.*, b.`Name`,b.`Category`,(b.`Money`*a.`quantity`),b.`imgPath` FROM final.cart a , final.information b where a.ID = b.ID";
            ResultSet rs3=con.createStatement().executeQuery(sql);
            rs3.next();
            

            String new_id=String.valueOf(session.getAttribute("id"));
            SimpleDateFormat setDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            String new_date = setDateFormat.format(Calendar.getInstance().getTime());
            sql="SELECT * FROM `cart` WHERE `user_id`='"+new_id+"'";
            ResultSet rs=con.createStatement().executeQuery(sql);




            while(rs.next()){
                sql="SELECT * FROM `information` WHERE `ID`='"+rs.getString(1)+"'";
                ResultSet rs1=con.createStatement().executeQuery(sql);
                rs1.next();

                sql="SELECT * FROM `members` WHERE `id`='"+new_id+"'";
                ResultSet rs5=con.createStatement().executeQuery(sql);
                rs5.next();


                String quantity=rs.getString(3);
                String category=rs1.getString(3);
                String money=rs1.getString(4);
                String mname=rs5.getString(7);
                String pname=rs1.getString(2);
                String imgPath=rs1.getString(8);


                sql="INSERT record (`id`, `quantity`, `Category`, `Money`,`date`, `mname`, `Pname`, `imgPath`) ";
                sql+="VALUES ('" + new_id + "', ";
                sql+="'"+quantity+"', ";
                sql+="'"+category+"', "; 
                sql+="'"+money+"', "; 
                sql+="'"+new_date+"', ";
                sql+="'"+mname+"', "; 
                sql+="'"+pname+"', "; 
                sql+="'"+imgPath+"')";      
                con.createStatement().execute(sql);


                sql="SELECT * FROM `information` WHERE `Name`='"+pname+"'";
                ResultSet rs8=con.createStatement().executeQuery(sql);
                rs8.next();
                String now_quantity=rs8.getString(5);
                int now_quantity1=Integer.parseInt(now_quantity);
                int buy_quantity=Integer.parseInt(quantity);
                int d_quantity=(now_quantity1-buy_quantity);
                sql="UPDATE `information` SET `Inventory` ='"+d_quantity+"' WHERE `Name` = '"+pname+"'";
                con.createStatement().execute(sql);

            }
                try{
				
				
					sql = "DELETE FROM `cart` WHERE `user_id`='"+session.getAttribute("id")+"'";
					con.createStatement().execute(sql);  con.close();
					out.print("<script>alert('購買成功'); window.location='index.jsp' </script>");
					      
				 }
				
				catch(Exception e){out.println(e);
				out.println(sql);}

                
                con.close();

        
            %>
</body>
</html>