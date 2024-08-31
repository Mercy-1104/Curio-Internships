<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
	String email=request.getParameter("mail");
	String password=request.getParameter("pass");
	if (email.equals("admin08@gmail.com") && password.equals("admin008")) {
		session.setAttribute("isAdmin", true);
        response.sendRedirect("admin.html");
	}
	else
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","ganta123");
			String sql="select * from users where EMAIL=? and PASSWORD=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,request.getParameter("mail"));
			ps.setString(2,request.getParameter("pass"));
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				session.setAttribute("ses_mail",request.getParameter("mail"));
				response.sendRedirect("user.jsp?email=" + email);

			}
			else
			{
				out.println("invalid credentials");
			}


			ps.close();
			rs.close();
			con.close();
		
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}
%>
