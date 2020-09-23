<!DOCTYPE html>
<html>
<head>
	<title>Page2</title>
	<style>
	h3 {
	font-family: Calibri;
	font-size: 30pt;
	color: white;
	font-style: normal;
	font-weight: bold;
	text-align: center;
	text-decoration: underline;
}


table {
  font-family: calibri; 
  color:black; 
  font-size: 11pt; 
  font-style: normal;
  font-weight: bold;
  background-color: #f2f2f2; 
   
}

button {
  margin: auto;
  display: inline-block;
  
  font-size: 20px;
  padding: 5px 10px;
}

.wrapper {
  text-align: center;
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
<script type="text/javascript">
	function f1(){
		document.getElementById("txt1").value="";
		document.getElementById("txt2").value="";
		document.getElementById("txt3").value="";
		document.getElementById("txt4").value="";
		document.getElementById("txt5").value="";
		document.getElementById("txt6").value="";
    document.getElementById("txt7").value="";
		document.getElementById("rb1").checked=false;
		document.getElementById("rb2").checked=false;
		
	}
</script>
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
<form action="Page2-0.jsp" method="POST">
<h3 align="center">Academic Details</h3>
<table align="center" cellspacing="20">
	<tr>
<td ><b>Sl.No.</b></td>
<td ><b>Examination</b></td>
<td ><b>Board</b></td>
<td><b>Last passing Institute*</b></td>
<td ><b>Percentage*</b></td>
<td ><b>Year of Passing*</b></td>

</tr>

<tr>
<td>1</td>
<td>Class X</td>
<td><name="ClassX_Board" />
<select name="ClassX_Board" required>
  <option value="">None</option>
  <option value="Madhya_Pradesh">MP Board</option>
  <option value="CBSE">CBSE</option>
  <option value="ICSE">ICSE</option>
</select>
</td>

<td><input type="text" id="txt1" name="School_Name1" maxlength="30" required /></td>
<td><input type="text" id="txt2" name="ClassX_Percentage" maxlength="30" required /></td>
<td><input type="text" id="txt3" name="ClassX_Year Of Passing" maxlength="30" required /></td>
</tr>

<tr>
<td>2</td>
<td>Class XII</td>
<td><name="ClassXII_Board"/>
<select name="ClassXII_Board" required>
  <option value="">None</option>
  <option value="Madhya_Pradesh">MP Board</option>
  <option value="CBSE">CBSE</option>
  <option value="ICSE">ICSE</option>
</select>
</td>


<td><input type="text" id="txt4" name="School_Name2" maxlength="30" required /></td>
<td><input type="text" id="txt5" name="ClassXII_Percentage" maxlength="30" required /></td>
<td><input type="text" id="txt6" name="ClassXII_YrOfPassing" maxlength="30" required /></td>
</tr>


<tr>
    <td colspan="5" align="center">      
    </td>
  </tr>

</table>

<h3>Course Applied</h3>

<table align="center" cellspacing="10" cellpadding="10">
  <tr>
    <td>Select Course</td>
    <td>
    <select name="course" required>
        <option value="">None</option>
        <option value="B.E">B.E</option>
        <option value="B.Tech">B.Tech</option>
        <option value="B.Pharma">B.Pharma</option>
      </select>
    </td>
  </tr>

  <tr>
    <td>Select Branch</td>
    <td>
      <select name="branch" required>
        <option value="">None</option>
        <option value="Computer Science Engineering">Computer Science Engineering</option>
        <option value="Mechanical Engineering">Mechanical Engineering</option>
        <option value="Information Technology">Information Technology</option>
        <option value="Electronics Engineering">Electronics Engineering</option>
        <option value="Electrical Engineering">Electrical Engineering</option>
        <option value="Civil Engineering">Civil Engineering</option>
        <option value="Not Applicable">Not Applicable</option>
      </select>
    </td>
  </tr>

  <tr>
    <td>Course Fees</td>
    <td><input type="text" id="txt7" name="Fees" maxlength="30" required /></td>
  </tr>
</table>

<br><br>

<div class="wrapper">
  <button type="submit" value="submit">Save and continue</button>
  &nbsp;&nbsp;&nbsp;
  <button onclick="f1()">Reset</button>
  &nbsp;&nbsp;&nbsp;
</div>
</form>
</body>
</html>