<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
       
        .welcome-message{
                background-color: rgb(14, 168, 152);;
                color: #fff;
                padding: 10px;
                margin-top: 10px;
                margin-bottom: 40px;
                font-size: 24px;
                font-weight: 500;
                font-family: raleway,sans-serif;
                text-align: center;
            }
        .profile {
            background-color: #f4f4f4;
            padding: 20px;
            margin-bottom: 20px;
        }
        .profile h2 {
            background-color: #fff;
            color:rgb(14, 168, 152);
        }
        .profile p {
            margin-bottom: 10px;
        }
        .profile p strong {
            color: rgb(14, 168, 152);
        }
        .logout {
            text-align: center;
        }
        .logout a {
            display: inline-block;
            padding: 10px 20px;
            background-color:rgb(14, 168, 152);
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
        }
        footer {
    background-color:rgb(14, 168, 152);
    color: #fff;
    padding: 20px;
    text-align: center;
}
    </style>
</head>
<body>
    <div class="container">
    <%
        String email=request.getParameter("email");
    try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","ganta123");
        String usersql="SELECT username FROM users WHERE email=?";
        PreparedStatement ps=con.prepareStatement(usersql);
        ps.setString(1,email);
        ResultSet rs=ps.executeQuery();
        if (rs.next()) {
            String username = rs.getString("username");
            %>
            <div class="welcome-message">
                <p>Hello, <%= username %>!</p>
            </div>

            <%
            String sql="SELECT Fname,mail,domain,gender,country,phn,qualification,stream,college,passingyear,github,linkedin FROM Applications where mail=?";
		    ps=con.prepareStatement(sql);
            ps.setString(1,email);
            rs=ps.executeQuery();
            while (rs.next()) {
            String n = rs.getString("Fname");
            String m = rs.getString("mail");
            String d = rs.getString("domain");
            String g = rs.getString("gender");
            String c = rs.getString("country");
            String phn = rs.getString("phn");
            String q = rs.getString("qualification");
            String s = rs.getString("stream");
            String co = rs.getString("college");
            String py = rs.getString("passingyear");
            String github = rs.getString("github");
            String linkedin = rs.getString("linkedin");
            %>    
                
                <div class="profile">
                    <h2>Profile Information</h2>
                    <p><strong>Name:</strong>    <%= n %></p>
                    <p><strong>Email:</strong>    <%= m %></p>
                    <p><strong>Internship Domain:</strong>    <%= d %></p>
                    <p><strong>Gender:</strong>    <%= g %></p>
                    <p><strong>Country:</strong>    <%= c %></p>
                    <p><strong>Mobile Number:</strong>    <%= phn %></p>
                    <p><strong>Qualification:</strong>    <%= q %></p>
                    <p><strong>Stream:</strong>    <%= s %></p>
                    <p><strong>College:</strong>    <%= co %></p>
                    <p><strong>Passing Year:</strong>    <%= py %></p>
                    <p><strong>Github:</strong>    <%= github %></p>
                    <p><strong>LinkedIn:</strong>    <%= linkedin %></p>
                </div>
                <div class="logout">
                    <a href="index.html">Logout</a>
                </div>
            <%
        }
    }
    else {
        out.println("User not found!");
    }
            ps.close();
			rs.close();
			con.close();
}
catch(Exception e)
		{
			out.println(e);
		}

 %>
    </div>
</div>
<footer>
  <p>&copy; 2023 Curio Internships. All rights reserved.</p>
</footer>
</body>
</html>
