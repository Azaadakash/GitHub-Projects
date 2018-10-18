<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
 <%@page import ="java.io.PrintWriter"  %>
 <%@page import="javax.servlet.*"%>  
 <%@page import= "javax.servlet.http.*" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShoppingCenter</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
	 
String uname = (String)session.getAttribute("uname");



%>
   <!--Navbar -->
   <div>
        <nav class="mb-4 navbar navbar-expand-lg navbar-dark navbar1 navbar-fixed-top">
             <a>  <i class="fa fa-bell" style="color:#ececec"> Get Minimum 30-70% Off On Over 1,50,000 Styles!</i>  </a> 
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4" aria-controls="navbarSupportedContent-4" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
               
                <div class="collapse navbar-collapse" id="navbarSupportedContent-4">
                    <ul class="navbar-nav ml-auto">
                    
                        <li class="nav-item active">
                            <a class="nav-link" href="#contact"><i class="fa fa-envelope"></i> Contact <span class="sr-only">(current)</span></a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fa fa-gear"></i> Settings</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fa fa-question-circle"></i> Whats This !</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link " id="navbarDropdownMenuLink-4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user"></i>Welcome, <%  out.println(uname);%> </a>
                            
                              
                    </ul>
                </div>
            </nav>
       </div>
       
       <!-- Navbar 2 -->
       <div>
        <nav class="mb-4 navbar navbar-expand-lg navbar-default">
             <img alt="" class="logo" src="Images/ShopWithUs.png">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4" aria-controls="navbarSupportedContent-4" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button> 
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav ml-auto">
                      <li class="nav-item">
                            <a class="nav-link waves-effect waves-light" href="Message.jsp">Home</a>
                        </li>
                        <!-- Dropdown -->
                        <li class="nav-item dropdown">
                            <a href="Message.jsp" class="nav-link " id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Products </a>
                            <div class=" dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                                
                            </div>
                        </li>
        				<li class="nav-item">
                            <li class="nav-link"><a href="cart.jsp">View Cart</a>
                        </li>
        				                    
		                       
                        <li class="nav-item">
                            <li class="nav-link"><a href="#contact">Contact Us</a>
                        </li>
                        <li class="nav-item">
                            <li class="nav-link"><a href="index.jsp">Logout</a>
                        </li>
                    </ul>
                    </div>
                    
                    </nav>
                    </div>
       </body>
       </html>
       
