<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>登录后</title>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            //在当前页面dom对象加载后，执行loadStudentData（）
            //loadStudentData();
            $("#btnLoader").click(function () {
                loadStudentData();
            })
        })
        function loadStudentData() {
            $.ajax({
                url:"user/queryUsers.do",
                type:"get",
                dataType:"json",
                success:function (data) {
                    //清除旧的数据
                    $("#info").html("");
                    //增加新的数据
                    $.each(data,function (i,n) {
                        $("#info").append("<tr>")
                            .append("<td>"+n.username+"</td>")
                            .append("<td>"+n.age+"</td>")
                            .append("<td>"+n.birthday+"</td>")
                            .append("</tr>")
                    })
                }
            })
        }
    </script>
</head>
<body>

   <div align="center">
       <table>
           <tr>
               ${tips}
           </tr>
           <tr>
               <td><a href="/kdl">注销</a> </td>
           </tr>
       </table>
       <table>
           <thead>
           <tr>
               <td>姓名</td>
               <td>年龄</td>
               <td>生日</td>
           </tr>
           </thead>
           <tbody id="info">
           </tbody>
       </table>
       <input type="button" id="btnLoader" value="用户详细信息"/>
   </div>
</body>
</html>
