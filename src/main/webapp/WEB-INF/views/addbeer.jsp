<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Add a beer</title>
</head>
<body>
<h1>Add a beer</h1>

<c:forEach items="${beerlist }" var="beer">
	Beer name: ${beer.name}<br>
	Brewery: ${beer.brewery}<br>
	City: ${beer.city}, ${beer.state}<br>
	Alcohol by volume: ${beer.abv}%<br>
	<br>
</c:forEach>

</body>
</html>
