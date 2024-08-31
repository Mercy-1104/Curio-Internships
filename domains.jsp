<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Internship Domains</title>
        <style>
            .heading{
                background-color: black;
                color: #fff;
                padding: 10px;
                margin-top: 10px;
                margin-bottom: 40px;
                font-size: 18px;
                font-weight: 500;
                font-family: raleway,sans-serif;
            }
            .container {
			        display: flex;
			        flex-wrap: wrap;
			        justify-content: space-between;
			        padding: 10px;
		        }
.article {
			flex: 1 1 250px;
			margin: 10px;
			padding: 10px;
			background-color: #fff;
			box-shadow: 0 0 5px #ccc;
      text-align: center;
		}

		.article h3 {
			font-size: 24px;
			margin-top: 0;
			margin-bottom: 10px;
              color: black;
		}

		.article p {
			font-size: 16px;
			margin-top: 0;
			margin-bottom: 10px;
            color:black;
		}

footer {
  background-color:rgb(14, 168, 152);
  color: #fff;
  padding: 20px;
  text-align: center;
}
.btn {
  display: inline-block;
  padding: 10px 20px;
  background-color:rgb(14, 168, 152);
  color: #fff;
  text-decoration: none;
  border-radius: 4px;
  text-align: center;
}

        </style>
    </head>
    <body>
        <div class="heading">
            <h2>Internship Domains</h2>
        </div>
        <div class="container">
        <%
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","ganta123");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT Domain_name,Position,Duration,Location FROM Domains");
    while (rs.next()) {
      String domainName = rs.getString("Domain_name");
      String position = rs.getString("Position");
      String duration = rs.getString("Duration");
      String location = rs.getString("Location");
      %>
        
          <div class="article">
        <h3><%= domainName %></h3>
        <p>Position- <%= position %></p>
         <p>Location- <%= location %></p>
          <p>Duration- <%= duration %></p>
          <a href="application.jsp" class="btn">Apply Now</a>
      </div>

      <%
      
    }
    rs.close();
		stmt.close();
    con.close();
	}
	catch(Exception ex)
	{
		out.println(ex);

	}

%>
</div>
          <footer>
            <p>&copy; 2023 Curio Internships. All rights reserved.</p>
          </footer>
      
    </body>
</html>