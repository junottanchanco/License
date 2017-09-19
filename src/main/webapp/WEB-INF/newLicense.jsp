<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New License</title>
</head>
<body>
	<a href="/"><button>License Dashboard</button></a>
	<h1>New License</h1>
	<form:form action="/licenses/new" method="POST" modelAttribute="license">
		<form:label path="person">Person:
			<form:select path="person">
				<c:forEach items="${persons}" var="person">
					<form:option value="${person.id}">
						<c:out value="${person.firstName} ${person.lastName}"/>
					</form:option>
				</c:forEach>
			</form:select>
		</form:label><br>
		<form:label path="state">State:
			<form:input type="text" path="state" placeholder="ex. VA/NY/WA"/>
		</form:label><br>
		<form:label path="expiration_date">Expiration Date:
			<form:errors path="expiration_date"/>
			<form:input type="date" path="expiration_date"/>
		</form:label><br>
		
		<br><input type="submit" value="Create">
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