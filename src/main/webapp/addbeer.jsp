<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Add a beer</title>
</head>
<body>
<h1>Add a beer</h1>

<form action="AddBeer.do" method="POST">
	Add name: <input type="text" name="name"/><br>
	Add brewery: <input type="text" name="brewery" /><br>
	Add city: <input type="text" name="city"/><br>
	Add state: <input type="text" name="state"/><br>
	Add percent alcohol: <input type="text" value="abv"/><br>
	<button type="submit" value="Add Beer">Submit</button>
</form>


</body>
</html>
