<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>注册页面</title>

	 
<style type="text/css">
body{
	width:100%;
	height:100%;
	background-image:url(image/one.jpg);
	background-repeat: repeat;
	font-family:"微软雅黑";
	}

#content {
float:left;
margin-left:80px;
	 }
tr{
	height:40px;}
a{
	text-decoration:none;
	font-style:italic;
	}
h1{
	color:#0CC;}

</style>

  </head>
  <script>
function checkForm(){
if(!document.getElementById || !document.createTextNode) return false;
var utel=document.getElementById("utel");
var str=utel.value;
var regPartton=/1[3-8]+\d{9}/;
if(!str || str==null){
alert("号码为空");
return false;
}else if(!regPartton.test(str)){
alert("手机号码格式不正确！");
utel.focus();
return false;
}else{
alert("输入正确");
return true;
}
}


</script>
  <body>
  <form action="RegServlet" method="post" onsubmit="return checkForm()">
<div class="overall">
<div id="content" >

    <table width="100%" bgcolor="" align="left" >
      <th height="39">
        <td width="50%" align="left"><h1>用户注册</h1></td>
        </th>
          
      <tr>
        <td  align="right">用户名：</td>
        <td >&nbsp;&nbsp;<input type="text" name="username"/></td>
     <td><font color="#999999">用户名至少三位</font></td>
      </tr>
      <tr>
        <td  align="right">密码：</td>
        <td> &nbsp;&nbsp;<input type="password" name="password"/></td>
        <td><font color="#999999">密码至少六位</font></td>
      </tr>
      <tr>
        <td  align="right">重复密码：</td>
        <td > &nbsp;&nbsp;<input type="text" name="repassword"/></td>
      </tr>
     <!--  <tr>
        <td  align="right">邮箱：</td>
        <td> &nbsp;&nbsp;<input type="text" name="msg"/></td>
        <td ><font color="#999999">请输入有效的邮箱地址</font></td>
      </tr> -->
      <tr>
        <td align="right">真实姓名：</td>
      <td> &nbsp;&nbsp;<input type="text" name="userrealname"/>          </tr>
      <tr>
        <td align="right">性别：</td>
        <td> &nbsp;
           <input type="radio" value="男" name="sex" checked/>男
           <input type="radio" value="女" name="sex"/>女          </td>
      </tr>
      <tr>
        <td align="right">身份证：</td>
      <td> &nbsp;&nbsp;<input type="text" name="useridcard"/>          </tr>
      <tr>
        <td align="right">联系电话：</td>
        <td> &nbsp;&nbsp;<input type="text" name="usermobile" id="utel"></td>
        <td ><font color="#999999">只能填最多11位的数字</font></td>
      </tr>
      <tr >
        <td height="69" colspan="2" align="center"><input name="" type="submit" value="确认"/></td>
        <td ><a href="../登录页面/login2.html">已有账号，请登录</a></td>
      </tr>
    </table>
</div>
</div>
</form>
</body>
</html>
