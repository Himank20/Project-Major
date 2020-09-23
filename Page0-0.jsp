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
    ResultSet rs=stmt.executeQuery("select* from login where uname='"+s1+"'");  
    if(!rs.next()){
        s3="";
        s4="";
        s5="";
    }
    else{    
    s3=rs.getString(1); 
    s5=rs.getString(3);
    ResultSet rs1=stmt.executeQuery("select AES_DECRYPT(pwd,'"+s2+"') from login where uname='"+s1+"'");
    rs1.next();
    s4=rs1.getString(1);
    } 
    if(s3!=""&&s4!=""){  
    if(s1.equalsIgnoreCase(s3)&&s2.equals(s4)){
        session.setAttribute("uname",s1);
        if(s5.equalsIgnoreCase("Regular")&&str.equalsIgnoreCase("Regular"))
            response.sendRedirect("Dashboard.jsp");
        else if(s5.equalsIgnoreCase("Admin")&&str.equalsIgnoreCase("Admin"))
            response.sendRedirect("AddNew.jsp");
        else{
            %>
            <script type="text/javascript">
                alert("Incorrect account type");
                location="Page0.jsp";
            </script>
           <% 
        }    
    } 
    else{  
        %>
        <script type="text/javascript">
            alert("Wrong username or password");
            location="Page0.jsp";
        </script>
       <%
    }
    }
    else{  
        %>
        <script type="text/javascript">
            alert("Wrong username or password");
            location="Page0.jsp";
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
            location="Page0.jsp";
        </script>
    <%
    }
    %>	
</body>   
</html>