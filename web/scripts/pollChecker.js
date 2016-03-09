/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var titleCorrect=false;
var descCorrect=false;
function checkTitle(){
    var title = document.getElementById('poll-title');
    
    
    if (title.value!=""){
        document.getElementById('title-error').innerHTML="Good Question";
        document.getElementById('title-error').className="fnotif-text check";
        titleCorrect=true;
    }
    else{
        document.getElementById('title-error').innerHTML="This must not be empty";
        document.getElementById('title-error').className="fnotif-text error";
        titleCorrect=false;
    }
    enableSubmit();
}
function checkDesc(){
    var desc = document.getElementById('poll-desc');
    
    
    if (desc.value!=""){
        document.getElementById('desc-error').innerHTML="Looks good!";
        document.getElementById('desc-error').className="fnotif-text check";
        descCorrect=true;
    }
    else{
        document.getElementById('desc-error').innerHTML="This must not be empty";
        document.getElementById('desc-error').className="fnotif-text error";
        descCorrect=false;
    }
    enableSubmit();
}
function enableSubmit(){
    //alert(uNameCorrect);
    //alert(passwordCorrect);
    //alert(passwordCCorrect);
    //alert(sNumCorrect);
    if(titleCorrect&&descCorrect){
        //alert("yes");
        document.getElementById("regsubmit").disabled=false;
        document.getElementById("regsubmit").style.backgroundColor="darkcyan";
    }
    else{
        
        document.getElementById("regsubmit").disabled=true;
        document.getElementById("regsubmit").style.backgroundColor="gray";
    }
}
function insertPollToDatabase(){
    //alert("wot");
    if(document.getElementById("poll-title").value == ""){
        alert("Empty Title!");
    }else{
        var httpc =  new XMLHttpRequest();
        var url = "../forms/addPollToDatabase.jsp";
        var res;
        var pollTitle = document.getElementById("poll-title").value;
        var pollDesc = document.getElementById("poll-desc").value;
        var params = "poll-title=" + pollTitle + "&poll-desc=" + pollDesc;
        
        //alert(pollTitle);
        //alert(pollDesc);
        
        httpc.open("POST",url,true);
        httpc.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        
        
        
        
        httpc.send(params);
        alert("successful");
    }
}