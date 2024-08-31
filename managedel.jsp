<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
    <%
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","ganta123");
		String sql="DELETE FROM Domains WHERE Domain_name=?";
		PreparedStatement ps=con.prepareStatement(sql);
		String domain=request.getParameter("domain");
		ps.setString(1,domain);
		ResultSet rs=ps.executeQuery();
        out.println("Deleted Sucessfully");
		rs.close();
		ps.close();
		con.close();
			
	}
	catch(Exception ex)
	{
		out.println(ex);

	}

%>
