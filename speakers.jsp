<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curio Speakers</title>
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
            .head{
              color:black;
              text-align: center;
              font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            }
            .container {
			display: flex;
			flex-wrap: wrap;
			justify-content: space-between;
			padding: 10px;
		}
.article {
			flex: 1 1 300px;
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
      font-family: Verdana, Geneva, Tahoma, sans-serif;
		}

		.article p {
			font-size: 16px;
			margin-top: 0;
			margin-bottom: 10px;
      color:black;
      font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
		}

footer {
  background-color:rgb(14, 168, 152);
  color: #fff;
  padding: 20px;
  text-align: center;
}
.article img {
			max-width: 100%;
			height: 300px;
      width: 300px;
			margin-bottom: 10px;
		}
    .body{
      font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    }

        </style>
    </head>
    <body>
        <div class="heading">
            <h2>Curio Speakers</h2>
        </div>
        <div class="head"><h1>We are committed expert Speakers!</h1></div>
        <div class="container">
          <%
          try
          {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","ganta123");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT Speaker_name,img_address,Domain,Rating,Description FROM Speakers");
            while (rs.next()) {
              String speakerName = rs.getString("Speaker_name");
              String img = rs.getString("img_address");
              String domain = rs.getString("Domain");
              int rating = rs.getInt("Rating");
              String description = rs.getString("Description");
              %>
              <div class="article">
                <img src="<%= img %>" alt="img1">
                <h3><%= speakerName %></h3>
                <h4><%= domain %></h4>
                <p>Rating : <%= rating %></p>
                <p><%= description %></p>
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