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
       
       
       
    <table class="table table-hover text-center table-bordered">
  <thead>
    <tr class="cyan">
      <th scope="col">#</th>
      <th scope="col">Product Name</th>
      <th scope="col">()Price</th>
      <th scope="col">Category</th>
      <th scope="col">Edit</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
     	 
     	
     	 <%
try{ 
	
 int number=0;   
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();

String sql ="SELECT * FROM products;";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	number++;
	  
%>

 
   <tr>
   	  
    <b>  <td><%=resultSet.getString("pid") %></td>
      <td><%=resultSet.getString("pName") %></td>
      <td>&#8377 <%=resultSet.getString("pPrice") %></td>
      <td><%=resultSet.getString("pCategories") %></td></b>
      <td><a href='edit.jsp?u=<%=resultSet.getString("pid")%>'><button type="submit" class="btn cyan">Edit</button></a></td>
       <td><a href='Delete.jsp?u=<%=resultSet.getString("pid")%>'><button type="submit" class="btn  btn-danger" >Delete</button></a> </td>
    </tr>
     <!-- Modal Sign Up -->
   
   <div class="modal fade" id="updateTable" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Sign In</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form name="form" action="AddProducts" method="post">
        <div class="form-group">
    <label for="">Product Name</label>
    <input type="text" class="form-control" id="pname" name="pName" value="<%=resultSet.getString("pName") %>">
   
  </div>
  <div class="form-group">
    <label for="">Product Price</label>
    <input type="number" class="form-control" id="pPrice" name="pPrice" value="<%=resultSet.getString("pPrice") %>">
   
  </div>
  
  <div class="form-group">
    <label for="">Product Discription</label>
    <input type="text" class="form-control" id="pDiscription" name="pDiscription" placeholder="<%=resultSet.getString("pDiscription") %>">
   
  </div>
   <div class="form-group">
    <label for="">Product Categories </label>
    <input type="text" class="form-control" id="pCategories" name="pCategories" placeholder="<%=resultSet.getString("pCategories") %>">
   
  </div>
  
   <div class="form-group">
    <label for="">Product Size</label>
    <input type="text" class="form-control" id="pSize" name="pSize" placeholder="<%=resultSet.getString("pSize") %>">
   
  </div>
   <div class="form-group">
    <label for="">Product Image</label>
    <input type="file" class="form-control" id="pImage" name="pImage" placeholder="<%=resultSet.getString("pImage") %>">
    </div>
   
  <br>
   
  
  <br>
  
  <button type="submit" class="btn btn-block btn-def">Submit</button>
</form>
      <div class="modal-footer">
           <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
  
      </div>
    </div>
  </div>
</div>

      
   
   <% 
  
}

} catch (Exception e) {
e.printStackTrace();
}
     	 
     	 
%>
    </tbody>
</table>
  <br>
  
  <a href="addproducts.jsp"> <button type="submit" class="btn btn-block btn btn-def" >Add New Product</button></a>
  
   <br>
  
<jsp:include page="footer.jsp"/>
	