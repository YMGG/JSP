<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="utf-8" import="java.sql.*,java.io.*"%>
<%@page %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改</title>
</head>
<body>
<%
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
   String connectSQL="jdbc:sqlserver://localhost:1433/software";
   Connection conn=java.sql.DriverManager.getConnection(connectSQL,"Wave",""); 

   String sql="update student set name=?,age=?,major=? where id=?";
   PreparedStatement ps =conn.prepareStatement(sql);

   String id=request.getParameter("id");
   String name=request.getParameter("name");
   String age=request.getParameter("age");
   String major=request.getParameter("major");

   ps.setString(1,name);
   ps.setInt(2,Integer.parseInt(age));
   ps.setString(3,major);
   ps.setInt(4,Integer.parseInt(id));
  
   int result=ps.executeUpdate();
   
   ps.close();
   conn.close();

%>

<h1>
   数据修改成功！
</h1>
<% response.sendRedirect("connect.jsp");
   session.setAttribute("info","数据修改成功");
%>

</body>
</html>