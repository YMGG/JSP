<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>第一个女朋友</title>
</head>
<body>
  <h1>
   第一个女朋友的信息
  </h1>
 <from actiom="showGirl.jsp" method="post">
  <p>颜值：<input type="text" name="yanZhi" /></p>
  <p>体重：<input type="text" name="tiZhong" /></p>
  <p>身高：<input type="text" name="shenGao" /></p>
  <p>怒值：<input type="text" name="shengQi" /></p>
  <p>爱值：<input type="text" name="ai" /></p>
  <button type="submit">提交</button>
 </from>
</body>
</html>