<%-- 
    Document   : addChoice
    Created on : Oct 26, 2015, 9:47:09 PM
    Author     : rub account
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Choice</title>
        <link rel="stylesheet" href="../styles/global.css"/>
        <link rel="stylesheet" href="../styles/account.css">
        <link rel="stylesheet" href="../styles/header.css"/>
        <script src="../scripts/choiceChecker.js"></script>
    </head>
    <body>

        <div id="header"></div>
        <div id="reg-content">
            <div id="regheader">Add Choice</div>
            <div class="regfieldheader">Choice</div>
            <div class="regfield-holder">
                <input type="text" class="inputfield reginput" id="title" onchange="checkTitle()"/>
                <div class="field-notif"><div class="fnotif-text check" id="title-error"></div></div>
            </div>
           
            
            <div class="regfieldheader">Description</div>
            <div class="regfield-holder">
                <input type="text" class="inputfield reginput" id="description" onchange="checkDesc()"/>
                <div class="field-notif">
                    <div class="fnotif-text check" id="desc-error"></div>
                </div>
            </div>
             <div class="field-hint">Provide a short description</div>
            
            <div id="regsubmith">
                <input type="submit" value="Submit" id="regsubmit" disabled="true" style="background:gray" onclick="insertChoiceToDatabase()"/><%--i change lang ni ang color/style pls lester--%>
            </div>
        </div>
    </body>
</html>
