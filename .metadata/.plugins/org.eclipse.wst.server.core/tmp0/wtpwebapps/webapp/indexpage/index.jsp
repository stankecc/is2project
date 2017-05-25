<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HOTEL MOTEL</title>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" media="all">
<link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css" rel="stylesheet" media="all">
<script src="indexscript.js"></script>
<link rel="stylesheet" type="text/css" href="indexstyle.css" />
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
		        <li><a href="webapp/CenovnikServlet">REZERVACIJE</a></li>
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
<div id="bootstrap-touch-slider" class="carousel bs-slider slide  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="5000" >

            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#bootstrap-touch-slider" data-slide-to="0" class="active"></li>
                <li data-target="#bootstrap-touch-slider" data-slide-to="1"></li>
                <li data-target="#bootstrap-touch-slider" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper For Slides -->
            <div class="carousel-inner" role="listbox">

                <!-- Third Slide -->
                <div class="item active">

                    <!-- Slide Background -->
                    <img src="https://images.trvl-media.com/hotels/4000000/3490000/3484400/3484306/3484306_78_z.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>

                    <div class="container">
                        <div class="row">
                            <!-- Slide Text Layer -->
                            <div class="slide-text slide_style_left">
                                <h1 data-animation="animated zoomInRight">Hotel Motel</h1>
                                <p data-animation="animated fadeInLeft">Ekskluzivni hotel, Novi Sad</p>
                                <a href="../pricesspage/prices.jsp" target="_blank" class="btn btn-default" data-animation="animated fadeInLeft">cenovnik</a>
                                <a href="../reservationspage/reservation.jsp" target="_blank"  class="btn btn-primary" data-animation="animated fadeInRight">rezervacije</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End of Slide -->

                <!-- Second Slide -->
                <div class="item">

                    <!-- Slide Background -->
                    <img src="http://fridayoffbeat.com/Friday%20Offbeat%20_%20Home_files/restaurant_table_interior_modern_style_39288_1920x1080.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>
                    <!-- Slide Text Layer -->
                    <div class="slide-text slide_style_center">
                        <h1 data-animation="animated flipInX">Pogledajte nasu ponudu prenocista</h1>
                        <p data-animation="animated lightSpeedIn">Moderno opremljene sobe lol</p>
                        <a href="../roomspage/rooms.jsp" target="_blank" class="btn btn-default" data-animation="animated fadeInUp">sobe</a>
                        <a href="../reservationspage/reservation.jsp" target="_blank"  class="btn btn-primary" data-animation="animated fadeInDown">rezervacije</a>
                    </div>
                </div>
                <!-- End of Slide -->

                <!-- Third Slide -->
                <div class="item">

                    <!-- Slide Background -->
                    <img src="http://renatures.com/wp-content/uploads/2017/03/beaches-sea-gazebo-palms-chairs-beach-pool-hotel-tropical-hd-wallpaper-android.jpeg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>
                    <!-- Slide Text Layer -->
                    <div class="slide-text slide_style_right">
                        <h1 data-animation="animated zoomInLeft">Hotel Motel</h1>
                        <p data-animation="animated fadeInRight">Ekskluzivni hotel, Novi Sad</p>
                        <a href="../aboutpage/aboutus.jsp" target="_blank" class="btn btn-default" data-animation="animated fadeInLeft">o nama</a>
                        <a href="../kontaktpage/kontakt.jsp" target="_blank" class="btn btn-primary" data-animation="animated fadeInRight">kontakt</a>
                    </div>
                </div>
                <!-- End of Slide -->


            </div><!-- End of Wrapper For Slides -->

            <!-- Left Control -->
            <a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev">
                <span class="fa fa-angle-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>

            <!-- Right Control -->
            <a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next">
                <span class="fa fa-angle-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

</div> <!-- End  bootstrap-touch-slider Slider -->
</body>
</html>