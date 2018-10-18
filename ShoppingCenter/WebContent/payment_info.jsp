<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:include page="header.jsp"/>

<div class="container-fluid">
<div class="jumbotron">

<div class="panel panel-default" >
 <div class="panel-heading">
     <h1>Enter Your Card Details </h1>
<br>


<div class="container">

 
<form name="form" action="payment_info" method="post">
              <div class="col-md-12">
                  <input type="number" name="card_no" class="form-control" placeholder="Enter Card Number" />
              </div>
          
     <div class="row ">
              <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" > Expiry Month</span>
                  <input type="number"  name="mm" class="form-control" placeholder="MM" />
              </div>
         <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" >  Expiry Year</span>
                  <input type="number" name="yy" class="form-control" placeholder="YY" />
              </div>
                  <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" >  Expiry Date</span>
                  <input type="number" name="dd" class="form-control" placeholder="dd" />
              </div>
     
        <div class="col-md-3 col-sm-3 col-xs-3">
                  <span class="help-block text-muted small-font" >  CCV</span>
                  <input type="number" name="cvv" class="form-control" placeholder="CCV" />
              </div>
         <div class="col-md-3 col-sm-3 col-xs-3">
<img src="assets/img/1.png" class="img-rounded" />
         </div>
          </div>
     <div class="row ">
              <div class="col-md-12 pad-adjust">

                  <input type="text" class="form-control" name="name_user" placeholder="Name On The Card" />
              </div>
          </div>
  <br>
   <button type="submit" class="btn btn-block btn-def">Submit</button>
  </form>
  </div>

<jsp:include page="footer.jsp"/>