<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
	<title>Edit a beer</title>
</head>
<body>
<h1>Edit a beer</h1>
<form action="EditBeer.do" method="POST">
	<%-- Beer name: ${currentBeer.name}<input name="name" type="hidden" value="${currentBeer.name}"/><br>
	Brewery: ${currentBeer.brewery}<input name="brewery" type="hidden" value="${currentBeer.brewery}"/><br> --%>
	Edit name: <input type="text" name="name" value="${currentBeer.name}"/><br>
	Edit brewery: <input type="text" name="brewery" value="${currentBeer.brewery}"/><br>
	Edit city: <input type="text" name="city" value="${currentBeer.city}"/><br>
	Edit state: <input type="text" name="state" value="${currentBeer.state}"/><br>
	Edit percent alcohol: <input type="text" name="abv" value="${currentBeer.abv}"/><br>
	<button type="submit" value="Edit Beer">Submit changes</button>
</form>


</body>
</html>
