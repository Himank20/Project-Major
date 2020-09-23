<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head></head>
<body>
    <%
    try{
    String s1=request.getParameter("Username");
    String s2=request.getParameter("Password");
    String str=request.getParameter("Acc_type");
    String s3,s4,s5;
    Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=DriverManager.getConnection(  
    "jdbc:mysql://localhost:3306/MyDatabase","root","");  
    Statement stmt=con.createStatement();  
    ResultSet rs=stmt.executeQuery("select* from login where uname='Koustubh'");  
    if(!rs.next()){
        s3="";
        s4="";
        s5="";
    }
    else{    
    s3=rs.getString(1); 
    s5=rs.getString(3);
    ResultSet rs1=stmt.executeQuery("select AES_DECRYPT(pwd,'123') from login where uname='Koustubh'");
    rs1.next();
    s4=rs1.getString(1);
    } 
    out.print(s3+" "+s4+" "+s5);
    stmt.close();
    con.close();
    }
    catch(Exception e){
    out.print(e.toString());
    }
    %>	
</body>   
</html>