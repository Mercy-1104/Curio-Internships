<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
        <style>
            .heading{
                background-color:rgb(14, 168, 152);
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

        </style>
    </head>
    <body>
        <div class="heading">
            <h2>Messages from Users</h2>
        </div>
        <div class="container">
        <%
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","ganta123");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT Name,mail,mess FROM Message");
    while (rs.next()) {
      String Name = rs.getString("Name");
      String mail = rs.getString("mail");
      String mess = rs.getString("mess");
      %>
        
          <div class="article">
        <p>Name- <%= Name %></p>
        <p>Email- <%= mail %></p>
        <p>Message- <%= mess %></p>
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
      
    </body>
</html>