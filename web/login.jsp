<%-- 
    Document   : login
    Created on : Jan 7, 2024, 12:02:44 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@include file="common/header.jsp" %>
        <link rel="stylesheet" href="css/login.css"/>
    </head>
    <body class="text-center" >
        <main class="form-signin">
            <form action="login" method="post">
                <img class="mb-4" src="image/studying.png" alt="" width="72" height="57">
                <h1 class="h3 mb-3 fw-normal">Log in</h1>
                <div class="form-floating">
                    <input type="text" name="username" class="form-control" id="floatingInput" placeholder="Username"/>
                    <label for="floatingInput">Username</label>
                </div>
                <div class="form-floating">
                    <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password"/>
                    <label for="floatingInput">  Password</label>
                </div>
                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>

                <input class="w-100 btn btn-lg btn-primary" type="submit"value="Login" />
            </form>
            <p style="color: red">${msg}</p>
        </main>
            <%@include file="common/script.jsp" %>
    </body>
</html>
