
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="header.jsp"/>

         <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "users";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
       
       
       
     <div class="container-fluid">
     	<div class="container-fluid ">
      	<div class="col-12">
          <div class="line text-center"><span>Flash Sale</span> End IN : 2 Days</div>
        </div>
          
        
       <hr class="hr"> 
       </div>
     	</div>
     	 <div class="container">
     	  <div class="row">
     	 
     	
     	 <%
     	 
try{ 
 int number=0;   
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM products ORDER BY pid DESC;";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	
	 if(number == 3)
	   {
	       out.print("<div class='row'>");
	     
	       
	   }
	  
%>

    <div class="col-sm">
     <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="images/products/<%=resultSet.getString("pImage") %>" alt="Card image cap">
  <div class="card-body">
    <h5 class=""><%=resultSet.getString("pName") %></h5>
    <h5 class=""><%=resultSet.getString("pDiscription") %></h5>
    <h1 class="card-text">&#8377 <%=resultSet.getString("pPrice") %>
    </h1>
 <a href='ProductDetails.jsp?u=<%=resultSet.getString("pid")%>'>   <button class="btn btn-def btn-rounded" >Buy Now</button></a>
  </div>
</div>
   </div>
   
   <% 
   if(number == 3)
   {
       out.print("</div>");
       number = 0;
       number++;
   }
}

} catch (Exception e) {
e.printStackTrace();
}
%>
    </div>
    
  </div>
  <br>
<jsp:include page="footer.jsp"/>
	