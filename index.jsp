<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file = "config.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="assets/images/favicon.ico" rel="shortcut icon"/>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/about.css">
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">
    <link rel="stylesheet" type="text/css" href="assets/css/cart.css">
    <script src="assets/js/style.js"></script>
    <script src="assets/js/login.js"></script>
    <script src="assets/js/cart.js"></script>
    <title>Home | GOOD to EAT</title>
</head>

<body>


    <section>
        <%@ include file="header.jsp"%>
    </section>

    <main>
        <br>
        <section>
            <article>
                <div class="rwd_slider_container_wrapper">
                    <div class="rwd_slider_container">
                        <div class="slider_container">
                            <div>
                                <img src="assets/images/background1.png"  alt="pure css slider" class="sliderimg"
                                    height="820px" />
                            </div>
                            <div>
                                <img src="assets/images/background2.png" alt="pure css slider" class="sliderimg"
                                    height="820px" />
                            </div>
                            <div>
                                <img src="assets/images/background3.png" alt="pure css slider" class="sliderimg"
                                    height="820px" />
                            </div>
                            <div>
                                <img src="assets/images/background4.png" alt="pure css slider" class="sliderimg"
                                    height="820px" />
                            </div>
                            <div>
                                <img src="assets/images/background1.png" alt="pure css slider" class="sliderimg"
                                    height="820px" />
                            </div>
                        </div><!-- end of .pure_slider_container -->
                    </div><!-- end of .embed-responsive -->
                </div><!-- end of .embed-responsive-box -->
            </article>

            <article class="center">
                <div class="topbg">
                    <div class="bg-text">
                        <table class="topbgtable">
                            <tr>
                                <td colspan="3" class="topbgtablebigtext">GOOD to EAT</td>
                            </tr>
                            <tr>
                                <td class="topbgtablesmalltext" id="tabletext">Meats and seafood for <br>the gourmet
                                    in all of us</td>
                                <td class="topbgtableimg"><img src="assets/images/cow.png" height="105px"></td>
                                <td class="topbgtablebuttomtext" id="tabletext">
                                    <a href="meats.jsp">
                                        <div class="but">START SHOPING ></div>
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </article>
                
            <article>
                <div class="indexttext">
                    <p>Enjoy Our Special Recommendations</p>
                </div>
                <div class="ranking">
                    <div class="indeximg">
                        <div class="indexxxx">
                            <a href="product.jsp?pid=6" class="rankinglink">
                                <div class="rankingblock">
                                <form action="product.jsp">
                                    <input type="image" name="image" src="assets/images/product/6.jpg" class="rankingimg">
                                    <input type="hidden" name="pid" value="6">
                                </form>
                                    <div class="rankingtext">【頂級牛排】1855認證 Prime等級羽下牛排<br><br>NT$450</div>
                                    <div class="rankingtext2"><div class="light">快速瀏覽</div></div>
                                </div>
                            </a>
                            <button id="myBtn1">快速瀏覽</button>
                            <!-- The Modal -->
                            <div id="myModal1" class="modal1">
                                <!-- Modal content -->
                                <div class="modal-content1">
                                    <span class="close11">&times;</span>
                                    <div class="jump">
                                        <div class="jumpimg">
                                        
                                            <img src="assets/images/product/6.jpg">
                                        </div>
                                        <div class="jumptext">
                                            <h1>
                                                【頂級牛排】1855認證 Prime等級羽下牛排
                                            </h1>
                                            <div class="jumpcotent">
                                                <div class="jumpprice">
                                                    NT$450
                                                </div>
                                                <div class="jumpsize">
                                                    規格：250g (8.8oz)
                                                </div>
                                                <div class="jumpppp">
                                                
                                                    【1855認證】
                                                    <br>每100頭約只有7頭牛才能獲得此1855認證。1855一樣分為八個等級，而『1855認證』中的等級，又比USDA認證的等級的牛排略勝半籌。
                                                    <br>【部位介紹】
                                                    <br>羽下牛排，選自於牛肩胛中"最軟嫩的部位"，口感與無骨牛小排相似。油花豐富、分布均勻，肉中間有少許細筋，肉質香甜有口感，適合煎烤或燒烤，越嚼越香越好吃！
                                                    <br><br>翼板牛肉(羽下)的油脂呈現大理石紋的分布，因此英文別名就叫做"Marbled Beef", (Marbled的意思是"大理石花紋的")!珍貴且難得。老饕必吃！！ 
                                                    <br><br>
                                                    <a href="product.jsp?pid=6">瀏覽更多詳細資料</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="indexxxx">
                            <a href="product.jsp?pid=7" class="rankinglink">
                                <div class="rankingblock">
                                <form action="product.jsp">
                                <input type="image" name="image" src="assets/images/product/7.jpg" class="rankingimg">
                                    <input type="hidden" name="pid" value="7">
                                </form>
                                    <div class="rankingtext">【頂級牛排】1855認證 安格斯頂級肋眼牛排<br><br>NT$760</div>
                                    <div class="rankingtext2"><div class="light">快速瀏覽</div></div>
                                </div>
                            </a>
                            <button id="myBtn2">快速瀏覽</button>
                            <!-- The Modal -->
                            <div id="myModal2" class="modal2">
                                <!-- Modal content -->
                                <div class="modal-content2">
                                    <span class="close22">&times;</span>
                                    <div class="jump">
                                        <div class="jumpimg">
                                        
                                            <img src="assets/images/product/7.jpg">
                                        </div>
                                        <div class="jumptext">
                                            <h1>
                                                【頂級牛排】1855認證 安格斯頂級肋眼牛排
                                            </h1>
                                            <div class="jumpcotent">
                                                <div class="jumpprice">
                                                    NT$760
                                                </div>
                                                <div class="jumpsize">
                                                    規格：294.8g (10.4oz)
                                                </div>
                                                <div class="jumpppp">
                                                    【1855認證】
                                                    <br>每100頭約只有7頭牛才能獲得此1855認證。1855一樣分為八個等級，而『1855認證』中的等級，又比USDA認證的等級的牛排略勝半籌。
                                                    <br>【部位介紹】
                                                    <br>「Rib」是「肋排」的意思，「Ribeye」是從牛肋裡切下來的，中文叫做「肋眼」。肋眼牛排遍滿均勻的大理石油花紋路，香味濃郁迷人。油花分佈較多且均勻，有明顯的牛肉香氣；肉質軟嫩，嫩度僅次於菲力牛排。
                                                    熟度為五分熟左右最適合；若怕血水可選擇七分熟。
                                                    <br><br>
                                                    <a href="product.jsp?pid=7">瀏覽更多詳細資料</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        

                        <div class="indexxxx">
                            <a href="product.jsp?pid=20" class="rankinglink">
                                <div class="rankingblock">
                                <form action="product.jsp">
                                <input type="image" name="image" src="assets/images/product/20.jpg" class="rankingimg">
                                    <input type="hidden" name="pid" value="20">
                                </form>
                                    <div class="rankingtext">【日本A5和牛-鹿兒島】頂級火鍋肉片<br><br>NT$680</div>
                                    <div class="rankingtext2"><div class="light">快速瀏覽</div></div>
                                </div>
                            </a>
                            <button id="myBtn3">快速瀏覽</button>
                            <!-- The Modal -->
                            <div id="myModal3" class="modal3">
                                <!-- Modal content -->
                                <div class="modal-content3">
                                    <span class="close33">&times;</span>
                                    <div class="jump">
                                        <div class="jumpimg">
                                        
                                            <img src="assets/images/product/20.jpg">
                                        </div>
                                        <div class="jumptext">
                                            <h1>
                                                【日本A5和牛-鹿兒島】頂級火鍋肉片
                                            </h1>
                                            <div class="jumpcotent">
                                                <div class="jumpprice">
                                                    NT$680
                                                </div>
                                                <div class="jumpsize">
                                                    規格：150g (5.2oz)
                                                </div>
                                                <div class="jumpppp">
                                                    【日本和牛】
                                                    <br>被譽為世界上等級最高的牛肉，其中等級崇高、又被稱作「肉的藝術品」，每一隻都經過嚴正的管理、細心養育。
                                                    <br>【鹿兒島和牛】
                                                    <br>鹿兒島是日本國內最大和牛生產地，是屬於野性最強的和牛風味，位於日本九州最南端的縣市，溫暖氣候、豐富自然美景是最大特色。鹿兒島和牛，肉質鮮紅、脂肪分佈均勻，最大特色是牛肉風味非常濃郁，口感也相對有咬勁。
                                                    <br><br>
                                                    日本A5黑毛和牛肉片油花分佈明顯，能同時品嚐到油脂甜味與瘦肉鮮味的稀有部位，是老饕最愛的部位之一
                                                    <br><br>
                                                    <a href="product.jsp?pid=20">瀏覽更多詳細資料</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
            <p class="aaa">
   
            </p>

        </section>
    </main>
    

        <footer id="indexfo">
        
            Copyright<sup>©</sup> 2022 by GOOD to EAT | 
    
            <%
            try{
                sql="SELECT * FROM `counter`";
                ResultSet rs=con.createStatement().executeQuery(sql);
                if(rs.next()){
                    String countString = rs.getString(1);
                    int count = Integer.parseInt(countString);
                    if(session.isNew()){
                        count=count+1;
                        countString = String.valueOf(count);
    
                        sql="UPDATE counter SET `counter` = "+countString;
                        con.createStatement().execute(sql);
                    }
                    out.println("你是第"+count+"位訪客");
                    con.close();
                }
            }
            catch(SQLException sExec){
                out.println("SQL錯誤"+sExec.toString());
            }
        %>
            
        </footer>
</body>

</html>


<!-- 快速瀏覽 -->
<script>
    // Get the modal
    var modal = document.getElementById("myModal1");
    
    // Get the button that opens the modal
    var btn = document.getElementById("myBtn1");
    
    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close11")[0];
    
    // When the user clicks the button, open the modal 
    btn.onclick = function() {
      modal.style.display = "block";
    }
    
    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
      modal.style.display = "none";
    }
    
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }
</script>




<script>
    // Get the modal
    var modal2 = document.getElementById("myModal2");
    
    // Get the button that opens the modal
    var btn2 = document.getElementById("myBtn2");
    
    // Get the <span> element that closes the modal
    var span2 = document.getElementsByClassName("close22")[0];
    
    // When the user clicks the button, open the modal 
    btn2.onclick = function() {
      modal2.style.display = "block";
    }
    
    // When the user clicks on <span> (x), close the modal
    span2.onclick = function() {
      modal2.style.display = "none";
    }
    
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == modal2) {
        modal2.style.display = "none";
      }
    }
</script>



<script>
    // Get the modal
    var modal3 = document.getElementById("myModal3");
    
    // Get the button that opens the modal
    var btn3 = document.getElementById("myBtn3");
    
    // Get the <span> element that closes the modal
    var span3 = document.getElementsByClassName("close33")[0];
    
    // When the user clicks the button, open the modal 
    btn3.onclick = function() {
      modal3.style.display = "block";
    }
    
    // When the user clicks on <span> (x), close the modal
    span3.onclick = function() {
      modal3.style.display = "none";
    }
    
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == modal3) {
        modal3.style.display = "none";
      }
    }
</script>



