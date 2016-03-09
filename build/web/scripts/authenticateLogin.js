function authenticateLogin(){
    //alert("inside~");
    var username = document.getElementById("username-lg").value;
    var password = document.getElementById("password-lg").value;
    var httpc = new XMLHttpRequest();
    var url = "../account/verifyLogin.jsp";
    var res;
    //var loginForm = new FormData( document.getElementById("loginForm") );
    
    var params = "uname=" + username + "&password=" + password;
    
    httpc.open("POST", url, true);
    httpc.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        
    httpc.onreadystatechange = function() {
        if(httpc.readyState === 4 && httpc.status === 200) {
            res = httpc.responseText.toString();
            processResponse(res);
        }
    };
    
    httpc.send(params);
}
function processResponse(res){
    document.getElementById("error-msg").className = "shown";
    if(res==1){
        document.getElementById("error-msg").innerHTML = "Sucess!";
        location.href = "../";
    }
    else{
        document.getElementById("error-msg").innerHTML = "Invalid Username or Password!";
        document.getElementById("password-lg").value = "";
    }
}
