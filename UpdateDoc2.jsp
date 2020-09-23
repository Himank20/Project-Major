<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
    <body>
        <%
        try{
            String s1=request.getParameter("Update_Details");
            String s2=request.getParameter("New_Value");
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
                    location="Update2.jsp";
                </script>
                <%
            }
            else{
            int r=0;
            if(s1.equals("S_Name"))
            r=stmt.executeUpdate("update Student set S_Name='"+s2+"' where Scholar_No='"+s3+"'");
            if(s1.equals("Fathers_Name"))
            r=stmt.executeUpdate("update Student set Fathers_Name='"+s2+"' where Scholar_No='"+s3+"'");
            if(s1.equals("Mothers_Name"))
            r=stmt.executeUpdate("update Student set Mothers_Name='"+s2+"' where Scholar_No='"+s3+"'");
            if(s1.equals("Address"))
            r=stmt.executeUpdate("update Student set Address='"+s2+"' where Scholar_No='"+s3+"'");
            if(s1.equals("E_Mail"))
            r=stmt.executeUpdate("update Student set E_Mail='"+s2+"' where Scholar_No='"+s3+"'");
            if(s1.equals("Mobile_No"))
            r=stmt.executeUpdate("update Student set Mobile_No='"+s2+"' where Scholar_No='"+s3+"'");
            if(s1.equals("City"))
            r=stmt.executeUpdate("update Student set City='"+s2+"' where Scholar_No='"+s3+"'");
            if(s1.equals("State"))
            r=stmt.executeUpdate("update Student set State='"+s2+"' where Scholar_No='"+s3+"'");
            if(s1.equals("Pincode"))
            r=stmt.executeUpdate("update Student set Pincode='"+s2+"' where Scholar_No='"+s3+"'");
            if(s1.equals("Scholar_No"))
            r=stmt.executeUpdate("update Student set Scholar_No='"+s2+"' where Scholar_No='"+s3+"'");   
            %>
            <script>
                alert("Data Updated");
                location="Update2.jsp";
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
                    location="Update2.jsp";
                </script>
            <%
        }
        %>
    </body>
</html>