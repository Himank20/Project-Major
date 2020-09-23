<!DOCTYPE html>
<html>
<head>
	<title>Page0</title>
	<style>
		h3 {
		font-family: Calibri;
		font-size: 35pt;
		color: #929292;
		font-style: normal;
		font-weight: bold;
		text-align: center;
		}

	input[type=text] {
		background-color: #E7E5E5;
		width: 300px;
		height: 30px;
		position: relative;
		display: block;
		margin: auto;
		padding: 12px 15px;
		border: none;
	}

	input[type=password] {
		background-color: #E7E5E5;
		width: 300px;
		height: 30px;
		position: relative;
		display: block;
		margin: auto;
		padding: 12px 15px;
		border: none;
	}

	div {
		width: 400px;
		height: 550px;
		background-color: white;
		margin: auto;
		left: 0; right: 0; top: 0; bottom: 0;
		position: fixed;
		border-radius: 10px;
	}

	.button1 {
		display: block;
		margin: auto;
		padding: 15px 105px;
		font-size: 30px;
		color: white;
		border: none;
		background-color: #07CCF5;
	}

	.button2 {
		display: block;
		margin: auto;
		padding: 15px 122px;
		font-size: 30px;
		color: white;
		border: none;
		background-color: #07CCF5;
		}

	h2 {
		font-size: 20px;
		text-align: right;
		font-family: sans-serif;
		text-decoration:underline;
		color: white;
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
	String s=(String)session.getAttribute("uname");
%>
<h2>Welcome <%=s%></h2>
<div class="boxed">
	<h3>Add New User</h3>
	<form action="AddUser.jsp" method="POST">
		<input type="text" id="txt1" name="Username" placeholder="Enter New Username" required>
		<br>
		<input type="password" id="txt2"  name="Password1" placeholder="Enter Password" required>
		<br>
		<input type="password" id="txt3"  name="Password2" placeholder="Confirm Password" required>
		<br>
		<button class="button button1" type="submit" value="submit">Add User</button>
		<br>
		</form>
		<form action="AdminLogout.jsp">
			<button class="button button2" type="submit" value="submit">Logout</button>
		</form>
</div>		
</body>
</html>