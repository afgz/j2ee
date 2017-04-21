<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Form</title>
</head>
<body>

	<form method="POST" action="StudentServlet">
		<h1>Add Student</h1>
		<label for="name">Name : </label>
		<input name="name" id="name" type="text"/>
		<button type="submit">add</button>
	</form>
	
	<c:forEach items="${name}" var="item">
		<br>${item.key} ${item.value}<br>
		<form method="POST" action="StudentServlet">
			<input name="index" type="hidden" value=${item.key} />
			<button type="submit">delete</button>
		</form>
	</c:forEach>
</body>
</html>