<%-- 
    Document   : regResult
    Created on : 2015-11-13, 9:13:54
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String result = (String)request.getAttribute("result");
           if(result.equals("成功")){
        %>
        <h1>注册成功，3秒后自动跳转到登录页面。</h1>
        <meta http-equiv="refresh" content="3;url=login2.jsp"/>
        <%
           }
           else if(result.equals("失败"))
           {       
          %>
        <h1>注册失败，3秒后重新注册</h1>
        <meta http-equiv="refresh" content="3;url=reg.jsp"/>
        <%
          }
           else
           {
            %>
            <h1>用户名已存在，3秒后自动跳转到注册页面</h1>
            <meta http-equiv="refresh" content="3;url=reg.jsp"/>
            <%
           }
           %>
    </body>
</html>
