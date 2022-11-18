<%-- 
    Document   : newjsp
    Created on : 18 nov. 2022, 11:58:34
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="script/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="script/userlogin.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form method="POST" action="/UserLogin">
            <input id="email" type="text" name="email" value="" />
            <input id="password" type="password" name="pass" value="" />
            <input id="login" type="submit" value="" />
        </form>
    </body>
</html>
