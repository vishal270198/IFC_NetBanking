<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Account Opening</title>
</head>
<p>
            ACCOUNT OPENED WITH ACCOUNT NUMBER.......
</p>

<%
int num=(Integer)session.getAttribute("accNo");

 out.println(num);

%>
<a href="index.jsp">BANKING SERVICE</a><br><br>
<a href="Logout.jsp">LOGOUT...</a>
</html>
