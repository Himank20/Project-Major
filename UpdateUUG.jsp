<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
    <head></head>
    <body>
        <%
        try{
        String s1=request.getParameter("Update_Details");
        String s2=request.getParameter("Status");
        String s3=request.getParameter("Scholar_No");
        Class.forName("com.mysql.jdbc.Driver");  
        java.sql.Connection con=DriverManager.getConnection(  
        "jdbc:mysql://localhost:3306/MyDatabase","root","");  
        Statement stmt=con.createStatement(); 
        ResultSet rs=stmt.executeQuery("Select* from Student where Scholar_No='"+s3+"'");
            if(!rs.next()){
                %>
                <script>
                    alert("No such data exists");
                    location="UUG.jsp";
                </script>
                <%
        }
        else{
        int r=0;
        if(s1.equals("TFW"))
            r=stmt.executeUpdate("update Student2 set TFW='"+s2+"' where Scholar_No='"+s3+"'");
        if(s1.equals("Tenth_Marksheet"))
            r=stmt.executeUpdate("update Student2 set Tenth_Marksheet='"+s2+"' where Scholar_No='"+s3+"'");    
        if(s1.equals("Twelth_Marksheet"))
            r=stmt.executeUpdate("update Student2 set Twelth_Marksheet='"+s2+"' where Scholar_No='"+s3+"'");
        if(s1.equals("TC"))
            r=stmt.executeUpdate("update Student2 set TC='"+s2+"' where Scholar_No='"+s3+"'");
        if(s1.equals("Domicile"))
            r=stmt.executeUpdate("update Student2 set Domicile='"+s2+"' where Scholar_No='"+s3+"'");   
        %>
            <script>
                alert("Updated Successfully");
                location="UUG.jsp";
            </script>
        <%
        }
        stmt.close();
        con.close(); 
        }
        catch(Exception e){
            String s=e.getMessage();
        %>
        <script>
            alert("<%=s%>");
            location="UUG.jsp";
        </script>
        <%
        }          
        %>
    </body>
</html>