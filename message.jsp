<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
          body{
            background-image: url(https://images.pexels.com/photos/6005318/pexels-photo-6005318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
            margin-top: 80px;
            background-size:cover ;
            background-repeat: no-repeat;
          }
          .article h3{
            color:black;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            text-align: center;
            font-size: 68px;
          }
          .article p{
            color: black;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            text-align: center;
            font-size: 32px;
          }
          .btn {
        display: inline-block;
        padding: 10px 20px;
        background-color:rgb(14, 168, 152);
        color: #fff;
        text-decoration: none;
         border-radius: 4px;
         text-align: center;
         margin-left: 47%;
         margin-right: 30%;
        }
        </style>
    </head>
    <body>
    <%
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","ganta123");
		Statement stmt = con.createStatement();
    String sql="insert into Message values(?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		String n=request.getParameter("name");
		String m=request.getParameter("email");
    String me=request.getParameter("message");
        ps.setString(1,n);
        ps.setString(2,m);
        ps.setString(3,me);
        ResultSet rs=ps.executeQuery();
      %>
        
        <div class="article">
        <h3>Thanks for choosing Curio!</h3>
        <p><b>Thank You for your message!</b></p>
        <p><b>We will send an email within 48 hours.</b></p>
          <a href="contact.jsp" class="btn">Go back</a>
      </div>

      <%
    rs.close();
		stmt.close();
    con.close();
    }
	catch(Exception ex)
	{
		out.println(ex);

	}

%>
</body>
</html>