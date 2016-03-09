/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function retrievePollChoices(pollId){
    alert('retrieving..');
    var httpc =  new XMLHttpRequest();
    var url = "../forms/retrieveChoicesFromMyPolls.jsp";
    var res;

    //alert(username);
    var params = "pollId=" + pollId;
    httpc.open("POST",url,true);
    
    httpc.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    
    httpc.onreadystatechange = function(){
        
        if (httpc.readyState === 4 && httpc.status === 200){
            res = httpc.responseText.toString();
            alert(res);
            if (res == 0){
                document.getElementById('showChoices').innerHTML = "ERROR 404"
            }
            else{
                document.getElementById('showChoices').innerHTML = res;
            }
            
        }

    }

    httpc.send(params);
}