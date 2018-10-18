<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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


   <!--Navbar -->
   <div>
        <nav class="mb-4 navbar navbar-expand-lg navbar-dark navbar1 navbar-fixed-top">
             <a>  <i class= style="color:white"> Get Minimum 20% Off On Over 1500 Styles!</i>  </a> 
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4" aria-controls="navbarSupportedContent-4" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
               
                <div class="collapse navbar-collapse" id="navbarSupportedContent-4">
                    <ul class="navbar-nav ml-auto">
                    
                        <li class="nav-item active">
                            <a class="nav-link" href="#"><i class="fa fa-envelope"></i> Contact <span class="sr-only">(current)</span></a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fa fa-gear"></i> Settings</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fa fa-question-circle"></i> What is this !</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user"></i> Sign in </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-cyan" aria-labelledby="navbarDropdownMenuLink-4">
                                <a class="dropdown-item " data-toggle="modal" data-target="#exampleModal" href="#">My account
                                </a>
                                
                                <a class="dropdown-item" data-toggle="modal" data-target="#signupModal" href="#">Sign Up</a>
                                
                                <a class="dropdown-item" data-toggle="modal" data-target="#AdminModal" href="#">Admin</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
       </div>
       <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Sign Up</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form  name="LoginDetails" action="Login" method="post" >
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
  <br>
  
  <button type="submit" class="btn btn-block btn-def">Submit</button>
</form>
<div class="text-center">
<button type="submit" class="btn  btn-danger"  data-toggle="modal" data-target="#signupModal" data-dismiss="modal" >Don't Have An Account</button>
      </div>
      </div>
      <div class="modal-footer">
           <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
  
      </div>
    </div>
  </div>
</div>
<!-- Admin Modal -->

<div class="modal fade" id="AdminModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Sign In</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form  name="AdminModal" action="Admin" method="post" >
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
  <br>
  
  <button type="submit" class="btn btn-block btn-def">Submit</button>
</form>
<div class="text-center">
<button type="submit" class="btn  btn-danger"  data-toggle="modal" data-target="#signupModal" data-dismiss="modal" >Don't Have An Account</button>
      </div>
      </div>
      <div class="modal-footer">
           <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
  
      </div>
    </div>
  </div>
</div>


       <!-- Modal Sign Up -->
       
        <div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Create My Account</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form name="form" action="Registration" method="post" onsubmit="return validate()">
        <div class="form-group">
    <label for="">Name</label>
    <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name">	 
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="password" id="password" placeholder="Password">
  </div>
   <div class="form-group">
    <label for="exampleInputPassword1">Confirm Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Confirm Password">
  </div>
  <br>
  <button type="submit" class="btn btn-block btn-def">Create My Account</button>
</form>
<div class="text-center">
<button type="submit" class="btn btn-danger"  data-toggle="modal" data-target="#exampleModal" data-dismiss="modal" >I Have A Account</button>
      </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
    </div>
    </div>
    </div>
    
       <!-- Navbar 2 -->
       <div>
        <nav class="mb-4 navbar navbar-expand-lg navbar-default">
             <img alt="" class="logo" src="Images/ShoppingCenter.png">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4" aria-controls="navbarSupportedContent-4" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button> 
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav ml-auto">
                      <li class="nav-item">
                            <a class="nav-link waves-effect waves-light" href="index.jsp">Home</a>
                        </li>
                        <!-- Dropdown -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Clothing & Footwear </a>
                            <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#">Zara</a>
                                <a class="dropdown-item" href="#">United Colors of Benetton</a>
                                <a class="dropdown-item" href="#">Jack & Jones</a>
                                <a class="dropdown-item" href="#">Forever 21</a>
                                <a class="dropdown-item" href="#">Levis</a>
                                <a class="dropdown-item" href="#">Lee</a>
                                <a class="dropdown-item" href="#">H&M</a>
                                <a class="dropdown-item" href="#">Gucci</a>
                                <a class="dropdown-item" href="#">versace</a>
                                
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Electronics & Gadgets </a>
                            <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                            <div class="container-fluid">
                                <a class="dropdown-item" href="#">Nokia</a>
                                
                                <a class="dropdown-item" href="#">HTC</a>
                                <a class="dropdown-item" href="#">HP</a>
                                <a class="dropdown-item" href="#">Apple</a>
                               
                                <a class="dropdown-item" href="#">Nikon</a>
                                <a class="dropdown-item" href="#">Sony</a>
                                <a class="dropdown-item" href="#">Dell</a>
                                
                                </div>
                            </div>
                            
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Kitchen & Furniture </a>
                            <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                            <div class="container-fluid">
                                <a class="dropdown-item" href="#">Nokia</a>
                                
                                <a class="dropdown-item" href="#">HTC</a>
                                <a class="dropdown-item" href="#">HP</a>
                                <a class="dropdown-item" href="#">Apple</a>
                                
                                <a class="dropdown-item" href="#">Nikon</a>
                                <a class="dropdown-item" href="#">Sony</a>
                   
                                <a class="dropdown-item" href="#">Dell</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Bathroom & Toilet </a>
                            <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                            <div class="container-fluid">
                                 <a class="dropdown-item" href="#">Nokia</a>
                                
                                <a class="dropdown-item" href="#">HTC</a>
                                <a class="dropdown-item" href="#">HP</a>
                                <a class="dropdown-item" href="#">Apple</a>
                                
                                <a class="dropdown-item" href="#">Nikon</a>
                                <a class="dropdown-item" href="#">Sony</a>
                   
                                <a class="dropdown-item" href="#">Dell</a>
                                </div>
                            </div>
                        </li>
                        
                       
                        <li class="nav-item">
                            <li class="nav-link"><a >Contact Us</a>
                        </li>
                    </ul>
                    </div>
                    
                    </nav>
                    </div>
       
       <!-- Carousel -->
   
 <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="Images/furniture1.jpeg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
       <div class="transbox">
    <h1>TOP BRANDS</h1>
    <h1>UPTO 20% <i>OFF</i></h1>
    <h1>+EXTRA 10% <i>OFF</i> </h1>
  </div>
  
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="Images/furniture3.jpeg" alt="Second slide">
      <div class="transbox">
    <h1>TOP BRANDS</h1>
    <h1>UPTO 25.500%  <i>OFF</i></h1>
    <h1>+EXTRA 10% <i>OFF</i> </h1>
  </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="Images/furniture.jpeg" alt="Third slide">
      <div class="transbox">
    <h1>TOP BRANDS</h1>
    <h1>UPTO 30.25% <i>OFF</i></h1>
    <h1>+EXTRA 10% <i>OFF</i> </h1>
  </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>  

	<div class="jumbotron">
       <div class="container ">
  <div class="row">
    <div class="col-sm">
          <i class="fa fa-lg fa-truck serviceblock"></i>
     <h2 class="jumbotext">Free Shiping</h2>
      

    </div>
    <div class="col-sm">
       <i class="fa fa-lg fa-history serviceblock"></i>
     <h2 class="jumbotext">MONEY BACK GUARANTEE(Condition applies)</h2>
    </div>
    <div class="col-sm">
      <i class="fa fa-lg fa-phone serviceblock"></i>
     <h2 class="jumbotext">Online Support 24/7</h2>
    </div>
  </div>
</div>
       <div>
       
       
       </div>
       </div>
       <div class="container-fluid ">
      	<div class="col-12">
          <div class="line text-center"><span>Top T-Shirts Categories</span></div>
        </div>
          
        
       <hr class="hr"> 
       </div>
     
		<div class="container-fluid">
      <div class="jumbotron">
     <div class="container-fluid">
  <div class="row">
    <div class="col-sm">
     <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="Images/furniture1.jpeg" alt="Card image cap">
  <div class="card-body">
    <h1 class="card-text">T-Shirts</h1>
  </div>
</div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="Images/furniture.jpeg" alt="Card image cap">
  <div class="card-body">
    <h1 class="card-text">Round Neck T-Shirts</h1>
  </div>
</div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="Images/furniture.jpeg" alt="Card image cap">
  <div class="card-body">
    <h1 class="card-text">V Neck T-Shirts</h1>
  </div>

</div>
</div>
</div>
           </div>
       </div>
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
    <div class="col-sm">
     <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="Images/products/1.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="">Unisex Premium Stussy Logo Simple T shirt Design Clothfusion</h5>
    <h1 class="card-text">&#8377 1290.50 – &#8377 1800.50
    </h1>
    <button class="btn btn-def btn-rounded">Buy Now</button>
  </div>
</div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="Images/products/2.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="">Unisex Premium Fur Fox Sake Tshirt T-shirt</h5>
    <h1 class="card-text">&#8377 1290.50 – &#8377 1800.50
    </h1>
    <button class="btn btn-def btn-rounded">Buy Now</button>
  </div>
</div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="Images/products/3.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="">Unisex Premium Fur Fox Sake Tshirt T-shirt</h5>
    <h1 class="card-text">&#8377 1290.50 – &#8377 1800.50
    </h1>
    <button class="btn btn-def btn-rounded">Buy Now</button>
  </div>
</div>
    </div>
    </div>
    
 
  <div class="row">
    <div class="col-sm">
     <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="Images/products/4.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="">Maroon solid viscose top</h5>
    <h1 class="card-text">&#8377 599.50 – &#8377 999.50
    </h1>
    <button class="btn btn-def btn-rounded">Buy Now</button>
  </div>
</div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="Images/products/5.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="">Red Viscose Regular Top</h5>
    <h1 class="card-text">&#8377 990.50 – &#8377 999.50
    </h1>
    <button class="btn btn-def btn-rounded">Buy Now</button>
  </div>
</div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="Images/products/6.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="">Dark Pink Poly Crepe Top</h5>
    <h1 class="card-text">&#8377 1290.50 – &#8377 1800.50
    </h1>
    <button class="btn btn-def btn-rounded">Buy Now</button>
  </div>
</div>
    </div>
    </div>
    
  </div>
     
     <hr class="hr">
     <div class="container-fluid text-center ">
     	<h3 class="">Subscribe Us</h3>
     	<div class="jumbotron try-new">
     	<div class="container">
  <div class="row">
    <div class="col-sm">
    <button type="button" class="btn btn-primary"><i class="fa fa-facebook pr-1"></i> Facebook</button>
    </div>
    <div class="col-sm">
     <button type="button" class="btn btn-info"><i class="fa fa-twitter pr-1"></i> Twitter</button>
    </div>
    <div class="col-sm">
      <button type="button" class="btn btn-danger"><i class="fa fa-google-plus pr-1"></i> Google +</button>
    </div>
     <div class="col-sm">
    <button type="button" class="btn btn-blue"><i class="fa fa-linkedin pr-1"></i> Linkedin</button>
    </div>
     <div class="col-sm">
    <button type="button" class="btn btn-primary"><i class="fa fa-instagram pr-1"></i> Instagram</button>
    </div>
   
  </div>
</div>
     	
     	</div>
     </div>
      </div>
     
     <!-- Footer  -->
     <div class="footer">
     <div class="container-fluid jumbotron footerjumbo">
     
  <div class="row">
    <div class="col-sm">
    <h5><b>Clothing & Footwear</b></h5>
    	<ul>
    		
                                <li>HP</li>
                                <li>Ralph Lauren</li>
                                <li>Old Navy</li>
                                <li>Foreever 21</li>
                                <li>American Eagle</li>
                                <li>H&M</li>
                                <li>Vineyard Vines</li>
    	
    	</ul>
    </div>
    <div class="col-sm">
     <h5><b>Electronics</b></h5>
    	<ul>
    		
                                <li>Nike</li>
                                <li>Apple</li>
                                <li>Canon</li>
                                <li>Nikon</li>
                                <li>Sony</li>
                                <li>GoPro</li>
                                <li>Sandisk</li>
    	
    	</ul>
    </div>
    <div class="col-sm">
      <h5><b>Electronics</b></h5>
    	<ul>
    		
                                <li>Zara</li>
                                <li>United Colors of Benetton</li>
                                <li>Old Navy</li>
                                <li>Foreever 21</li>
                                <li>American Eagle</li>
                                <li>H&M</li>
                                <li>Vineyard Vines</li>
    	</ul>
    </div>
       <div class="col-sm footerjumbo">
      <h5><b>Contact Us</b></h5>
    	<ul>
    		
                                <form class="form-inline">
  <label class="sr-only" for="inlineFormInputName2">Name</label>
  <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Jane Doe">
	
  <label class="sr-only" for="inlineFormInputGroupUsername2">Username</label>
  <div class="input-group mb-2 mr-sm-2">
    <div class="input-group-prepend">
     
    </div>
    <input type="text" class="form-control" id="inlineFormInputGroupUsername2" placeholder="Username">
  </div>

 
  <button type="submit" class="btn  btn-block btn-def  mb-2">Submit</button>
</form>
    	
    	</ul>
    </div>
  </div>
</div>
  
     </div>
   <footer class="footermain">
   Copyright © 2018 ShopWith us All right reserved Aakash Bhardwaj 
   </footer>
   
   
     
     <script type="text/javascript">
     
     $('#myModal').on('shown.bs.modal', function () {
    	  $('#myInput').trigger('focus')
    	})
    	
     </script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.bundle.min.js"></script>

</body>
</html>