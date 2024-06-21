<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SQL Tag Example</title>
</head>
<body>
hello world
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/dreamz_bank" user="root" password="password"/>
<sql:query var="rs" dataSource="${db}">
    SELECT * FROM dreamz_bank.student;
</sql:query>
<c:forEach items="${rs.rows}" var="student">
    <div>
        <c:out value="${student.SID}"/><br>
        <c:out value="${student.SName}"/><br>
        <c:out value="${student.SCity}"/><br>
    </div>
</c:forEach>
</body>
</html>
