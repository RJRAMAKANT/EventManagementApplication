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

  <title>Welcome User</title>

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
</head>

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
                   <a class=""href="FeedBack.jsp" >FEEDBACK</a>
                  <a class="" href="UserBookingStatus.jsp">Booking Status</a>
                  <a class="" href="#gal">GALLERY</a>
                  <a class="" href="bookevent.jsp">BOOKING</a>
                  <a href="logout" class="" >LOG OUT</a>
                </div>
              </div>
            </div>
            <a class="navbar-brand" href="UserPage.jsp">
              <span>
                Picstudio
              </span>
            </a>
            <div class="user_option">
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
           </tr>
           
         </tbody>
        	   
        	   
        	<%}%>
        	
        	
  		  
         
        	  
        	  
        

      </table>
           
          </div>
         
        </div>
      </div>
    </section>
    <!-- end slider section -->
  </div>

  <!-- about section -->

 <%-- <section class="about_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-5">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                About Studio
              </h2>
              <p>
                It is a long established fact that a reader will be distracted by the readable content of a page
              </p>
              <a href="">
                Read More
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="img-box">
      <div class="play_btn">
        <a href="#">
          <img src="images/play.png" alt="" />
        </a>
      </div>
      <img src="images/about-img.png" class="about-img" alt="" />
    </div>
  </section> --%> 

  <!-- end about section -->

  <!-- gallery section -->
 <%--  <section class="gallery_section layout_padding-top" id="gal">
    <div class="container">
      <div class="row">
        <div class="col-lg-5 ml-auto">
          <div class="heading_container">
            <h2>
              Our Gallery
            </h2>
            <p>
              It is a long established fact that a reader will be distracted by the readable content of a page
            </p>
            <a href="">
              See More
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="gallery_container">
      <div class="gallery_bg">
        <img src="images/gallery-bg.png" alt="" />
      </div>
      <div class="container">
        <div class="gallery_box">
         <a href="https://www.pexels.com/search/nature%20wallpaper%204k/" target="_blank"><div class="box b1">
            <div class="img-box">
              <img src="images/tree.jpg" height="100%" alt="" />
              <h5>
            NATURE
              </h5>
            </div>
          </div></a>
          <div class="box b2">
           <a href="https://alphacoders.com/anime-4k-wallpapers" target="_blank"> <div class="img-box">
            <img src="images/lufi.jpg" height="100%" alt="" />
              <h5>
                ANIME
              </h5>
            </div></a>
           <a href="https://www.pexels.com/search/urban%20city/" target="_blank"><div class="img-box">
              <img src="images/urban1.jpg" height="100%" alt="" />
              <h5>
               URBAN
              </h5>
            </div></a>
          </div>
          <div class="box b3">
           <a href="https://www.pexels.com/search/indian%20wedding/" target="_blank"> <div class="img-box">
              <img src="images/kiara.jpeg" height="100%" alt="" />
              <h5>
                MARRIAGE
              </h5>
            </div></a>
            <a href="https://4kwallpapers.com/superhero" target="_blank"><div class="img-box">
              <img src="images/45896.jpg" height="100%" alt="" />
              <h5>
                SUPER HERO
              </h5>
            </div></a>
          </div>
         <div class="box b4">
            <a href="https://4kwallpapers.com/cars/" target="_blank"> <div class="img-box">
              <img src="images/lambo.jpg" height="100%" alt="" />
              <h5>
               CARS
              </h5>
            </div>
          </div></a>
        </div>
      </div>
    </div>
  </section> --%>
  <!-- end gallery section -->

  <!-- blog section -->

 <%--  <section class="blog_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-5">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                Letest Blog
              </h2>
              <p>
                It is a long established fact that a reader will be distracted by the readable content of a page
              </p>
              <a href="">
                Read More
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="blog_container">
      <div class="blog_bg">
        <img src="images/gallery-bg.png" alt="" />
      </div>
      <div class="container">
        <div class="blog_box">
          <div class="row">
            <div class="col-md-6">
              <div class="box b1">
                <div class="img-box">
                  <img src="images/blog1.jpg" alt="" />
                </div>
                <div class="blog-detail">
                  <div class="blog_title">
                    <h5>
                      Best photography
                    </h5>
                    <div class="blog_post">
                      <h6>
                        Post By: Pic studio
                      </h6>
                      <h6>
                        16-01-2020
                      </h6>
                    </div>
                  </div>
                  <p>
                    It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum
                  </p>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="box b2">
                <div class="img-box">
                  <img src="images/blog2.jpg" alt="" />
                </div>
                <div class="blog-detail">
                  <div class="blog_title">
                    <h5>
                      Photography
                    </h5>
                    <div class="blog_post">
                      <h6>
                        Post By: Pic studio
                      </h6>
                      <h6>
                        16-01-2020
                      </h6>
                    </div>
                  </div>
                  <p>
                    It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section> --%>

  <!-- end blog section -->

  <!-- client section -->

  <section class="client_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-lg-5 ml-auto">
          <div class="heading_container">
            <h2>
              What Says Customer
            </h2>
            <p>
              It is a long established fact that a reader will be distracted by the readable content of a page
            </p>
          </div>
        </div>
      </div>
    </div>
    <div class="client_container">
      <div class="client_bg">
        <img src="images/gallery-bg.png" alt="" />
      </div>
      <div class="container">
        <div class="client_box">
          <div class="row">
            <div class="col-lg-6">
              <div class="box b1">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <div class="client_content-box layout_padding">
                        <div class="img-box">
                          <img src="images/client.png" alt="" />
                        </div>
                        <div class="detail-box">
                          <h4>
                            Plio Dorak
                          </h4>
                          <p>
                            It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum
                          </p>
                          <img src="images/quote.png" alt="" />
                        </div>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <div class="client_content-box layout_padding">
                        <div class="img-box">
                          <img src="images/client.png" alt="" />
                        </div>
                        <div class="detail-box">
                          <h4>
                            Plio Dorak
                          </h4>
                          <p>
                            It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum
                          </p>
                          <img src="images/quote.png" alt="" />
                        </div>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <div class="client_content-box layout_padding">
                        <div class="img-box">
                          <img src="images/client.png" alt="" />
                        </div>
                        <div class="detail-box">
                          <h4>
                            Plio Dorak
                          </h4>
                          <p>
                            It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum
                          </p>
                          <img src="images/quote.png" alt="" />
                        </div>
                      </div>
                    </div>
                  </div>
                  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="sr-only">Next</span>
                  </a>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="box b2">
                <div class="camera_img-box">
                  <img src="images/camera.png" alt="" />
                </div>
              </div>
            </div>
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
              <div class="social_box">
                <a href="#">
                  <img src="images/facebook.png" alt="" />
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
</body>

</html>