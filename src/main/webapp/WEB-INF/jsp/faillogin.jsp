<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>

<html>
<head>
    <title></title>
    <base href="<%=basePath%>"/>
</head>
<body>
登录失败 用户名或密码错误 请重新登录
</body>
</html>
