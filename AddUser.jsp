<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head></head>
<body>
    <%
    try{
    String s1=request.getParameter("Username");
    String s2=request.getParameter("Password1");
	String s3=request.getParameter("Password2");
    Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=DriverManager.getConnection(  
    "jdbc:mysql://localhost:3306/MyDatabase","root","");  
	Statement stmt=con.createStatement();
	if(s2.equals(s3)){
		int n=stmt.executeUpdate("insert into login values('"+s1+"',AES_ENCRYPT('"+s2+"','"+s2+"'),'Regular')");
			%>
			<script type="text/javascript">
				alert("User added succesfully");
				location="AddNew.jsp";
			</script>
			<%
		}
	else{
		%>
		<script type="text/javascript">
			alert("Passwords must be same");
			location="AddNew.jsp";
		</script>
		<%
	}
	stmt.close();
    con.close();
    }
    catch(Exception e){
		String str=e.getMessage();
		%>
			<script>
				alert("<%=str%>");
				location="AddNew.jsp";
			</script>
		<%
    }
    %>	
</body>   
</html>