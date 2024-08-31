<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<head>
  <title>Application status</title>
  <style>
    body{
      background-image:url(https://images.pexels.com/photos/6005318/pexels-photo-6005318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
            margin-top: 80px;
            background-size:cover ;
            background-repeat: no-repeat;
    }
    .article h3{
      color: black;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            text-align: center;
            font-size: 68px;
    }
    .article p{
            color: black;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            text-align: center;
            font-size: 32px;
            

    }
    .btn {
  display: inline-block;
  padding: 10px 20px;
  background-color:rgb(14, 168, 152);
  color: #fff;
  text-decoration: none;
  border-radius: 4px;
  text-align: center;
  margin-left: 47%;
  margin-right: 30%;
}
  </style>
</head>
  <body>
    <%
    try
    {
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","ganta123");
      String sql="insert into Applications values(?,?,?,?,?,?,?,?,?,?,?,?)";
      PreparedStatement ps=con.prepareStatement(sql);
      String d=request.getParameter("domain");
      String F=request.getParameter("Fname");
          String m=request.getParameter("mail");
          String g=request.getParameter("gender");
          String c=request.getParameter("country");
          String ph=request.getParameter("Phn");
          String li=request.getParameter("linkedin");
          String gi=request.getParameter("github");
          String q=request.getParameter("qualification");
          String s=request.getParameter("stream");
          String co=request.getParameter("college");
          String pa=request.getParameter("passingyear");
          ps.setString(1,d);
          ps.setString(2,F);
          ps.setString(3,m);
          ps.setString(4,g);
          ps.setString(5,c);
          ps.setString(6,ph);
          ps.setString(7,li);
          ps.setString(8,gi);
          ps.setString(9,q);
          ps.setString(10,s);
          ps.setString(11,co);
          ps.setString(12,pa);
      ResultSet rs=ps.executeQuery();
      %>
          <div class="article">
              <h3>Your application has been received</h3>
              <p>Thanks for applying!</p>
          </div>
          <a href="domains.jsp" class="btn">Go back</a>
          <%
      rs.close();
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