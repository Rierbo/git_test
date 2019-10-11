<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>login</head>
  
  <body>
  	<form action="${pageContext.request.contextPath}/checklogin" method="POST">
  		账号：<input type="text" id="username" name="username" />
		密码：<input type="password" id="password" name="password" />
		<input type="submit" value="登录"/>
  	</form>
  </body>
</html>
