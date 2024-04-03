<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
      import="com.binclass.AdminBean"
       import="com.binclass.UserBean"
       import="java.util.ArrayList"
    %>
<%@page import="com.daoclass.UserBookingDao" %>
<%@page import="com.binclass.Ebooking" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js">
  </script>

  <title>Welcome User</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"> 
  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- Custom styles for this template -->
  <link href=" css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>
<style>


@import url( 
'https://fonts.googleapis.com/css2?family=Poppins&display=swap'); 
  
body { 
    margin: 0; 
    display: flex; 
    align-items: center; 
    justify-content: space-around; 
    flex-direction: column; 
    height: 100vh; 
    background-color: #bde5d2; 
    font-family: 'Poppins', sans-serif; 
  
} 
  
.textup { 
    text-align: center; 
    color: rgb(11, 118, 11); 
    font-weight: 700; 
} 
  
i { 
    margin-right: 3px; 
} 
  
.form-box { 
    background-color: #fff; 
    box-shadow: 0 0 10px rgba(36, 67, 40, 0.8); 
    padding: 15px; 
    border-radius: 8px; 
    width: 500px; 
} 
  
form { 
    max-width: 400px; 
    margin: 0 auto; 
} 
  
.radio-group { 
    display: flex; 
    margin-bottom: 16px; 
} 
  
input[type="radio"] { 
    margin-right: 8px; 
} 
  
label { 
    display: block; 
    margin-bottom: 8px; 
    font-size: 17px; 
    color: green; 
    font-weight: 600; 
} 
  
input, 
textarea { 
    width: 100%; 
    padding: 8px; 
    margin-bottom: 12px; 
    box-sizing: border-box; 
    border-radius: 10px; 
  
} 
  
button { 
    background-color: #368b44; 
    color: #fff; 
    padding: 10px; 
    border: none; 
    border-radius: 25px; 
    cursor: pointer; 
    width: 100%; 
    font-size: 15px; 
    transition: .2s linear; 
} 
  
button:hover { 
    background-color: #0a6808; 
    border: none; 
    transform: translateY(-10px); 
} 




</style>
<body>
<%   UserBean ub=(UserBean)session.getAttribute("user1"); 
%>
<% ArrayList<Ebooking> all= (ArrayList<Ebooking>)session.getAttribute("userbooking");
 //  UserBean ub=(UserBean)session.getAttribute("user");
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
                   <a class="FeedBack.jsp" >FEEDBACK</a>
                  <a class="" href="UserBookingStatus.jsp">Booking Status</a>
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
            <div class="user_option " style="color:black; font-family:Arial;font-size:20px;font-weight:bold;">
              <a >
                <%=ub.getFname() %>
              </a>
              
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->

    <!-- slider section -->
    <section class=" slider_section position-relative">
      <div class="container-fluid">
        <div class="row slider-row">
          <div class="col-lg-12 ">

          </div>
         
        </div>
      </div>
    </section>
    <!-- end slider section -->
  </div>

  <!-- about section -->
<section>
		<div class="form-box">
			<div class="textup">
				<i class="fa fa-solid fa-clock"></i> It only takes two minutes!!
			</div>
			<form action="feedbackform" method="post">
			<input type="hidden" name="userid" value="<%=ub.getUid()%>">
				<label for="uname"> <i class="fa fa-solid fa-user"></i> Name
				</label> <input type="text" id="uname" name="username" value="<%=ub.getFname() + "  " + ub.getLname() %>"readonly> <label
					for="email"> <i class="fa fa-solid fa-envelope"></i> Email
					Address
				</label> <input type="email" id="email" value=<%=ub.getEmail() %> name="useremail" readonly> <label
					for="phone"> <i class="fa-solid fa-phone"></i> Phone No
				</label> <input type="tel" id="phone" value="<%=ub.getPhone() %>" name="userphone" readonly> <label>
					<i class="fa-solid fa-face-smile"></i> Do you satisfy with our
					service?
				</label>
				<div class="radio-group">
					<input type="radio" id="yes" name="satisfy" value="yes" checked>
					<label for="yes">Yes</label> <input type="radio" id="no"
						name="satisfy" value="no"> <label for="no">No</label>
				</div>

				<label for="msg"> <i class="fa-solid fa-comments"
					style="margin-right: 3px;"></i> Write your Suggestions:
				</label>
				<textarea id="msg" name="msg" rows="4" cols="10" required></textarea>
				<button type="submit">Submit</button>
			</form>
		</div>


	</section>
 

  <!-- end blog section -->

  <!-- client section -->

  

  <!-- end client section -->

  <!-- info section -->

 

  <!-- end info section -->

  <!-- footer section -->
  <footer class="footer_section ">
    <div class="container">
      <p class="text-dark">
        &copy; <span id="displayYear"></span> All Rights Reserved. Design by
        <a href="https://html.design/" class="text-dark">@RJRAMAKANT</a>
      </p>
    </div>
  </footer>
  <!-- footer section -->

  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <script src="js/custom.js"></script>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>  
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
  <script>
  var data = '<%= request.getAttribute("Message") %>';
  if(data=="Stored")
	  {
	  swal("Thank you ", "We Got Your Message", "success", {
	      button: "I am new button",
	 
	    });
	  }
  
  </script>
</body>

</html>