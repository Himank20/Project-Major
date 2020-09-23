<!DOCTYPE html>
<html>
<head>
	<title>Submission</title>
	<style>
		h2 {
			text-align: center;
			font-size: 50px;
			font-family: tahoma;
			color: white;
			}

			p {
				color: white;
				font-size: 40px;
				font-family: arial;
			}

		.dashboard {
			
			text-align: center;
			margin: auto;
			font-size: 35px;
			
		}
		
		.button {
			background-color: #FFF;
			color: black;
			border: 5px solid #07CCF5;
			font-size: 30px;
			padding: 10px 15px;
			cursor: pointer;
		}

		.button:hover {
			background-color: #07CCF5;
			color: white;
			border: 5px solid #07CCF5;
		}


	</style>
</head>
<body style="background-image:url(Image/bg_image.jpg)">
		<%
		if(session.getAttribute("uname")==null){
			response.sendRedirect("Page0.jsp");
		}	
	    %>
		<%
		response.setHeader("Cache-Control","no-cache");
		response.setHeader("Cache-Control","no-store");
		response.setHeader("Pragma","no-cache");
		response.setDateHeader("Expires",0);
	    %>
	<header>
		<br><br>
		<div class="header">
		<h2>Data is saved successfully!</h2>
		</div>
		<br><br><br>
		<div class="dashboard">
			<p>To return to DASHBOARD</p>
			<button type="submit" name="submit" class="button" form="redirect">Click Here</button>
			<form id="redirect" action="Dashboard.jsp"></form>
		</div>
	</header>

</body>
</html>