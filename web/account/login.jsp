 <!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>PulseUP Log In</title>
        <script type="text/javascript" src="../scripts/authenticateLogin.js"></script>
        <link rel="stylesheet" href="../styles/global.css"/>
        <link rel="stylesheet" href="../styles/account.css">
    </head>
    <body>
        <div id="bg-underlay"></div>
        
         
        <div id="error-msg" class="hidden">
           
        </div>
        <div id="login-content" class="dead-center">
            
                <div id="logindiv" class="panel">
                    <div id="sitename" class="theme-color">PulseUP</div>
                    <div id="tagline" class="theme-color">Your vote matters.</div>
                    <div class="field-holder">
                        <input type="text" id="username-lg" name="uname" class="account-fields" placeholder="Username"/>
                    </div>
                    <div class="field-holder" id="pword-fieldh">
                        <input type="password" id="password-lg" name="password" class="account-fields" placeholder="Password"/>
                    </div>
                    <div class="field-holder" id="submit-btnh">
                        <input type="submit" id="submit-login" class="submit-button" onclick="authenticateLogin()" value="LOGIN"/>
                    </div>
               </div>
            
           <div id="joindiv" class="panel">
               <div id="join-header">Join PulseUP now!</div>
                <div class="field-holder" id="register-btnh">
                    <a href="../account/register.jsp"><input type="submit" id="register-btn" class="submit-button" value="REGISTER"/></a>
                </div>
           </div>
        </div>
    </body>
</html>
