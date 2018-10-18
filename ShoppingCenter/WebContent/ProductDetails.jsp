<%@page import="javax.servlet.jsp.jstl.sql.ResultSupport"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="header.jsp"/>

 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.PreparedStatement"%>

<%

String driverName = "oracle.jdbc.driver.OracleDriver";
String connectionUrl = "jdbc:oracle:thin:@localhost:1521:XE";
String dbName = "AZAADAAKASH";
String userId = "AZAADAAKASH";
String password = "azaadaakash";

try {
Class.forName(driverName).newInstance();
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);

%>


			
 <%
 statement=connection.createStatement();
 String u = request.getParameter("u");
 int num = Integer.parseInt(u);
 String data = "SELECT * FROM products where pid='"+num+"'";
 resultSet = statement.executeQuery(data);
 while (resultSet.next()){

	 
	 %>
	 <link rel="stylesheet" href="/css/prodetails.css">
	 
	<div class="container">
		<div class="jumbotron">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-5">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="Images/products/<%=resultSet.getString("pImage") %>" /></div>
						 
						</div>
						
						
					</div>
					<div class="details col-md-7">
						<h1 class="product-title"><%=resultSet.getString("pName") %></h1>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">41 reviews</span>
						</div>
						<h3 class="product-description"><%=resultSet.getString("pDiscription") %></h3>
						<h2 class="price">Price: <span>&#8377 <%=resultSet.getString("pPrice") %></span></h2>
						<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
						<h5 class="sizes">sizes:
							<span class="size" data-toggle="tooltip" title="small">s</span>
							<span class="size" data-toggle="tooltip" title="medium">m</span>
							<span class="size" data-toggle="tooltip" title="large">l</span>
							<span class="size" data-toggle="tooltip" title="xtra large">xl</span>
						</h5>
						
						<div class="action">
						<a href="Cart.jsp?u=<%=resultSet.getString("pid") %>">	<button class="add-to-cart btn btn-default" type="button">add to cart</button></a>
							<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	
   <%
   
   String pid = resultSet.getString("pid");
   String pname = resultSet.getString("pName");
   String pprice = resultSet.getString("pPrice");
   
   session=request.getSession();  
   session.setAttribute("pname",pname);
   session.setAttribute("pid",pid);
   session.setAttribute("pprice",pprice);
   
   
 }
   %>
 

<jsp:include page="footer.jsp"/>


