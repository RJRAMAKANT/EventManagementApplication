<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
      import="com.binclass.AdminBean"
       import="com.binclass.Ebooking"
       import="com.binclass.BookingCountBean"
       import="com.binclass.FeedBack"
    %>
<%@page import="com.daoclass.AminLoginDAO" %>
<%@page import="com.daoclass.AllBookingDao" %>
<%@page import="com.daoclass.GraphFeedbackDao" %>
<%@page import="com.daoclass.BookingCount" %>
<%@page import="com.daoclass.AllFeedBack" %>
<%@page import="java.util.ArrayList" %>
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

  <title>AllBooking</title>

  <!-- slider stylesheet -->
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
  
  
  
  <script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
</head>
<style>
#container{
width:600px;
}
</style>
<body>
<%   AdminBean ab=(AdminBean)session.getAttribute("admin1"); 
%>
<%ArrayList<Ebooking>all=new AllBookingDao().allbooking(); %>
<%ArrayList<BookingCountBean>all1=new BookingCount().booking(); %>
<%ArrayList<BookingCountBean>all3=new GraphFeedbackDao().booking1(); %>
<%ArrayList<FeedBack>all2=new AllFeedBack().allFeedback1(); %>
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
                   <a class="" href=""><%=ab.getLname() %></a>
                  <a class="" href="NextEvent.jsp">NEXT EVENT</a>
                  <a class="" href="TotalTeam.jsp">TEAM</a>
                  <a class="" href="AllBooking.jsp">BOOKING</a>
                  <a href="logout" class="" >LOG OUT</a>
                </div>
              </div>
            </div>
            <a class="navbar-brand" href="index.html">
              <span>
                Picstudio
              </span>
            </a>
            <div class="user_option" style="font-weight:bold;font-family:Arial;font-size:20px;">
              <a >
                <%=ab.getFname() %>
              </a>
            
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->

    <!-- slider section -->
    <section class=" slider_section position-relative bg-white pb-2 ">
       <div class="text-center mb-2" style="font-weight:bold;font-family:Arial;font-size:20px;color:black;">TOTAL BOOKING</div> 
        <div >
        <div>
        <table class="table table-dark table-striped ">
        
        <thead>
            <tr>
              
              <th scope="col">NAME</th>
              <th scope="col">MOBILE</th>
              <th scope="col">ALT MOBILE</th>
              <th scope="col">DATE</th>
              <th scope="col">FUNCTION</th>
              <th scope="col">BUDGET</th>
              <th scope="col">ADDRESS</th>
              <th scope="col">STATUS</th>
               <th scope="col">UPDATE STATUS</th>
            </tr>
          </thead>
           <% for(int i=0;i<all.size();i++)
           { %><tbody>
           <tr>
           <% Ebooking pb=(Ebooking)all.get(i); %>
             <td><%=pb.getCName() %></td>
             <td><%=pb.getNumber()%></td>
             <td><%=pb.getANumber() %></td>
             <td><%=pb.getEdate() %></td>
             <td><%=pb.getEtype() %></td>
             <td><%=pb.getBudget() %></td>
             <td><%=pb.getAddress()%></td>
             <td><%=pb.getStatus()%></td>
             <td><form action="statusupdate" method="post">
             <select name="aprovestatus" id="apvs" onchange="this.form.submit()">
             <option value="<%=pb.getStatus()%>"><%=pb.getStatus()%></option>
             <option value="pending">PENDING</option>
             <option value="APPROVED">APPROVED</option>
             <option value="REJECTED">REJECTED</option>
             <input type="hidden" value="<%=pb.getBookid()%>" name="bookingid">
             </select>
             </form>
           </tr>
           
         </tbody>
        	   
        	   
        	<%}%>
        	
         </table>
         </div>
      
         
         
         
        </div>
       </div>
    </section>

  </div>

  <!-- about section -->

	<section style="background-color:white;" >
		<div class="d-flex  justify-content-around">
			<div>

				<div class="text-center" style="font-weight: bold; font-family: Arial; font-size: 20px; color:black;">ALL BOOKING CATAGORY</div>
				<div style="background-color:white; padding:10px; height:400px; width:100%;">
					<table class="table table-dark table-striped" id="datatable" >

						<thead>
							<tr>

								<th scope="col">CATAGORY</th>
								<th scope="col">TOTAL BOOKING</th>

							</tr>
						</thead>
						<%
						for (int i = 0; i < all1.size(); i++) {
						%><tbody>
							<tr>
								<%
								BookingCountBean pb = (BookingCountBean) all1.get(i);
								%>
								<td><%=pb.getEtype()%></td>
								<td><%=pb.getEcount()%></td>
							</tr>

						</tbody>


						<%
						}
						%>

					</table>
				</div>
			</div>
			
			
			<div>
			<div class="text-center"style="font-weight: bold; font-family: Arial; font-size: 20px;">GRAPH VIEW</div>
			<div class="bg-warnin">
                   
                   <div style="display:none;'">
					<table class="table table-dark table-striped" id="datatable1" >

						<thead>
							<tr>

								<th scope="col">CATAGORY</th>
								<th scope="col">TOTAL BOOKING</th>

							</tr>
						</thead>
						<%
						for (int i = 0; i < all3.size(); i++) {
						%><tbody>
							<tr>
								<%
								BookingCountBean pb = (BookingCountBean) all3.get(i);
								%>
								<td><%=pb.getEtype()%></td>
								<td><%=pb.getEcount()%></td>
							</tr>

						</tbody>


						<%
						}
						%>

					</table>
				</div>
                   
				<figure class="highcharts-figure">
					<div id="container"></div>
				</figure>

			</div>
			</div>

		</div>
	

	</section>

	<!-- end about section -->

  <!-- gallery section -->
  <section class="bg-white mt-1 mb-2">
  <div class="text-center mb-3 " style="font-weight:bold;font-family:Arial;font-size:20px;color:black;">USER FEEDBACK</div> 
    <div class="row">
        <div class="col-md-5">
             
             <figure class="highcharts-figure">
					<div id="container1"></div>
				</figure>
        
       </div>
        
        <div class="col-md-7">
        
            <div>
        <table class="table table-dark table-striped ">
        
        <thead>
            <tr>
              
              <th scope="col">USER ID</th>
              <th scope="col">USER NAME</th>
              <th scope="col">EMAIL</th>
              <th scope="col">PHONE</th>
              <th scope="col">SATISFY</th>
              <th scope="col">MESSAGE</th>
            </tr>
          </thead>
           <% for(int i=0;i<all2.size();i++)
           { %><tbody>
           <tr>
           <% FeedBack pb=(FeedBack)all2.get(i); %>
             <td><%=pb.getUserID() %></td>
             <td><%=pb.getUsername()%></td>
             <td><%=pb.getEmail()%></td>
             <td><%=pb.getMobile() %></td>
             <td><%=pb.getSatisfy() %></td>
             <td><%=pb.getMessage() %></td>
             
           </tr>
           
         </tbody>
        	   
        	   
        	<%}%>
        	
         </table>
        </div>
            
            
        </div>
    
</div>
  </div>
</section>
  <!-- end client section -->

  <!-- info section -->

  <section class="info_section ">
    <div class="info_container layout_padding-top">
      <div class="container">
        <div class="heading_container">
          <h2>
            Contact Us
          </h2>
        </div>
        <div class="info_main">
          <div class="row">
            <div class="col-md-4 col-lg-3">
              <div class="info_contact ">
                <a href="#" class="link-box">
                  <div class="img-box">
                    <img src="images/location.png" alt="" />
                  </div>
                  <div class="detail-box">
                    <h6>
                      Location
                    </h6>
                  </div>
                </a>
                <a href="#" class="link-box">
                  <div class="img-box">
                    <img src="images/mail.png" alt="" />
                  </div>
                  <div class="detail-box">
                    <h6>
                      demo@gmail.com
                    </h6>
                  </div>
                </a>
                <a href="#" class="link-box">
                  <div class="img-box">
                    <img src="images/call.png" alt="" />
                  </div>
                  <div class="detail-box">
                    <h6>
                      Call +01 1234567890
                    </h6>
                  </div>
                </a>
              </div>
            </div>
            <div class="col-md-2 col-lg-3">
              <div class="info_link-box">
                <ul>
                  <li class=" ">
                    <a class="" href="index.html">Home <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="">
                    <a class="" href="about.html">About </a>
                  </li>
                  <li class="">
                    <a class="" href="gallery.html">Gallery </a>
                  </li>
                  <li class="">
                    <a class="" href="blog.html">Blog </a>
                  </li>
                  <li class="">
                    <a class="" href="testimonial.html">Testimonial </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-md-6 ">
              <div class="social_box "  >
                <a href="#">
                  <img src="images/facebook.png"  alt="" />
                </a>
                <a href="#">
                  <img src="images/twitter.png" alt="" />
                </a>
                <a href="#">
                  <img src="images/linkedin.png" alt="" />
                </a>
                <a href="#">
                  <img src="images/instagram.png" alt="" />
                </a>
                <a href="#">
                  <img src="images/youtube.png" alt="" />
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end info section -->

  <!-- footer section -->
  <footer class="footer_section ">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved. Design by
        <a href="https://html.design/">@RJRAMAKANT</a>
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
  Highcharts.chart('container', {
	    data: {
	        table: 'datatable'
	    },
	    chart: {
	        type: 'pie'
	    },
	    title: {
	        text: 'TOTAL BOOKING DATA'
	    },
	    subtitle: {
	        text:
	            'PicStudio'
	    },
	    xAxis: {
	        type: 'category'
	    },
	    yAxis: {
	        allowDecimals: false,
	        title: {
	            text: 'Amount'
	        }
	    }
	});

  </script>
  <script>
  Highcharts.chart('container1', {
	    data: {
	        table: 'datatable1'
	    },
	    chart: {
	        type: 'bar',
	        options3d: {
	            enabled: true,
	            alpha: 45
	        }
	    },
	    title: {
	        text: 'Satisfiction Status'
	    },
	    subtitle: {
	        text:
	            'PicStudio'
	    },
	    xAxis: {
	        type: 'category'
	    },
	    yAxis: {
	        allowDecimals: false,
	        title: {
	            text: 'Amount'
	        }
	    }
	});

  </script>


</body>

</html>