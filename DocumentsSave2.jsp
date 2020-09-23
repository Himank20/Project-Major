<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head></head>
<body>
<%
try{
    String s1=request.getParameter("s1");
    String s2=request.getParameter("s2");
    String s3=request.getParameter("s3");
    String s4=request.getParameter("s4");
    String s5=request.getParameter("s5");
    String s6=request.getParameter("s6");
    String s7=(String)session.getAttribute("ScholarNo");
    Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=DriverManager.getConnection(  
    "jdbc:mysql://localhost:3306/MyDatabase","root","");  
    Statement stmt=con.createStatement();  
    int n=stmt.executeUpdate("insert into student4 values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");
    stmt.close();
    con.close();
    session.removeAttribute("ScholarNo");
    response.sendRedirect("AfterSubmit.jsp");
}
catch(Exception e){
    out.print(e.toString());
}
%>
</body>
</html>