<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>ע��ҳ��</title>

	 
<style type="text/css">
body{
	width:100%;
	height:100%;
	background-image:url(image/one.jpg);
	background-repeat: repeat;
	font-family:"΢���ź�";
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
alert("����Ϊ��");
return false;
}else if(!regPartton.test(str)){
alert("�ֻ������ʽ����ȷ��");
utel.focus();
return false;
}else{
alert("������ȷ");
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
        <td width="50%" align="left"><h1>�û�ע��</h1></td>
        </th>
          
      <tr>
        <td  align="right">�û�����</td>
        <td >&nbsp;&nbsp;<input type="text" name="username"/></td>
     <td><font color="#999999">�û���������λ</font></td>
      </tr>
      <tr>
        <td  align="right">���룺</td>
        <td> &nbsp;&nbsp;<input type="password" name="password"/></td>
        <td><font color="#999999">����������λ</font></td>
      </tr>
      <tr>
        <td  align="right">�ظ����룺</td>
        <td > &nbsp;&nbsp;<input type="text" name="repassword"/></td>
      </tr>
     <!--  <tr>
        <td  align="right">���䣺</td>
        <td> &nbsp;&nbsp;<input type="text" name="msg"/></td>
        <td ><font color="#999999">��������Ч�������ַ</font></td>
      </tr> -->
      <tr>
        <td align="right">��ʵ������</td>
      <td> &nbsp;&nbsp;<input type="text" name="userrealname"/>          </tr>
      <tr>
        <td align="right">�Ա�</td>
        <td> &nbsp;
           <input type="radio" value="��" name="sex" checked/>��
           <input type="radio" value="Ů" name="sex"/>Ů          </td>
      </tr>
      <tr>
        <td align="right">���֤��</td>
      <td> &nbsp;&nbsp;<input type="text" name="useridcard"/>          </tr>
      <tr>
        <td align="right">��ϵ�绰��</td>
        <td> &nbsp;&nbsp;<input type="text" name="usermobile" id="utel"></td>
        <td ><font color="#999999">ֻ�������11λ������</font></td>
      </tr>
      <tr >
        <td height="69" colspan="2" align="center"><input name="" type="submit" value="ȷ��"/></td>
        <td ><a href="../��¼ҳ��/login2.html">�����˺ţ����¼</a></td>
      </tr>
    </table>
</div>
</div>
</form>
</body>
</html>
