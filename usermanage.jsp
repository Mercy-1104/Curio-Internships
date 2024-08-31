<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
    <%
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","ganta123");
		String sql="insert into users values(?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		String email =request.getParameter("email");
		String pass =request.getParameter("pass");
		String username=request.getParameter("username");
		ps.setString(1,email);
		ps.setString(2,pass);
		ps.setString(3,username);
		ResultSet rs=ps.executeQuery();
        out.println("Added Sucessfully");
		rs.close();
		ps.close();
		con.close();
			
	}
	catch(Exception ex)
	{
		out.println(ex);

	}

%>
