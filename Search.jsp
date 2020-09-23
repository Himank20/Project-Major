<html>
<head>
<style>   
    h1 {
        font-family: Arial;
        font-size: 40pt;
        color: White;
        font-weight: bold;
        text-align: center;
        margin-top: 60px;
        text-decoration: underline;
            
    }

    h2 {
        text-align: center;
        font-family: sans-serif;
        font-size: 30pt;
        color: White;
        font-style: normal;
        font-weight: bold;
        margin-top: 100px;
    }

    input[type=text] {
        margin-left: 800px;
        width: 300px;
        height: 60px;
        font-size: 30px;
    }

    button {
        margin-left: 875px;
        font-size: 30px;
        color: white;
        padding: 10px 30px;
        border: none;
        margin-top: 20px;
        background-color: #07CCF5;
        cursor: pointer;
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
    <form action="VerifySearch.jsp" method="POST">
    <h1>Student Search Form</h1>
    <br>
    <h2>Enter the student Scholar NO </h2>
    <input type="text" name="S_No"/>
    <br><br>
    <button name="submit" type="submit">Search</button>
    <br><br>
    </form>
    <br><br>
</body>    
</html>