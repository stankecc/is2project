<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SOBE</title>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="roomsstyle.css" />
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
		      <div class="navbar-brand navbar-brand-centered">HOTEL MOTEL</div>
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
<div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
  

  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
    <li data-target="#bs-carousel" data-slide-to="1"></li>
    <li data-target="#bs-carousel" data-slide-to="2"></li>
  </ol>
  
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item slides active">
    <!-- Overlay -->
  <div class="overlay"></div>
      <div class="slide-1"></div>
      <div class="hero">
        <hgroup>
            <h1>JEDNOKREVETNE</h1>        
            <h3>King ili Queen size</h3>
        </hgroup>
        <a href="../reservationspage/reservation.jsp"><button class="btn btn-hero btn-lg" role="button">Rezervisite odmah</button></a>
      </div>
    </div>
    <div class="item slides">
      <div class="slide-2"></div>
      <div class="hero">        
        <hgroup>
            <h1>DVOKREVETNE</h1>        
            <h3>Najbolje za vas i porodicu</h3>
        </hgroup>       
        <a href="../reservationspage/reservation.jsp"><button class="btn btn-hero btn-lg" role="button">Rezervisite odmah</button></a>
      </div>
    </div>
    <div class="item slides">
      <div class="slide-3"></div>
      <div class="hero">        
        <hgroup>
            <h1>TROKREVETNE</h1>        
            <h3>Najbolje za vas i porodicu</h3>
        </hgroup>
        <a href="../reservationspage/reservation.jsp"><button class="btn btn-hero btn-lg" role="button">Rezervisite odmah</button></a>
      </div>
    </div>
  </div> 
</div>
</body>
</html>