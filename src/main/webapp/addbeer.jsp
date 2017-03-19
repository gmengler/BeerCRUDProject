<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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
	<!-- <div class="container-fluid">
		<div class="row">
			<div class="col-sm-4"></div>

			<div class="col-sm-4 text-center">
				<h2>Add a Beer</h2>
			</div>
			<div class="col-sm-4"></div>
		</div>
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<form action="AddBeer.do" method="POST">
					Add name: <input type="text" name="name" /><br> 
					Add brewery: <input type="text" name="brewery" /><br> 
					Add city: <input type="text" name="city" /><br> 
					Add state: <input type="text" name="state" /><br> 
					Add percent alcohol: <input type="text" name="abv" /><br>
					<button type="submit" value="Add Beer" class="btn btn-default">Submit</button>
				</form>
			</div>
			<div class="col-sm-3"></div>
		</div> -->
	<!-- <div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<form action="GetBeerList.do" method="GET">
					<button type=submit class="btn btn-danger btn-lg gradient">Cancel</button>
				</form>

			</div>
			<div class="col-sm-3"></div>
		</div> -->

	<!-- </div> -->

	<div class="container">
		<div class="text-center">
			<h2>Add A Beer</h2>
		</div>
		<form class="form-horizontal" action="AddBeer.do" method="POST">
			<div class="form-group">
				<label class="control-label col-sm-2">Add name:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="name"
						placeholder="Enter name">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Add
					brewery:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="brewery"
						placeholder="Enter brewery">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Add city:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="city"
						placeholder="Enter city">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Add state:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="state"
						placeholder="Enter state">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Alcohol content:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="abv"
						placeholder="Enter alcohol percentage">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Add image of your beer:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="picURL"
						placeholder="Enter URL">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
			</div>
		</form>
	</div>

</body>
</html>
