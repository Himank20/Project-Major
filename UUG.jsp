<!DOCTYPE html>
<html>
    <head>
        <style>
         p {
	    font-size: 25px;
	    text-align: right ;
	    color: white;
	    font-family: arial;
        }

        .wrapper {
        text-align: center;
        }

        button {
		display: block;
		margin: auto;
		padding: 15px 118px;
		font-size: 30px;
		color: white;
		border: none;
		background-color: #07CCF5;
	}

        h1 {
			font-size: 50px;
			text-align: center;
			text-decoration: underline;
			font-family: tahoma;
			color: white;
		}

        input {
            background-color: #E7E5E5;
		width: 300px;
		height: 20px;
		position: relative;
		display: block;
		margin: auto;
		padding: 12px 15px;
		border: none;
	    }

        div {
		width: 400px;
		height: 390px;
		background-color: white;
		margin: auto;
		left: 0; right: 0; top: 0; bottom: 0;
		position: fixed;
		border-radius: 10px;
	    }

        a {
			text-decoration: none;
			color: #07CCF5;
			font-weight: bold;
		}

        select {
		background-color: #E7E5E5;
		width: 320px;
		height: 30px;
		border:none;
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
    <h1>UPDATE FORM</h1>
    <br><br>
    <div class="boxed">
    <form action="UpdateUUG.jsp" method="POST">
    <table align="center" cellspacing="10" cellpadding="10">
    <tr>
    <td>
    <select name="Update_Details" required>
        <option value="">Select the detail you want to update</option>
        <option value="TFW">Tution Fee Waiver</option>
        <option value="Tenth_Marksheet">Tenth Marksheet</option>
        <option value="Twelth_Marksheet">Twelth Marksheet</option>
        <option value="TC">Transfer Certificate</option>
        <option value="Domicile">Domicile</option>
      </select>
      </td>
      </tr>
      <br><br>
      <tr>
          <td>
            <select name="Status" required>
                <option value="">Select the verification status</option>
                <option value="Verified">Verified</option>
                <option value="Currently not available">Currently not available</option>
                <option value="Not available">Not available</option>
                <option value="Not applicable">Not applicable</option>
            </select>    
          </td>
      </tr>
      </table>
      <br>
      <input type="text"  name="Scholar_No" maxlength="30" placeholder="Enter Scholar No" required />
      <br><br>
      <button type="submit" value="submit">Update</button> 
    </div>
    </form>  
    </body>
</html>