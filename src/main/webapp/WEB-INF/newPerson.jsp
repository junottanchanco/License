<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Person</title>
</head>
<body>
	<a href="/"><button>License Dashboard</button></a>
	<h1>New Person</h1>
	<form:form action="/persons/new" method="POST" modelAttribute="person">
		<form:input path="firstName" placeholder="First Name"/><br>
		<form:input path="lastName" placeholder="Last Name"/><br>
		<br><input type="submit" value="create">
	</form:form>
	
	<% if(request.getAttribute("errors") != null){ %>
	<fieldset>
	<legend>Errors</legend>
		<c:forEach items="${errors}" var="error">
			<p><c:out value="${error.getDefaultMessage()}"/></p>
		</c:forEach>
	</fieldset>
	<%} %>
</body>
</html>