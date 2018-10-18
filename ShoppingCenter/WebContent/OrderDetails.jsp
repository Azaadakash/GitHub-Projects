<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:include page="header.jsp"/>

<style>
.credit-card-div  span { padding-top:10px; }
.credit-card-div img { padding-top:30px; }
.credit-card-div .small-font { font-size:9px; }
.credit-card-div .pad-adjust { padding-top:10px; }
</style>
<div class="container">
 <form name="form" action="AddressDetails" method="post">
<div class="form-group"> <!-- Full Name -->
		<label for="full_name_id" class="control-label">Full Name</label>
		<input type="text" class="form-control" id="full_name" name="full_name" placeholder="John Deer">
	</div>	

	<div class="form-group"> <!-- Street 1 -->
		<label for="street1_id" class="control-label">Street Address 1</label>
		<input type="text" class="form-control" id="street1" name="street1" placeholder="Street address, P.O. box, company name, c/o">
	</div>					
							
	
	<div class="form-group"> <!-- City-->
		<label for="city_id" class="control-label">City</label>
		<input type="text" class="form-control" id="city" name="city" placeholder="Smallville">
	</div>									
							
	
	<div class="form-group"> <!-- Zip Code-->
		<label for="zip_id" class="control-label">Zip Code</label>
		<input type="number" class="form-control" id="zip" name="zip" placeholder="#####">
	</div>
	
   
  <br>
   <button type="submit" class="btn btn-block btn-def">Submit</button>
  </form>
  </div>



</div>
<jsp:include page="footer.jsp"/>
