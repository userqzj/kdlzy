<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>

<html>
<head>
    <title>功能入口</title>
    <base href="<%=basePath%>"/>
</head>
<body>
    <div align="center">
        <table>
            <tr>
                <td><a href="addUsers.jsp">注册</a> </td>
            </tr>
            <tr>
                <td><a href="login.jsp">登录</a> </td>
            </tr>
        </table>
    </div>


</body>
</html>
