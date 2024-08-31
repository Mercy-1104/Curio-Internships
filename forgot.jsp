<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <style>

    </style>
</head>
<body>
<%
    String mail=request.getParameter("mail");
    String newpass=request.getParameter("newpass");
    String npass=request.getParameter("npass");
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","ganta123");
        String sql="UPDATE users SET password=? WHERE email=?";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1,newpass);
        ps.setString(2,mail);
        int rowsAffected = ps.executeUpdate();
        if (rowsAffected > 0) {
            out.println("Password updated successfully.");
        } else {
            out.println("Failed to update the password. Please try again.");
        }
		ps.close();
        con.close();
    }
    catch(Exception ex)
	{
		out.println(ex);

	}
%>
</body>
</html>