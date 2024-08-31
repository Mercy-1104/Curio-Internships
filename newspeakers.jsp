<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
    <%
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","ganta123");
		String sql="insert into Speakers values(?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		String speaker =request.getParameter("speaker");
		String img =request.getParameter("img");
		String domain=request.getParameter("domain");
        String rating=request.getParameter("rating");
		String description =request.getParameter("description");
		ps.setString(1,speaker);
		ps.setString(2,img);
		ps.setString(3,domain);
        ps.setString(4,rating);
        ps.setString(5,description);
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
