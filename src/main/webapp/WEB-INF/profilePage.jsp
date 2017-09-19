<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Page</title>
</head>
<body>
	<a href="/"><button>License Dashboard</button></a>
	<h1><c:out value="${person.firstName} ${person.lastName}"/></h1>
	<p><b>License Number:</b> <c:out value="${person.license.number}"/></p>
	<p><b>State:</b> <c:out value="${person.license.state}"/></p>
	<p><b>Expiration Date:</b> <c:out value="${person.license.expiration_date}"/></p>
</body>
</html>