<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","ganta123");
		String sql="insert into users values(?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		String mail=request.getParameter("mail");
		String pass=request.getParameter("pass");
		String user=request.getParameter("user");
		ps.setString(1,mail);
		ps.setString(2,pass);
		ps.setString(3,user);
		ResultSet rs=ps.executeQuery();
		response.sendRedirect("index.html");
		rs.close();
		ps.close();
		con.close();
			
	}
	catch(Exception ex)
	{
		out.println(ex);

	}

%>