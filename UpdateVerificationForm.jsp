<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
    <head></head>
    <body>
        <%
        try{
        String s1=request.getParameter("S_No");
        Class.forName("com.mysql.jdbc.Driver");  
        java.sql.Connection con=DriverManager.getConnection(  
        "jdbc:mysql://localhost:3306/MyDatabase","root","");  
        Statement stmt=con.createStatement(); 
        ResultSet rs=stmt.executeQuery("Select ApplyingFor from Student where Scholar_No='"+s1+"'");
        if(!rs.next()){
            %>
        <script>
            alert("No such data exists");
            location="UpdateVerification.jsp";
        </script>
        <%
        }
        else{
        String str=rs.getString(1);
        if(str.equalsIgnoreCase("Under Graduation"))
            response.sendRedirect("UUG.jsp");
        else 
            response.sendRedirect("UPG.jsp");
        }    
        stmt.close();
        con.close(); 
        }
        catch(Exception e){
            String s=e.getMessage();
        %>
        <script>
            alert("<%=s%>");
            location="UpdateVerification.jsp";
        </script>
        <%
        }          
        %>
    </body>
</html>