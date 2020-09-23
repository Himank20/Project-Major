<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        h2 {
			font-size: 20px;
			text-align: right;
			font-family: sans-serif;
			text-decoration:underline;
			color: white;
		} 
        button {
			display: block;
			margin: auto;
			padding: 15px 30px;
			box-sizing: border-box;
			font-size: 30px;
			color: white;
			border: 1px solid white;
			background-color: #07CCF5;
			cursor: pointer;
		}
    </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Dash.css">
    <div class="container">
       <label for="" class="heading">---Dashboard---</label>
       <h2>Student Enquiry and Admission Portal</h2>
       
       <div class="new-reg">
           <a href="Page1.jsp" id="block" class="block">Register New Student</a>
       </div>

       <div class="new-reg">
        <a href="UpdateDoc.jsp" id="block" class="block"> Continue a Registration </a>
       </div>

       <div class="new-reg">
        <a href="Search.jsp" id="block" class="block">Search Student Information</a>
       </div>

       <div class="new-reg">
        <a href="Update2.jsp" id="block" class="block">Update Student Information</a>
       </div>

       <div class="new-reg">
        <a href="UpdateVerification.jsp" id="block" class="block">Update Verification Status</a>
       </div>

       <div class="new-reg">
        <a href="FileUG.jsp" id="block" class="block" target="_blank">Under Graduation Document Upload</a>
       </div>

       <div class="new-reg">
        <a href="FilePG.jsp" id="block" class="block" target="_blank">Post Graduation Document Upload</a>
       </div>

       <br><br>
       <button type="submit" form="Logout" value="submit">Logout</button>

    </div>
</head>
<body>
    <form id="Logout" action="Logout.jsp"></form>
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
</body>
</html>