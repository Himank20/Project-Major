<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head></head>
<body>
<%
try{
    String s1,s2,s3,str;
    String s=request.getParameter("S_No");
    session.setAttribute("ScholarNo",s);
    Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=DriverManager.getConnection(  
    "jdbc:mysql://localhost:3306/MyDatabase","root","");  
    Statement stmt=con.createStatement();  
    ResultSet r=stmt.executeQuery("select ApplyingFor from student where Scholar_No='"+s+"'");
    if(!r.next())
    str="";
    else
    str=r.getString("ApplyingFor");
    if(str==""){
        %>
            <script type="text/javascript">
                alert("No such data exists , Please create a new record");
                location="UpdateDoc.jsp";
            </script>
        <%
    }
    else if(str.equals("Under Graduation")){
    ResultSet rs=stmt.executeQuery("select Scholar_No from student where Scholar_No='"+s+"'");  
    if(!rs.next())
    s1="";
    else
    s1=rs.getString("Scholar_No");
    ResultSet rs1=stmt.executeQuery("select Scholar_No from student1 where Scholar_No='"+s+"'");  
    if(!rs1.next())
    s2="";
    else
    s2=rs1.getString("Scholar_No");
    ResultSet rs2=stmt.executeQuery("select Scholar_No from student2 where Scholar_No='"+s+"'");  
    if(!rs2.next())
    s3="";
    else
    s3=rs2.getString("Scholar_No");
    if(s1!=""){
        if(s2=="")
        response.sendRedirect("Page2.jsp");
        if(s3=="")
        response.sendRedirect("Documents.jsp");
        else{
            %>
            <script type="text/javascript">
                alert("Data already exists");
                location="UpdateDoc.jsp";
            </script>
            <%
        }

    }
    else{
        %>
            <script type="text/javascript">
                alert("No such data exists , Please create a new record");
                location="UpdateDoc.jsp";
            </script>
        <%
    }
}
else{
    ResultSet rs=stmt.executeQuery("select Scholar_No from student where Scholar_No='"+s+"'");  
    if(!rs.next())
    s1="";
    else
    s1=rs.getString("Scholar_No");
    ResultSet rs1=stmt.executeQuery("select Scholar_No from student3 where Scholar_No='"+s+"'");  
    if(!rs1.next())
    s2="";
    else
    s2=rs1.getString("Scholar_No");
    ResultSet rs2=stmt.executeQuery("select Scholar_No from student4 where Scholar_No='"+s+"'");  
    if(!rs2.next())
    s3="";
    else
    s3=rs2.getString("Scholar_No");
    if(s1!=""){
        if(s2=="")
        response.sendRedirect("Page2-3.jsp");
        if(s3=="")
        response.sendRedirect("Documents2.jsp");
        else{
            %>
            <script type="text/javascript">
                alert("Data already exists");
                location="UpdateDoc.jsp";
            </script>
            <%
        }

    }
    else{
        %>
            <script type="text/javascript">
                alert("No such data exists , Please create a new record");
                location="UpdateDoc.jsp";
            </script>
        <%
    }
}
    stmt.close();
    con.close();
}
catch(Exception e){
    out.print(e.toString());
}
%>
</body>    
</html>