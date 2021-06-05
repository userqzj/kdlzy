<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021-05-22
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>登录界面</title>
    <base href="<%=basePath%>">
</head>
<body>
<div align="center">
    <form action="user/login.do" method="post">
        <table>
            <tr>
                <td>姓名：</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="text" name="password"></td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td><input type="submit" value="提交"></td>
            </tr>

        </table>
    </form>
</div>
</body>
</html>
