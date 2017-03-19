<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Beer</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="singlebeer.css">
</head>

<body>
	<div class="container-fluid">
		<div class="row" id="current">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<div class="text-center">
					<h2>Selected Beer</h2>
				</div>
			</div>
			<div class="col-sm-2"></div>

		</div>
		<c:choose>
			<c:when test="${! empty beer}">
				<div class="row">
					<div class="col-sm-3"></div>
					<div class="col-sm-3 text-center" id="beerinfo">
						<strong>Beer name: </strong> ${beer.name}<br> <strong>Brewery:
						</strong> ${beer.brewery}<br> <strong>City, State: </strong>
						${beer.city}, ${beer.state}<br> <strong>ABV: </strong>
						${beer.abv}<br>
					</div>
					<div class="col-sm-3">
						<img class="resize img-responsive center-block"
							src="${beer.picURL}" />
					</div>
					<div class="col-sm-3"></div>
				</div>
				<div class="row">
					<div class="col-sm-3"></div>
					<div class="col-sm-3 buttons text-center">
						<form action="editbeer.jsp" method="POST">
							<button type="submit" name="name" value="${beer}"
								class="btn btn-default">Edit Beer</button>
						</form>
					</div>
					<div class="col-sm-3 buttons text-center">
						<form action="GetBeerList.do" method="GET">
							<button type=submit class="btn btn-default">Back to List</button>
						</form>
					</div>
					<div class="col-sm-3"></div>
				</div>
			</c:when>
			<c:otherwise>
    	No beer found
  		</c:otherwise>
		</c:choose>

	</div>


</body>

</html>
