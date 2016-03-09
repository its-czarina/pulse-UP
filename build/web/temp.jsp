<%-- 
    Document   : temp
    Created on : Oct 28, 2015, 5:12:28 PM
    Author     : czarinarae
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="../scripts/retrievePoll.js"></script>
        <script type="text/javascript" src="../scripts/retreivePollChoices.js"></script>
        
    </head>

    <body onload = "retrievePoll(<% request.getParameter("pollId"); %>), 
                        retrievePollChoices(<% request.getParameter("pollId"); %>)">
        <div id="error-msg">

        </div>
        <div id="showItems">

        </div>
        <div id="showChoices">

        </div>
            <div>

                <button name="czar" id="submit-changes">Update</button>
        </div>
    </body>
</html>
