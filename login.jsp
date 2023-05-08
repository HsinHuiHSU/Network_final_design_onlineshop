<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
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
    <span class="close" title="離開"><a href="javascript:history.back()">&times;</a></span>

    <div class="container">
        <div class="tit1">
            <h1>登入</h1>
            <div class="tit12">
                <p>首次造訪本網站？</p>
                <button >
                    <a href="register.jsp">
                    <div class="orig">註冊</div></a>
                </button>
            </div>
        </div>
        <br>
        <form class="modal-content" action="check.jsp" method="post">
            <div class="tit2">
                <div class="tit3"><label><b>帳號</b></label></div>
                <br>
                <input class="loginput" type="text" name="id" id="useraccount">
                <br><br><br>
                <div class="tit3"><label><b>密碼</b></label></div>
                <br>
                <input class="loginput" type="password" name="pwd" id="password"><br>
                <iframe title="reCAPTCHA" class="robot"
                    src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6Ld0J8IcAAAAANyrnxzrRlX1xrrdXsOmsepUYosy&amp;co=aHR0cHM6Ly9qYWNreTkxNzEud2l4c2l0ZS5jb206NDQz&amp;hl=zh-CN&amp;v=M-QqaF9xk6BpjLH22uHZRhXt&amp;theme=light&amp;size=normal&amp;cb=oczpyoxiikcq"
                    width="304" height="78" role="presentation" name="a-lj5vk0deas4g" frameborder="0" scrolling="no"
                    sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe>
            </div>
            <div class="clearfix">
                <input type="submit" class="signupbtn" value="登入">

            </div>
        </form>
    </div>
</body>
</html>