<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>License Dashboard</title>
</head>
<body>
	<h1>Licenses</h1>
	<a href="/persons/new"><button>Add Person</button></a> <a href="/licenses/new"><button>Add License</button></a><br>
	<br><table border="1">
		<tr>
			<th>Name</th>
			<th>ID</th>
		</tr>
		<c:forEach items="${persons}" var="persons">
		<tr>
			<td><a href="/persons/${persons.id}"><c:out value="${persons.firstName} ${persons.lastName}"/></a></td>
			<td><c:out value="${persons.id}"/></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>