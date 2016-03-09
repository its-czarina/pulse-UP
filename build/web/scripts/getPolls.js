function getPolls(url,divId,userId){
    
    var httpc = new XMLHttpRequest();
    var res;
    var params;
    
    params = "userId=" + userId;
    
//    alert(userId);
//    alert('in get polls');
    httpc.open("POST", url, true);
    httpc.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        
    httpc.onreadystatechange = function() {
        if(httpc.readyState === 4 && httpc.status === 200) {
            res = httpc.responseText.toString();
            //alert(res);
            processResponse(res,divId);
        }
    };
    
    httpc.send(params);
}

function processResponse(res,divId){
    
    if(res=="0"){
        document.getElementById(divId).innerHTML = "You have no such polls.";
        
    }
    else{
        document.getElementById(divId).innerHTML = res;
        
    }
}

