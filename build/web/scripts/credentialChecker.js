/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var sNumCorrect=false;
var passwordCorrect=false;
var passwordCCorrect=false;
var uNameCorrect=false;

function checkPassword(){
    var p = document.getElementById('password');
    
    if (/[0-9a-zA-Z]{8,16}/.test(p.value)){
        document.getElementById('password-error').innerHTML="Looks good!";
        document.getElementById('password-error').className="fnotif-text check";
        passwordCorrect=true;
    }
    else{
        document.getElementById('password-error').innerHTML="Password too short.";
        document.getElementById('password-error').className="fnotif-text error";
        passwordCorrect=false;
    }
    checkSamePassword();
    enableSubmit();
}

function checkSamePassword(){
    var p = document.getElementById('password');
    var p1 = document.getElementById('passwordC');
    
    if (p.value == p1.value){
        document.getElementById('passwordC-error').innerHTML="Looks good!";
        document.getElementById('passwordC-error').className="fnotif-text check";
        passwordCCorrect=true;
    }
    else{
        document.getElementById('passwordC-error').innerHTML="Oh Snap! Password does not match.";
        document.getElementById('passwordC-error').className="fnotif-text error";
        passwordCCorrect=false;
    }
    enableSubmit();
}


function confirmStudentNumber(){
    var sNum = document.getElementById('snumber').value;
    
    if (/^[0-9]{4}-[0-9]{5}$/.test(sNum)){/*wrong regex*/
        document.getElementById('snumber-error').innerHTML="Looks good!";
        document.getElementById('snumber-error').className="fnotif-text check";
        sNumCorrect=true;
        checkValidityOfSNum();
        
    }
    else{
        document.getElementById('snumber-error').innerHTML="Wrong student number";
        document.getElementById('snumber-error').className="fnotif-text error";
        sNumCorrect=false;
    }
    enableSubmit();
}

function checkValidityOfSNum(){
    var httpc =  new XMLHttpRequest();
    var url = "../account/checkStudentNumber.jsp";
    var res;
    var sNum = document.getElementById("snumber").value;
    var params = "snumber=" + sNum;
    
    httpc.open("POST",url,true);
    
    httpc.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    //alert("yo");
    
    httpc.onreadystatechange = function(){
        if (httpc.readyState === 4 && httpc.status === 200){
            //alert("yo");
            res = httpc.responseText.toString();
            
            if(res==1)
                sNumCorrect=true;
            else
                sNumCorrect=false;
            //alert(res);
            
        }
    }
    //enableSubmit();
    httpc.send(params);
}

function confirmUserName(){
    var httpc =  new XMLHttpRequest();
    var url = "../account/checkUsernameTaken.jsp";
    var res;
    var username = document.getElementById("uname").value;
    //alert(username);
    var params = "uname=" + username;
    
    httpc.open("POST",url,true);
    
    httpc.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    
    
    httpc.onreadystatechange = function(flag){
        if (httpc.readyState === 4 && httpc.status === 200){
            res = httpc.responseText.toString();
            
            
            if (res == 0){
                document.getElementById('username-error').className = "fnotif-text error";
                document.getElementById('username-error').innerHTML = "Username taken";
                uNameCorrect=false;
            }
            else{
                document.getElementById('username-error').className = "fnotif-text check";
                document.getElementById('username-error').innerHTML = "Looks good";
                uNameCorrect=true;
            }
            
        }

    }

    httpc.send(params);
    enableSubmit();
}
function enableSubmit(){
    
    if(uNameCorrect&&passwordCorrect&&passwordCCorrect&&sNumCorrect){
        
        document.getElementById("regsubmit").disabled=false;
        document.getElementById("regsubmit").style.backgroundColor="darkcyan";
    }
    else{
        
        document.getElementById("regsubmit").disabled=true;
        document.getElementById("regsubmit").style.backgroundColor="gray";
    }
}

function saveToDatabase(){

    var httpc =  new XMLHttpRequest();
    var url = "../account/r.jsp";
    var res;
    var sNum = document.getElementById("snumber").value;
    var params = "snumber=" + sNum;
    
    httpc.open("POST",url,true);
    
    httpc.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    //alert("yo");
    
    httpc.onreadystatechange = function(){
        if (httpc.readyState === 4 && httpc.status === 200){
            //alert("yo");
            res = httpc.responseText.toString();
            
            if(res==1)
                sNumCorrect=true;
            else
                sNumCorrect=false;
            //alert(res);
            
        }
    }
    //enableSubmit();
    httpc.send(params);
}

function insertToDatabase(){
    if (document.getElementById("regsubmit").disabled == false){
        document.getElementById("regsubmit").disabled = true;
        var httpc =  new XMLHttpRequest();
        var url = "../account/addUserToDatabase.jsp";
        var res;
        var fname = document.getElementById("fname").value;
        var lname = document.getElementById("lname").value;
        var sNum = document.getElementById("snumber").value;
        var uname = document.getElementById("uname").value;
        var password = document.getElementById("password").value;
        var params = "fname=" + fname + "&lname=" + lname + "&snumber=" + sNum + "&uname=" + uname + "&password=" + password;
        

        httpc.open("POST",url,true);

        httpc.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        httpc.onreadystatechange = function(){
            if (httpc.readyState === 4 && httpc.status === 200){
               res = httpc.responseText.toString();

               alert("successful");

            }
        }
        //enableSubmit();
        httpc.send(params);
        
    }
}