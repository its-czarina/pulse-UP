<%-- response.sendRedirect("../PulseUP1/account/login.jsp"); --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PulseUP</title>
        <script type="text/javascript" src="scripts/getPolls.js"></script>
        <script type="text/javascript" src="scripts/showPollDiv.js"></script>
        <link rel="stylesheet" href="styles/global.css"/>
        <link rel="stylesheet" href="styles/header.css"/>
        <link rel="stylesheet" href="styles/home.css"/>
    </head>
    <body onload="getPolls('account/getSubscribedPolls.jsp','subscribed-polls','4'), 
                getPolls('account/getMyPolls.jsp','my-polls','4'), 
                getPolls('account/getDiscoverPolls.jsp','discover-polls','4')">
        <div id="header">
            <div style="float: left; margin-left: 100px;">
                <input type="button" value="Create Poll"/>
            </div>
            <div style="float: right; margin-right: 100px;">
                <input type="button" value="Log-out"/>
            </div>
        </div>
        <div id="home-content">
            <div id='head'>This is Sparta! (Home)</div>
            <br/>
            
            <a onclick="showPollDiv('subscribed-polls','discover-polls','my-polls')" 
               class="clickable" >Subscribed Polls</a>
            <a onclick="showPollDiv('discover-polls','subscribed-polls','my-polls')" 
               class="clickable">Discover Polls</a>
            <a onclick="showPollDiv('my-polls','discover-polls','subscribed-polls')" 
               class="clickable">My Polls</a>
  
            <div>
                
                <div id="subscribed-polls" style="display: inline-block">
                    
                </div>

                <div id="discover-polls" style="display: none">
                    
                </div>
                
                <div id="my-polls" style="display: none">
                    
                </div>
                
             </div>
            <!------------------------------------------------------------------>
            <a href="account/login.jsp">Login</a>
            <a href="account/register.jsp">Register</a>
        </div>
        <form action="verifyLogin" method=do"> 
            <h1><%
                Cookie[] cookies = request.getCookies();
                if (cookies == null) {
                    response.sendRedirect("../account/login.jsp");
                } else {
                    out.print(cookies[0].getValue().toString() + " is the encrypted username logged in!");%>
                    <div>  </div>
                <%     
                }
            %></h1>
        </form>
    </body>
</html>