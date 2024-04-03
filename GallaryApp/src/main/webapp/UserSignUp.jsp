<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
     <link href=" css/style.css" rel="stylesheet" />
<title>SignUP</title>
<style>
.userlogin{
	background-color:white;
	width:400px;
	height:650px;
	margin-top:4vh;
	border-radius:10px;
}
</style>
</head>
<body class="container-fluid" onload="loaded()">
<div class="loginform">
<div class="userlogin">
<form action="signupform" method="post">
<div class="loginas">SIGN UP</div>
                
                <div class="mb-3 ">
					<label for="exampleInputEmail1" class="form-label">FIRST NAME
						</label> <input type="text" class="form-control" id="email"
						aria-describedby="emailHelp" required  name="fname">
				</div>
				<div class="mb-3 ">
					<label for="exampleInputEmail1" class="form-label">LAST NAME
						</label> <input type="text" class="form-control" id="email"
						aria-describedby="emailHelp" required  name="lname">
				</div>
				<div class="mb-3 ">
					<label for="exampleInputEmail1" class="form-label">Email
						</label> <input type="email" class="form-control" id="email"
						aria-describedby="emailHelp" required  name="email">
				</div>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Password</label>
					<input type="password" class="form-control" id="password" required  name="password">
				</div>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">PHONE</label>
					<input type="number" class="form-control" id="password" required  name="phone">
				</div>
				<div class="mb-4 d-flex ">
				<div class="loginas1">GENDER &nbsp;&nbsp;</div>
				<div>
				<select name="signupas" >
				  <option value="MALE">MALE</option>
				  <option value="FEMALE">FEMALE</option>
				  <option value="OTHER">OTHER</option>
				</select>
				</div>
				</div>
				<div class="">
				<div class=" mb-3 randominput">
					<input type="number" id="randomnum" readonly class=" text-center text-red" name="randomnum1">
				</div>
				<div class=" mb-3">
					<input type="number" placeholder="Enter above Captcha" required name="randomnum2">
						
				</div>
				</div>


				<button type="submit" class="btn btn-primary form-control" onclick="clicked()">Submit</button>
				

    <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">

</form>

</div>

</div>

           


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>  
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
  <script>
  function loaded()
  {
      var num=Math.floor(Math.random() * 999999) + 100000;
      document.getElementById("randomnum").value=num;
  }
  
  </script>
  <script>
 
	  var Status=document.getElementById("status").value;
	  if(Status=="captcha")
		  {
		  swal("ERROR","WRONG CAPTCHA","error");
		  }
	  
	 
	  

 
  </script>
</body>
</html>