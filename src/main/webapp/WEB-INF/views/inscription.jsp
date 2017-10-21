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

        .form-signin {
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
        }

        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
        }

        .form-signin .checkbox {
            font-weight: normal;
        }

        .form-signin .form-control {
            position: relative;
            height: auto;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            padding: 10px;
            font-size: 16px;
        }

        .form-signin .form-control:focus {
            z-index: 2;
        }

        .form-signin input[type="email"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }
    </style>
</head>
<body>

<div class="container">
    <div style='color: red'>
        ${SPRING_SECURITY_LAST_EXCEPTION.message}
    </div>
    <form class="form-signin" action="<%=request.getContextPath()%>/inscription" method="POST">
        <h2 class="form-signin-heading">Please sign up</h2>

        <br>
        <label for="mail" class="sr-only">Email address</label>
        <input type="email" id="mail" name="mail" class="form-control" placeholder="Email address" required autofocus>

        <br>
        <label for="fullname" class="sr-only">Full name</label>
        <input type="text" id="fullname" name="fullname" class="form-control" placeholder="full name" required autofocus>

        <br>
        <label for="country" class="sr-only">country</label>
        <input type="text" id="country" name="country" class="form-control" placeholder="country" required autofocus>

        <br>
        <label for="role" class="sr-only">Full name</label>
        <input type="text" id="role" name="role" class="form-control" placeholder="role" required autofocus>

        <br>
        <label for="password" class="sr-only">Password</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>

        <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
    </form>

</div> <!-- /container -->

<script src="/resources/bootstrap/js/jquery.min.js"></script>
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
