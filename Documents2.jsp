<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style>
		
		h2 {
			text-align: center;
			color: white;
			font-size: 50px;
		}

		.main-area {
			margin: 0 auto;
			text-align: center;
			
		}

		span {
			font-size: 20px;
			color: white;

		}

		select {
			height: 20px;
			margin-bottom: 50px;
		}

		button {
			display: block;
			margin: auto;
			padding: 15px 60px;
			font-size: 20px;
			color: white;
			border: none;
			background-color: #07CCF5;
		}

		a {
			text-decoration: underline;
			color: #07CCF5;
			font-weight: bold;
		}

		p {
			font-size: 25px;
			text-align: right;
			color: white;
			font-family: arial;
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
    <p>Dashboard <a href="Dashboard.jsp">Click here</a></p>
	<h2>Documents</h2>
	<br><br>
	<form action="DocumentsSave2.jsp" action="Post">
		<div class="main-area">

			<span>Tution Fee Waiver (TWF) </span> &nbsp;
			<select required name="s1">
				<option value="">None</option>
				<option value="Verified">Verified</option>
				<option value="Currently not available">Currently not available(Verify Later)</option>
				<option value="Not Available">Not Available</option>
				<option value="Not Applicable">Not Applicable</option>
			</select>
			<br><br>
			<span>1. Class 10th Marksheet : </span> &nbsp;
			<select required name="s2">
				<option value="">None</option>
				<option value="Verified">Verified</option>
				<option value="Currently not available">Currently not available(Verify Later)</option>
				<option value="Not Available">Not Available</option>
			</select>
			<br><br>
			<span>2. Class 12th Marksheet : </span> &nbsp;
			<select required name="s3">
				<option value="">None</option>
				<option value="Verified">Verified</option>
				<option value="Currently not available">Currently not available(Verify Later)</option>
				<option value="Not Available">Not Available</option>
			</select>
			<br><br>
			<span>3.College Transfer Certificate : </span> &nbsp;
			<select required name="s4">
				<option value="">None</option>
				<option value="Verified">Verified</option>
				<option value="Currently not available">Currently not available(Verify Later)</option>
				<option value="Not Available">Not Available</option>
				<option value="Not Applicable">Not Applicable</option>
			</select>
			<br><br>
			<span>4. Domicile Certificate : </span> &nbsp;
			<select required name="s5">
				<option value="">None</option>
				<option value="Verified">Verified</option>
				<option value="Currently not available">Currently not available(Verify Later)</option>
				<option value="Not Available">Not Available</option>
			</select>
            <br><br>
            <span>5.College Degree : </span> &nbsp;
			<select required name="s6">
				<option value="">None</option>
				<option value="Verified">Verified</option>
				<option value="Currently not available">Currently not available(Verify Later)</option>
				<option value="Not Available">Not Available</option>
				<option value="Not Applicable">Not Applicable</option>
            </select>
            <br><br>
			<button type="submit" value="submit">Save and Continue</button>
		</div>
	</form>
</body>
</html>