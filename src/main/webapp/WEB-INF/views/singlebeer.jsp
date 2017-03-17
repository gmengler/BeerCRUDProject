<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Beer</title>
</head>

<body>
	<c:choose>
		<c:when test="${! empty beer}">
			<ul>
				<li>${beer.name}</li>
				<li>${beer.brewery}</li>
				<li>${beer.city}, ${beer.state}</li>
				<li>${beer.abv}</li>
			</ul>
		
		<form action="EditBeer.do" method="GET">
			<button type="submit" name="name" value="${beer.name}">Edit Beer</button>
		</form>
		
		</c:when>
		<c:otherwise>
    No state found
  </c:otherwise>
	</c:choose>

	<br/>
</body>

</html>
