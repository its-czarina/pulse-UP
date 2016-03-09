/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function retrievePoll(pollId){
    alert('retrieving..');
    var httpc =  new XMLHttpRequest();
    var url = "../forms/retrievePollsFromMyPolls.jsp";
    var res;

    //alert(username);
    var params = "userId=" + pollId;
    httpc.open("POST",url,true);
    
    httpc.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    
    httpc.onreadystatechange = function(){
        
        if (httpc.readyState === 4 && httpc.status === 200){
            res = httpc.responseText.toString();
            alert(res);
            if (res == 0){
                document.getElementById('showItems').innerHTML = "ERROR 404"
            }
            else{
                document.getElementById('showItems').innerHTML = res;
            }
            
        }

    }

    httpc.send(params);
}