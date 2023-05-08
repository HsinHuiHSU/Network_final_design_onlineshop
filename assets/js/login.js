function hide() {
    var login = document.getElementById("id02");
    var signup = document.getElementById("id01");
  
    if (login.style.display === "none") {
        login.style.display = "block"; 
        document.getElementById("useraccount").value="";
        document.getElementById("password").value="";
        signup.style.display = "none";  
    } else {
        login.style.display = "none";  
        signup.style.display = "block"; 
        signup.style.visibility="visible";
        document.getElementById("usermail").value="";
        document.getElementById("mail").value="";
        document.getElementById("username").value="";
        document.getElementById("pwd").value="";
        document.getElementById("userpwd").value="";
        document.getElementById("act").value="";
        document.getElementById("useract").value="";
    }
}
function login(){
    document.getElementById('id02').style.display="block";
}
function close1(){
    document.getElementById('id01').style.display="none";
}
function close2(){
    document.getElementById('id02').style.display="none";
}
