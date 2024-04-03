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
	background-color:#0AD6AA;
	width:450px;
	height:700px;
	margin-top:1vh;
	border-radius:10px;
	border:2px solid white;
	
}
.be{
background-color:#39E9C3;


}

</style>
</head>
<body class="container-fluid be" >
<%   AdminBean ab=(AdminBean)session.getAttribute("admin1"); 
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
                   <a class="" href=""><%=ab.getFname() %></a>
                  <a class="" href="NextEvent.jsp">NEXT EVENT</a>
                  <a class="" href="TotalTeam.jsp">TEAM</a>
                  <a class="" href="AllBooking.jsp">BOOKING</a>
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
                <%=ab.getFname() %>
              </a>
              
            </div>
          </div>
        </nav>
      </div>
    </header>












	<div class="loginform">
		<div class="userlogin">
			<form action="addnewteam" method="post">
				<div class="loginas">ADD NEW TEAM MEMBER</div>

				<div class="mb-3 ">
					<label for="exampleInputEmail1" class="form-label"> NAME </label> <input
						type="text" class="form-control" id="email"
						aria-describedby="emailHelp" required name="fullname">
				</div>
				<div class="mb-3 ">
					<label for="exampleInputEmail1" class="form-label">MOBILE </label>
					<input type="number" class="form-control" id="email"
						aria-describedby="emailHelp" required name="mobile">
				</div>
				<div class="mb-3 ">
					<label for="exampleInputEmail1" class="form-label">EMAIL </label>
					<input type="email" class="form-control" id="email"
						aria-describedby="emailHelp" required name="mailid">
				</div>
			
				<div class="mb-2">
					<label for="exampleInputPassword1" class="form-label">JOIN DATE</label>
					<input type="date" class="form-control" id="password" required
						name="joindate">
				</div>
				
				<div class="mb-3 d-flex ">
					<div class="loginas1">POSITION &nbsp;&nbsp;</div>
					<div class="">
						<select name="position" >
							<option value="FOUNDER">FOUNDER</option>
							<option value="CO-FOUNDER">CO-FOUNDER</option>
							<option value="TEAM LEADER">TEAM LEADER</option>
							<option value="MANAGER">MANAGER</option>
							<option value="SENIOR PHOTOGRAPHER">SENIOR PHOTOGRAPHER</option>
							<option value="CINEMATOGRAPHER">CINEMATOGRAPHER</option>
							<option value="JUNIOR PHOTOGRAPHER">JUNIOR PHOTOGRAPHER</option>
							<option value="JUNIOR CINEMATOGRAPHER">JUNIOR CINEMATOGRAPHER</option>
							<option value="SENIOR VIDEO-GRAPHER">SENIOR VIDEO-GRAPHER</option>
							<option value="JUNIOR VIDEO-GRAPHER">JUNIOR VIDEO-GRAPHER</option>
							<option value="VIDEO EDITOR">VIDEO EDITOR</option>
							<option value="PROJECT STAFF">PROJECT STAFF</option>
						</select>
					</div>
				</div>
				
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">ADDRESS</label>
					<textarea name="eaddress" class=" form-control"></textarea>
              
                    
                    
				</div>
                  <div><input type="hidden" name="status1" value="ACTIVE"></div>


				<button type="submit" class="btn btn-primary form-control sbtn mt-5">ADD NEW MEMBER</button>




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