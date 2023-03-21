<%@ Language=VBScript %>
<% Option Explicit %>
<!DOCTYPE html>
<html>
<head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
<body style="background-color: rgb(13 110 253 / 25%);" >
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="home.asp">Mobile Shopping website</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="admin.asp">Create Account </a>
					</li>
					<li class="nav-item">
						<a class="nav-link active" href="products.asp ">Products</a>
					</li>
					<!-- <li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				  Dropdown
				</a>
				<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
				  <li><a class="dropdown-item" href="#">Action</a></li>
				  <li><a class="dropdown-item" href="#">Another action</a></li>
				  <li><hr class="dropdown-divider"></li>
				  <li><a class="dropdown-item" href="#">Something else here</a></li>
				</ul>
			  </li> -->
					<!-- <li class="nav-item">
				<a class="nav-link disabled">Disabled</a>
			  </li>
			   -->
				</ul>
				<form class="d-flex" style="margin-right: 0px;">
					<input class="form-control me-2" type="search" placeholder="Search" border="my-3"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
	<div class="container"  >
		<div class="row" >
			
<%
	
	'Dimension variables
	Dim adoCon 			'Holds the Database Connection Object
	Dim productbase			'Holds the recordset for the records in the database
	Dim strSQL			'Holds the SQL query for the database
	
	'Create an ADO connection odject
	Set adoCon = Server.CreateObject("ADODB.Connection")
	adoCon.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("Products.mdb") & ";"

	'Create an ADO recordset object
	Set productbase = Server.CreateObject("ADODB.Recordset")

	'Initialise the strSQL variable with an SQL statement to query the database
	strSQL = "SELECT Product_ID, Product_Name ,Product_Image,Product_Desc,Product_Price FROM ProductBase;"

	'Open the recordset with the SQL query 
	productbase.Open strSQL, adoCon

	'Loop through the recordset
	Do While not productbase.EOF
		'Move to the next record in the records

%>
<div class="col-md-4 col-sm-6 my-4 " >
<form name="form" method="get" action="connection.asp">
	
    <div class="card" style="border: 4px solid black;">  
        <img src=<%= productbase("Product_Image")%> class="card-img-top" >
        <div class="card-body"> 
          <h5 class="card-title">Product</h5>
		  <p class="card-text"><%= productbase("Product_ID")%></p>
          <p class="card-text"><%= productbase("Product_Name")%></p>
		  <p class="card-text"><%= productbase("Product_Desc")%></p>
		  <p class="card-text"><%= productbase("Product_Price")%></p>
          <a href="#" class="btn btn-primary">Buy Now</a>
        </div>
      </div>
	
    </form>

</div>


<%
		productbase.MoveNext

	Loop
	'Reset server objects
	productbase.Close
	Set productbase = Nothing
	Set adoCon = Nothing 
%> 
<!-- </div> -->
</div>
</body>
</html>