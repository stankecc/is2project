<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CENOVNIK</title>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="pricesstyle.css" />

</head>
<body>

<nav class="navbar navbar-default" role="navigation">
          <div class="container">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-brand-centered">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <div class="navbar-brand navbar-brand-centered"><a href="../indexpage/index.jsp">HOTEL MOTEL</a></div>
		    </div>

		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="navbar-brand-centered">
		      <ul class="nav navbar-nav">
		        <li><a href="../reservationspage/reservation.jsp">REZERVACIJE</a></li>
		        <li><a href="../pricespage/prices.jsp">CENOVNIK</a></li>
		        <li><a href="../roomspage/rooms.jsp">TIP SOBA</a></li>
		      </ul>
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="../aboutpage/aboutus.jsp">O NAMA</a></li>
		        <li><a href="../kontaktpage/kontakt.jsp">KONTAKT</a></li>
		        <li><a href="#">SIGN OUT</a></li>		        
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
</nav>
<div class="fullscreen-bg">
    <video loop muted autoplay poster="img/videoframe.jpg" class="fullscreen-bg__video">
        <source src="../video/Big-Apple.webm" type="video/webm">
        <source src="../video/Big-Apple.mp4" type="video/mp4">s
    </video>
</div>
<div class="text-section">

	<div class="title-about">
		<h1>CENOVNIK</h1>
		</br>
	</div>
	
	<div class="about-text">
		<table class="table-fill">
			<thead>
				<tr>
					<th class="text-left">Tip sobe</th>
					<th class="text-right">Cena nocenja</th>
				</tr>
			</thead>
			<tbody class="table-hover">
				<c:forEach var="cena" items="${cenovnik }">
					<tr>
						<td class="text-left">${cena.tipSobe }</td>
						<td class="text-right">${cena.cenaSobe }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>




<!-- text -->


</body>
</html>