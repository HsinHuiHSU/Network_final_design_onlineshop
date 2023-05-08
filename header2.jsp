<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<section>
<nav>
    <div class="list">
        <ul class="listleft">
            <hr><br>
            <li>
                <a href="index.jsp" class="leftthing">Home</a>
            </li>
            <li>
                <a href="about.jsp" class="leftthing">About</a>
            </li>
            <il class="down1">
                <div class="dropdown">
                    <buttom class="dropbtn">
                        <li><a href="meats.jsp" class="leftthing">Meats</a></li>
                    </buttom>
                    <div class="dropdown-content">
                        <hr class="downhr"><a href="beef.jsp">Beef</a>
                        <hr class="downhr">
                        <a href="pork.jsp">Pork</a>
                        <hr class="downhr">
                    </div>
                </div>
            </il>
            <li>
                <a href="seafood.jsp" class="leftthing">Seafood</a>
            </li>
            <li>
                <a href="findus.jsp" class="leftthing">Find us</a>
            </li>
        </ul>
        <div class="listright">
            <table>
                <tr>
                  
                    <%if(session.getAttribute("id")!= null ){
            
                        Object objname = session.getAttribute("id");
                         request.setCharacterEncoding("utf-8");
                         Class.forName("com.mysql.jdbc.Driver");
                         String url2="jdbc:mysql://localhost/";
                         Connection con2=DriverManager.getConnection(url2,"root","1234");
                         String sql2="USE final";
                         con2.createStatement().execute(sql2);
                         sql2 = "SELECT * FROM `members` WHERE `id` = '"+objname+"'";
                         con2.createStatement().execute(sql2);
                         ResultSet rs2=con2.createStatement().executeQuery(sql2);
                        if(session.getAttribute("id") != null ){
                             while(rs2.next()) 
                                 {
                             String user_id = rs2.getString("name");
                             %>
                             <button class="rightthing">
                                <a href="member.jsp">
                                    <img src="assets/images/user (1).png" class="userimg" width="23px">
                                    &nbsp;Hi!&nbsp<%= user_id %>
                                </a>
                            </button> 
                             <button class="rightthing" onclick="opencart()">
                                <img src="assets/images/shopping-bag.png" width="25px">
                            </button>
                            <a href="member.jsp">
                                <img src="assets/images/membercenter.png" width="45px" class="memberimg">
                            </a>
                                
                             <%}}%>
                             <%}else{%>
                                <button class="rightthing">
                                    <a href="login.jsp">
                                        <img src="assets/images/user (1).png" class="userimg" width="23px">
                                        &nbsp;Log in
                                    </a>
                                </button> 
                                <button class="rightthing" onclick="opencart()">
                                    <img src="assets/images/shopping-bag.png" width="25px">
                                </button>
                                <a href="member.jsp">
                                    <img src="assets/images/membercenter.png" width="45px" class="memberimg">
                                </a>
                                 
                             <%}%>
             
                </tr>
                <%if(session.getAttribute("id") != null ){%>		
                    <% 
                        if(session.getAttribute("id").equals("admin")){
                            out.println("<a href='addproduct.jsp'>");
                            out.println("<img src='assets/images/membercenter.png' width='45px' class='memberimg'>");
                            out.println("</a>");
                        }
                    %>	
                    <button class="rightthing">
                        <a href="logout.jsp">
                            &nbsp;Log out
                        </a>
                    </button>
                 <%}%>
            </table>
          
        </div>
    </div>
    	
	<div class="ad">
		即日起至2022/12/31全站免運！！！
		<span class="adbtn" onclick="this.parentElement.style.display='none';">x</span>
	</div>		
         
         
</nav>
</section>




