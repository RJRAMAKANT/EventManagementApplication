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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="CSS/all.css">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
<title>BOOKING SUCCESSFULL</title>
<style>
 h1{
 color:red;
 font-family:Gill Sans;
 }
 h4{
  font-family:Impact;
 }
 body{
 align-items:center;
 text-align:center;
 }

</style>
</head>
<body >
<%   UserBean ub=(UserBean)session.getAttribute("user1"); %>
<lord-icon
    src="https://cdn.lordicon.com/hrqqslfe.json"
    trigger="loop"
    delay="500"
    colors="primary:#d1f3fa,secondary:#30e849"
    style="width:250px;height:250px">
</lord-icon>

<h1>CONGRATAULATIONS,BOOKING SUCCESSFULL</h1>
<h4>OUR TEAM WILL CONTACT YOU SOON,KEEP CHECKING OUR WEBSITE FOR BOOKING STATUS</h4>
<a href="backtohome?uid=<%=ub.getUid()%>" ><button class="btn btn-success">HOME</button></a>
<a href="UserBookingStatus.jsp"><button class="btn btn-warning">CHECK STATUS</button></a>
<div>
<span><lord-icon
    src="https://cdn.lordicon.com/tqywkdcz.json"
    trigger="loop"
    colors="primary:#4bb3fd,secondary:#f28ba8,tertiary:#ffc738,quaternary:#f24c00"
    style="width:250px;height:250px">
</lord-icon></span>
<span><lord-icon
    src="https://cdn.lordicon.com/tqywkdcz.json"
    trigger="loop"
    colors="primary:#4bb3fd,secondary:#f28ba8,tertiary:#ffc738,quaternary:#f24c00"
    style="width:250px;height:250px">
</lord-icon></span>
<span><lord-icon
    src="https://cdn.lordicon.com/tqywkdcz.json"
    trigger="loop"
    colors="primary:#4bb3fd,secondary:#f28ba8,tertiary:#ffc738,quaternary:#f24c00"
    style="width:250px;height:250px">
</lord-icon></span>
</div>
<script src="https://cdn.lordicon.com/bhenfmcm.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>  
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
</body>
</html>