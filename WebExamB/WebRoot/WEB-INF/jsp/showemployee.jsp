<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  <body>
  	<table border="1">
  		<tr>
	  		<td>员工姓名</td>
	  		<td>员工性别</td>
	  		<td>员工年龄</td>
	  		<td>所属部门</td>
	  		<td>所在职务</td>
	  		<td>入职年份</td>
	  		<td>修改操作</td>
	  		<td>删除操作</td>
  		</tr>
  		<c:forEach var="employee" items="${employeelist}">
  			<tr>
  				<td>${employee.name}</td>
  				<td>${employee.sex}</td>
  				<td>${employee.age }</td>
  				<td>${employee.department }</td>
  				<td>${employee.type}</td>
  				<td>${employee.year}</td>
  				<td><a href="">修改</a></td>
  				<td><a href="">删除</a></td>
  			</tr>
  		</c:forEach>
  	</table>
  </body>
</html>
