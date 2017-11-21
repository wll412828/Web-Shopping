<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
  
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
   <%
        String info = (String)request.getAttribute("info");
            if(info != null) {
                out.print("<center>");
                out.print("<font size=10>");
                out.print("<B>");
                out.print(info);
                out.print("</B>");
                out.print("</font>");
                out.print("</center>");
        }
    %>
  </body>
</html>
