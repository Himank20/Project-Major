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
<form action="Page2-4.jsp" method="POST">
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
<td>3</td>
<td>Graduation</td>
<td><name="ClassXII_Board"/>
</td>
<td><input type="text" id="txt7" name="College_Name" maxlength="30" required/></td>
<td><input type="text" id="txt8" name="Graduation_Percentage" maxlength="30" required/></td>
<td><input type="text" id="txt9" name="Graduation_YrOfPassing" maxlength="30" required/></td>

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
    <select name="course" id="c" onchange="f2()" required>
        <option value="">None</option>
        <option value="M.E">M.E</option>
        <option value="M.Tech">M.Tech</option>
        <option value="M.Pharma">M.Pharma</option>
      </select>
    </td>
  </tr>
 
  <tr>
    <td>Select branch</td>
    <td>
      <select name="branch1" id="M.E">
        <option value="">None</option>
        <option value="Computer Science Engineering">Computer Science Engineering</option>
        <option value="Digital Communication">Digital Communication</option>
        <option value="Thermal Engineering">Thermal Engineering</option>
        <option value="Energy Technology">Energy Technology</option>
        <option value="Structural Engineering">Structural Engineering</option>
      </select>
    </td>
  </tr>

  <tr>
    <td>
      <select name="branch2" id="M.Tech">
        <option value="">None</option>
        <option value="VLSI and Embeddded System">VLSI and Embeddded System</option>
        <option value="Power Electronics">Power Electronics</option>
      </select>
    </td>
  </tr>

  <tr>
    <td>
      <select name="branch3" id="M.Pharma">
        <option value="">None</option>
        <option value="Pharmacology">Pharmacology</option>
        <option value="Pharmaceutics">Pharmaceutics</option>
      </select>
    </td>
  </tr>
  <tr>
    <td>Course Fees</td>
    <td><input type="text" id="txt7" name="Fees" maxlength="30" required /></td>
  </tr>
</table>
<script type="text/javascript">
  document.getElementById("M.E").style.display="none";
  document.getElementById("M.Tech").style.display="none";
  document.getElementById("M.Pharma").style.display="none";

  function f1(){
    document.getElementById("M.E").style.display="none";
    document.getElementById("M.Tech").style.display="none";
    document.getElementById("M.Pharma").style.display="none";
		document.getElementById("txt1").value="";
		document.getElementById("txt2").value="";
		document.getElementById("txt3").value="";
		document.getElementById("txt4").value="";
		document.getElementById("txt5").value="";
		document.getElementById("txt6").value="";
		document.getElementById("txt7").value="";
		document.getElementById("txt8").value="";
    document.getElementById("txt9").value="";
		document.getElementById("rb1").checked=false;
		document.getElementById("rb2").checked=false;
	}

  function f2(){
    var a=document.getElementById("c").value;
    var b=document.getElementById("c").value;
    var c=document.getElementById("c").value;
    if(a=="M.E"){
        document.getElementById("M.E").style.display="block";
        document.getElementById("M.Tech").style.display="none";
        document.getElementById("M.Pharma").style.display="none";
    }
    else if(b=="M.Tech"){
        document.getElementById("M.E").style.display="none";
        document.getElementById("M.Tech").style.display="block"; 
        document.getElementById("M.Pharma").style.display="none"; 
    }    
    else if(c=="M.Pharma"){
        document.getElementById("M.Pharma").style.display="block"; 
        document.getElementById("M.E").style.display="none";
        document.getElementById("M.Tech").style.display="none";    
    }   
    else{
        document.getElementById("M.E").style.display="none";
        document.getElementById("M.Tech").style.display="none";
        document.getElementById("M.Pharma").style.display="none";
    }   
  }
</script>
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