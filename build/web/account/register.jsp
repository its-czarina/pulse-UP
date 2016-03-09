<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>PulseUP Register</title>
        <link rel="stylesheet" href="../styles/global.css"/>
        <link rel="stylesheet" href="../styles/account.css">
        <link rel="stylesheet" href="../styles/header.css"/>
        <script src="../scripts/credentialChecker.js"></script>
        <script scr="../scripts/jquery-1.11.3.js"></script>
        
    </head>
    
    
    <body>

        <div id="header"></div>
        <div id="reg-content">
            <div id="regheader">Registration Form</div>
            
            <div class="regfieldheader">First Name</div>
            <div class="regfield-holder">
                <input type="text" class="inputfield reginput" id="fname"/>
                
            </div>
            
            <div class="regfieldheader">Last Name</div>
            <div class="regfield-holder">
                <input type="text" class="inputfield reginput" id="lname"/>
                
            </div>
            
            <div class="regfieldheader">Student Number</div>
            <div class="regfield-holder">
                <input type="text" class="inputfield reginput" id="snumber" onchange="confirmStudentNumber()"/>
                <div class="field-notif"><div class="fnotif-text check" id="snumber-error"></div></div>
            </div>
            <div class="field-hint">e.g. 2013-48893</div>
            
            <div class="regfieldheader">Username</div>
            <div class="regfield-holder">
                <input type="text" class="inputfield reginput" id="uname" onchange="confirmUserName()"/>
                <div class="field-notif">
                    <div class="fnotif-text check" id="username-error"></div>
                </div>
            </div>
            <div class="field-hint">Numbers and letters only please.</div>
            
            <div class="regfieldheader">Password</div>
            <div class="regfield-holder">
                <input type="password" class="inputfield reginput" id="password"  onchange="checkPassword()"/>
                <div class="field-notif">
                    <div class="fnotif-text error" id="password-error"></div>
                </div>
            </div>
            <div class="field-hint">16 characters maximum</div>
            
            <div class="regfieldheader">Confirm Password</div>
            <div class="regfield-holder">
                <input type="password" class="inputfield reginput" id="passwordC" onchange="checkSamePassword()"/>
                <div class="field-notif">
                    <div class="fnotif-text error" id="passwordC-error"></div>
                </div>
            </div>
            
            <div id="regsubmith">
                <input type="submit" value="Submit" id="regsubmit" disabled="true" style="background:gray" onclick="insertToDatabase()"/><%--i change lang ni ang color/style pls lester--%>
            </div>
        </div>
    </body>
</html>
