<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
    <%
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","ganta123");
		String sql="insert into Domains values(?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		String domain=request.getParameter("domain");
		String position=request.getParameter("position");
		String location=request.getParameter("location");
        String duration=request.getParameter("duration");
		ps.setString(1,domain);
		ps.setString(2,position);
		ps.setString(3,location);
        ps.setString(4,duration);
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
