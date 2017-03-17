<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
	<title>Edit a beer</title>
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="editbeer.css">
</head>
<body>
<%--  <h1>Edit a beer</h1>
<form action="EditBeer.do" method="POST" name="test">
	Beer name: ${currentBeer.name}<input name="name" type="hidden" value="${currentBeer.name}"/><br>
	Brewery: ${currentBeer.brewery}<input name="brewery" type="hidden" value="${currentBeer.brewery}"/><br>
	
	<input type="hidden" name="name" value="${currentBeer.id}"/><br>
	Edit name: <input type="text" name="name" value="${currentBeer.name}"/><br>
	Edit brewery: <input type="text" name="brewery" value="${currentBeer.brewery}"/><br>
	Edit city: <input type="text" name="city" value="${currentBeer.city}"/><br>
	Edit state: <input type="text" name="state" value="${currentBeer.state}"/><br>
	Edit percent alcohol: <input type="text" name="abv" value="${currentBeer.abv}"/><br>
	Edit pic: <input type="text" name="picURL" value="${currentBeer.picURL}"/><br>
	<button type="submit" value="Edit Beer">Submit changes</button>
</form>  --%>


<div class="container">
		<div class="text-center">
			<h2>Edit your beer here</h2>
		</div>
		<form class="form-horizontal" action="EditBeer.do" method="POST" name="bs">
		<input type="hidden" name="id" value="${currentBeer.id}">
			<div class="form-group">
				<label class="control-label col-sm-2">Edit name:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="name"
						value="${currentBeer.name}">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Edit
					brewery:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="brewery"
						value="${currentBeer.brewery}">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Edit city:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="city"
						value="${currentBeer.city}">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Edit state:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="state"
						value="${currentBeer.state}">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Edit alcohol content:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="abv"
						value="${currentBeer.abv}">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Edit image of your beer:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="picURL"
						value="${currentBeer.picURL}">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" value="Edit Beer" class="btn btn-default">Submit Changes</button>
				</div>
			</div>
		</form>
	</div>


</body>
</html>
