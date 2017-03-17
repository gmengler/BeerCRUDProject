<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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
<link rel="stylesheet" type="text/css" href="beerlist.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row hbeer">
			<div class="col-sm-3"></div>

			<div class="col-sm-1 text-center vertical-align">
				<form action="index.html">
					<button type="submit" class="btn btn-default">Home</button>
				</form>
			</div>
			<div class="col-sm-4 text-center" id="verticalalignbeerlist">
				<h2>List of Beers</h2>
			</div>
			<div class="col-sm-1 text-center vertical-align">
				<form action="addbeer.jsp" method="POST">
					<button type="submit" class="btn btn-default">Add a Beer</button>
				</form>
			</div>
			<div class="col-sm-3"></div>
		</div>
			<c:forEach items="${beerlist}" var="beer">
				<div class="row">
					<div class="col-sm-3"></div>
					<div class="col-sm-4" id="beerinfo">
							<strong>Beer name:</strong> ${beer.name}<br> <strong>Brewery:</strong>
							${beer.brewery}<br> <strong>City:</strong> ${beer.city},
							${beer.state}<br> <strong>Alcohol by volume:</strong>
							${beer.abv}%<br> <br>
					</div>
					<div class="col-sm-2 text-center">
						<div id="beerpic">
							<img class="resize img-responsive center-block" src="${beer.picURL}"/>
						</div>
					</div>
					<div class="col-sm-3"></div>
				</div>
				<div class="row text-center">
					<div class="col-sm-4"></div>
					<div class="col-sm-2">
						<form action="ViewBeer.do" method="GET">
							<button type="submit" name="name" value="${beer.name}"
								class="btn btn-default">Select Beer</button>
						</form>
					</div>
					<div class="col-sm-2">
						<form action="DeleteBeer.do" method="POST">
							<button type="submit" name="name" value="${beer.name}"
								class="btn btn-danger">Delete Beer</button>
						</form>
					</div>
					<div class="col-sm-4"></div>
				</div>
			</c:forEach>
	</div>
</body>
</html>
