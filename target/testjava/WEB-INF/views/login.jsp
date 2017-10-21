<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/bootstrap/css/bootstrap-grid.min.css" rel="stylesheet">
    <link href="/resources/bootstrap/css/bootstrap-reboot.min.css" rel="stylesheet">


    <style>
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #eee;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4 col-10 offset-1 col-sm-10 offset-sm-1">
            <div style='color: red'>
                ${SPRING_SECURITY_LAST_EXCEPTION.message}
            </div>
            <form class="form-signin" action="<%=request.getContextPath()%>/appLogin" method="POST">
                <h2 class="form-signin-heading">Please sign in</h2>
                <label for="app_username" class="sr-only">Email address</label>
                <input type="text" id="app_username" name="app_username" class="form-control"
                       placeholder="Email address" required autofocus>
                <br>
                <label for="app_password" class="sr-only">Password</label>
                <input type="password" id="app_password" name="app_password" class="form-control" placeholder="Password"
                       required>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            </form>
            <a href="/inscription">Sign up</a>
        </div>
    </div>


</div> <!-- /container -->
<script src="https://npmcdn.com/tether@1.2.4/dist/js/tether.min.js"></script>
<script src="/resources/bootstrap/js/jquery-3.2.1.min.js"></script>
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
