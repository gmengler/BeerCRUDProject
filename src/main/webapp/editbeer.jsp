<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Add a beer</title>
</head>
<body>
<h1>Add a beer</h1>

<form action="EditBeer.do" method="POST">
	Add name: <input type="text" name="name" value="${beer.name}"/><br>
	Add brewery: <input type="text" name="brewery" value="${beer.brewery}"/><br>
	Add city: <input type="text" name="city" value="${beer.city}"/><br>
	Add state: <input type="text" name="state" value="${beer.state}"/><br>
	Add percent alcohol: <input type="text" value="abv" value="${beer.abv}"/><br>
	<button type="submit" value="Edit Beer">Submit</button>
</form>


</body>
</html>
