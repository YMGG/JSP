<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
 request.setCharacterEncoding("utf-8");
 response.setCharacterEncoding("utf-8");
 response.setContentType("text/html; charset=utf-8");
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>强制删除</title>
</head>
<body>
   输入删除
<form action="delete.jsp" method="post">
请输入姓名删除 ：<input name="name" type="text"/><br>
<button type="sumbit" >提交</button>
</form>
       
    
</body>
</html>