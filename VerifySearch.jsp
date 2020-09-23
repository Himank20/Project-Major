<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head></head>
<body>
        <%
        try{  
        String s;  
        String s1=request.getParameter("S_No");
        Class.forName("com.mysql.jdbc.Driver");  
        java.sql.Connection con=DriverManager.getConnection(  
        "jdbc:mysql://localhost:3306/MyDatabase","root","");  
        Statement stmt=con.createStatement();  
        ResultSet rs=stmt.executeQuery("select ApplyingFor from student where Scholar_NO='"+s1+"'");
        session.setAttribute("Scholar_NO",s1);
        if(!rs.next())
            s="";
        else
            s=rs.getString("ApplyingFor");
        if(s.equals("Under Graduation"))
            response.sendRedirect("Search1.jsp");
        else if(s.equals("Post Graduation"))
            response.sendRedirect("Search2.jsp");
        else{
        %>
            <script type="text/javascript">
                alert("No such data exists");
                location="Search.jsp";
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
                    location="Search.jsp";
                </script>
            <%
        }    
        %>       
</body>
</html>