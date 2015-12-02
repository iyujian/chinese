<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>登录</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="col-md-4 col-md-offset-4">
        <form class="form-signin" action="auth" method="post">
            <h2 class="form-signin-heading">登录</h2>
            <label for="username" class="sr-only">账号</label>
            <input type="text" id="username" name="username" class="form-control" placeholder="账号" required autofocus>
            <label for="password" class="sr-only">密码</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="密码" required>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <c:if test="${code==-1}">
                <span id="helpBlock" class="help-block">账号或密码错误</span>
            </c:if>
            <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
        </form>
    </div>
</div>
</body>
</html>

