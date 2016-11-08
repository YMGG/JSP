<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"  import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>数据处理页面</title>
</head>
<body>
  <%
    String userName =
    new String(request.getParameter("userName").getBytes("ISO-8859-1"),
    "utf-8");
    String password = 
    new String(request.getParameter("password").getBytes("ISO-8859-1"),
    "utf-8");
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    if(userName.equals("")){
    	response.sendRedirect("login.jsp");
    }
    try{
    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
        String url="jdbc:sqlserver://localhost:1433;DatabaseName=qy";
        con=DriverManager.getConnection(url,"sa","1234");
    	st=con.createStatement();
    	String query="select * from user where userName='"+userName+"'";
    	rs=st.executeQuery(query);
    	if(rs.next()){
    		String query2="select * from user where password='"+password+"'";
    		rs=st.executeQuery(query2);
    		if(rs.next()){
    			response.sendRedirect("main.jsp");
    		}else{
    			response.sendRedirect("login.jsp");
    		}
    	}
    }catch(Exception e){
    	e.printStackTrace();
    }finally{
    	rs.close();
    	st.close();
    	con.close();
    }
  %>
</body>
</html>