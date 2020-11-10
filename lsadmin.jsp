<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <!--font awesome-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <!--Google fonts if any-->
        <link href="https://fonts.googleapis.com/css2?family=Acme&display=swap" rel="stylesheet">
		<!--css custom if any-->
        <link rel="stylesheet" href="adminsheet.css">
<title>List Hod</title>
</head>
<body class="bg-dark">
	<%
	try {
		//Get admin details from mysql and display it...
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "Password@007");
		PreparedStatement ps=con.prepareStatement("select * from admin;");
		ResultSet rs = ps.executeQuery();
		rs.next();
		%>
		<section class="py-2">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="col text-center">
							<h2 class="display-4 text-light text-capitalize">-- admin details --</h2>
							<br> <br>
						</div>
					</div>
					<div class="row d-flex justify-content-center">
						<div class="col text-center">
							<a href="/fs_project/test.htm#info"><h5 class="text-light font-bold font-italic py-2 text-center">Click here to get back</h5></a>
						</div>
					</div>
					<div class="row d-flex justify-content-center mt-4">
						<div class="col-md-8">
							<table class="table text-dark table-striped table-light text-center">
							<tr> <td>Admin Name</td><td><%=rs.getString(1) %></td></tr>
							<tr><td>Admin ID</td><td><%=rs.getString(2)%></tr>
							</table>
						</div>
					</div>
				</div>
			</section>
		
		<% 
		con.close();
		
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
		out.print(e);
	} catch (SQLException e) {
		e.printStackTrace();
		out.print(e);
	}
	
	%>
</body>
</html>