<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Beer List</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Beer List</h1>

<form action="index.html">
	<button type="submit" class="btn btn-default">Home</button>
</form>
<form action="addbeer.jsp" method="POST">
	<button type="submit" class="btn btn-default">Add a Beer</button>
</form>

<c:forEach items="${beerlist }" var="beer">
	Beer name: ${beer.name}<br>
	Brewery: ${beer.brewery}<br>
	City: ${beer.city}, ${beer.state}<br>
	Alcohol by volume: ${beer.abv}%<br>
	<br>
	<form action="ViewBeer.do" method="GET">
		<button type="submit" name="name" value="${beer.name}" class="btn btn-default">Select Beer</button>
	</form>
	<form action="DeleteBeer.do" method="POST">
		<button type="submit" name="name" value="${beer.name}" class="btn btn-default">Delete Beer</button>
	</form>
</c:forEach>

</body>
</html>
