<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:include page="header.jsp"/>

<div class="container">
	<div class = "jumbotron">
 <form name="form" action="AddProducts" method="post">
        <div class="form-group">
    <label for="">Product Name</label>
    <input type="text" class="form-control" id="pname" name="pName" placeholder="Enter Name">
   
  </div>
  <div class="form-group">
    <label for="">Product Price</label>
    <input type="number" class="form-control" id="pPrice" name="pPrice" placeholder="Product Price">
   
  </div>
  
  <div class="form-group">
    <label for="">Product Discription</label>
    <input type="text" class="form-control" id="pDiscription" name="pDiscription" placeholder="Product Discription">
   
  </div>
   <div class="form-group">
    <label for="">Product Categories </label>
    <input type="text" class="form-control" id="pCategories" name="pCategories" placeholder="Product Categories">
   
  </div>
  
   <div class="form-group">
    <label for="">Product Size</label>
    <input type="text" class="form-control" id="pSize" name="pSize" placeholder="Product Size">
   
  </div>
   <div class="form-group">
    <label for="">Product Image</label>
    <input type="file" class="form-control" id="pImage" name="pImage" placeholder="Product Size">
    </div>
   
  <br>
   <button type="submit" class="btn btn-block btn-def">Submit</button>
  </form>
  </div>
   
  </div>
  