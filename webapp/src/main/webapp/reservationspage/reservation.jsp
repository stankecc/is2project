<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>REZERVACIJE</title>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="reservationstyle.css" />

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
  
  <script>
  $( function() {
    $( "#datepicker1" ).datepicker();
  } );
  </script>

</head>
<body>
<nav class="navbar navbar-default" id="navbar-override" role="navigation">
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
		<h1>REZERVACIJE</h1>
		</br>
	</div>
	
	<div class="about-text">
		<form action="" method="">
			<table class="table-fill">
				
				<tr>
					<td class="text-left">
						<label for="select-box">Odaberite tip sobe</label>
					</td>
					<td class="text-right">
						<select name="category">
							  <c:forEach var="tip" items="${sobe}">
							       <option value="${tip.tipSobe}">${tip.tipSobe}</option>
							   </c:forEach>
						</select>
					</td>
				</tr>
				
				<tr>
					<td class="text-left">
						<label for="datumRezervacije">Datum rezervacije</label>
					</td>
					<td class="text-right">
						<input type="text" id="datepicker">
					</td>
				</tr>
				
				<tr>
					<td class="text-left">
						<label for="trajanjeBoravka">Trajanje boravka(broj dana)</label>
					</td>
					<td class="text-right">
						<input type="text" id="trajanje"> 
					</td>
				</tr>
				
				<tr>
					<td class="text-left">
						<label for="imeLabela">Ime</label>
					</td>
					<td class="text-right">
						<input type="text" id="ime"> 
					</td>
				</tr>
				
				<tr>
					<td class="text-left">
						<label for="prezimeLabela">Prezime</label>
					</td>
					<td class="text-right">
						<input type="text" id="prezime"> 
					</td>
				</tr>
				
				<tr>
					<td class="text-left">
						<label for="jmbgLabela">JMBG</label>
					</td>
					<td class="text-right">
						<input type="text" id="jmbg"> 
					</td>
				</tr>
				
				<tr>
					<td class="text-left">
						<label for="datumRodjenja">Datum rodjenja</label>
					</td>
					<td class="text-right">
						<input type="text" id="datepicker1">
					</td>
				</tr>
			</table>
			<div class="button-container">
				<input type="submit" class="button" value="Potvrdi">
			</div>
		</form>
	</div>
	
</div>




<!-- text -->


</body>
</html>