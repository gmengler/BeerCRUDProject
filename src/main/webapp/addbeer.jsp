<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Add a beer</title>
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="addbeer.css">
</head>
<body>

<div class="container-fluid">


</div>


<h1>Add a beer</h1>

<form action="AddBeer.do" method="POST">
	Add name: <input type="text" name="name"/><br>
	Add brewery: <input type="text" name="brewery" /><br>
	Add city: <input type="text" name="city"/><br>
	Add state: <input type="text" name="state"/><br>
	Add percent alcohol: <input type="text" name="abv"/><br>
	<button type="submit" value="Add Beer">Submit</button>
</form>


</body>
</html>
