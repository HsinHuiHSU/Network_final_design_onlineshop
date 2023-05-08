<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<section>
        <!--購物車-->
        <div id="myCart" class="sidecart">
            <div class="carttitle">
                <a class="closecart" onclick="closecart()">&#8250;</a>
                <p id="word">購物車</p>
            </div>
    
            <div class="cart">
    
                <!--購物車商品框-->
                <div>
                    <%
                    if(session.getAttribute("id")==null){
                        %>
                        <div style="text-align:center" >
                        <%out.print("您尚未登入");%>
                        </div>
                        <%
                    }
                    else{
                      Class.forName("com.mysql.jdbc.Driver");
                      String url4="jdbc:mysql://localhost/";
                      Connection con4=DriverManager.getConnection(url4,"root","1234");
                      String sql4="USE final";
                      request.setCharacterEncoding("utf-8");
                      con4.createStatement().execute(sql4);
                      String id = (String)session.getAttribute("id");
            
                      sql4="select * from `cart`, `information` where user_id='" + id + "' AND cart.ID = information.ID";
                      ResultSet rs4=con4.createStatement().executeQuery(sql4);
            
                      int q=0;
                      int totalprice=0;
            
                      while(rs4.next()){
                        
                      q+=Integer.parseInt(rs4.getString("quantity"));
                      totalprice+=Integer.parseInt(rs4.getString("quantity"))*Integer.parseInt(rs4.getString("Money"));
                      String sql5="USE final";
                        sql5="insert totalprice(totalprice) values('"+totalprice+"')";
                      con4.createStatement().execute(sql5);
            %>
                    <!--商品-->
                    <div class="product">
                        <div class="cartinside">
                            <a href=""><img src="<%=rs4.getString("imgPath")%>" width="90px" /></a>
                        </div>
                        <div class="pdt">
                            <div>
                                <p><%=rs4.getString("Name")%></p>
                            </div>
                            <div class="price">
                                <p>NT$ </p>
                                <p><%=rs4.getString("Money")%></p>
                            </div>
                            <div class="quantity">
                                <div class="qty">
    
                                    <input type="button" class="minus" field="qtynum" value="-" />
                                    <input type="text" class="num" name="num" value="<%=rs4.getString("quantity")%>" />
                                    <input type="button" class="add" field="qtynum" value="+" />
                                    
    
                                </div>
                            </div>
                            <br>
                            <hr>
                        </div>
                    <form action="cartdelete.jsp" method="post">
                        <div class="cross">
                           <button style=" background-color: transparent;" name="delete_id" value="<%=rs4.getString("ID")%>">x</button>
                           
                           
                          </div>
                    </form>
                    </div>
                                  <!--商品3-->
    
                    
			<%}%>
                                  <div class="cart-bottom">
                                    <div class="sum-bottom">
                                        <!--小計-->
                                        <h1>小計：</h1>
                                        <div class="sumPrice">
                                            <h2>NT$</h2>
                                            <h2><%=totalprice%></h2>
                                        </div>
                                    </div>

                        <hr>
                        <div class="gopay">
                            <a href="checkorder.jsp">前往結帳</a>
                        </div>
                    </div>
                </div>
                <%}%>
            </div>
    
        </div>
</section>
