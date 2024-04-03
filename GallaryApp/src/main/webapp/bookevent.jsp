<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.binclass.AdminBean"
       import="com.binclass.UserBean"
    %>
    <%@page import="com.daoclass.AminLoginDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
     <link href=" css/style.css" rel="stylesheet" />
     
      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- Custom styles for this template -->
  <link href=" css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
<title>SignUP</title>
<style>
.userlogin{
	background-color:pink;
	width:450px;
	height:700px;
	margin-top:1vh;
	border-radius:10px;
	border:2px solid white;
	
}
.be{
background-color:pink;


}

</style>
</head>
<body class="container-fluid be" >
<%   UserBean ub=(UserBean)session.getAttribute("user1"); 
%>
<div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container d-block">
          <div class="main_nav_menu">
            <div class="fk_width">
              <div class="custom_menu-btn">
                <button onclick="openNav()">
                  <span class="s-1"> </span>
                  <span class="s-2"> </span>
                  <span class="s-3"> </span>
                </button>
              </div>
              <div id="myNav" class="overlay">
                <div class="overlay-content">
                   <a class=""href="FeedBack.jsp" >FeedBack</a>
                  <a class="" href="BookingStatus?uid11=<%=ub.getUid()%>">Booking Status</a>
                  <a class="" href="#gal">GALLERY</a>
                  <a class="" href="bookevent.jsp">BOOKING</a>
                  <a href="logout" class="" >LOG OUT</a>
                </div>
              </div>
            </div>
            <a class="navbar-brand" href="UserPage.jsp">
              <span style="color:black;">
                Picstudio
              </span>
            </a>
            <div class="user_option" style="color:black; font-family:Arial;font-size:20px;font-weight:bold;">
              <a >
                <%=ub.getFname() %>
              </a>
              <form class="form-inline ">
                <button class="btn  nav_search-btn" type="submit"></button>
              </form>
            </div>
          </div>
        </nav>
      </div>
    </header>












	<div class="loginform">
		<div class="userlogin">
			<form action="bookevent" method="post">
				<div class="loginas">BOOK YOUR EVENT NOW</div>

				<div class="mb-2 ">
					<label for="exampleInputEmail1" class="form-label"> NAME </label> <input
						type="text" class="form-control" id="email"
						aria-describedby="emailHelp" required name="fullname">
				</div>
				<div class="mb-2 ">
					<label for="exampleInputEmail1" class="form-label">MOBILE </label>
					<input type="number" class="form-control" id="email"
						aria-describedby="emailHelp" required name="mobile">
				</div>
				<div class="mb-2 ">
					<label for="exampleInputEmail1" class="form-label">ALTERNATE
						NUMBER </label> <input type="number" class="form-control" id="email"
						aria-describedby="emailHelp" required name="alternumber">
				</div>
				<div class="mb-2">
					<label for="exampleInputPassword1" class="form-label">DATE</label>
					<input type="date" class="form-control" id="password" required
						name="bdate">
				</div>
				
				<div class="mb-2 d-flex ">
					<div class="loginas1">EVENT TYPE &nbsp;&nbsp;</div>
					<div>
						<select name="eventtype" >
							<option value="WEDDING">WEDDING</option>
							<option value="PRE WEDDING">PRE WEDDING</option>
							<option value="BIRTHDAY">BIRTHDAY</option>
							<option value="HALDI">HALDI</option>
							<option value="MEHENDI">MEHENDI</option>
							<option value="RING CEREMONEY">RING CEREMONEY</option>
							<option value="COLLEGE FUNCTION">COLLEGE FUNCTION</option>
							<option value="VILLAGE FUNCTION">VILLAGE FUNCTION</option>
						</select>
					</div>
				</div>
				<div class="mb-2">
					<label for="exampleInputPassword1" class="form-label">YOUR BUDGET</label>
					<input type="number" class="form-control" id="password" required
						name="budget">
				</div>
				<div class="mb-2">
					<label for="exampleInputPassword1" class="form-label">ADDRESS</label>
					<textarea name="eaddress" class=" form-control"></textarea>
              
                    
                    
				</div>
                 <div><input type="hidden" name="customer1" value="<%=ub.getUid() %>"></div>
                  <div><input type="hidden" name="status1" value="Pending"></div>


				<button type="submit" class="btn btn-primary form-control sbtn mt-5">BOOK NOW</button>




			</form>

		</div>

	</div>

  <footer class="footer_section ">
    <div class="container text-center">
      <p class="text-dark">
        &copy; <span id="displayYear"></span> All Rights Reserved. Design by
        <a href="https://html.design/" class="text-dark">@RJRAMAKANT</a>
      </p>
    </div>
  </footer>


	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>  
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>

  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <script src="js/custom.js"></script>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>  
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
</body>
</html>