<%@ Language=VBScript %>
<% Option Explicit %>

<html>
  <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
  </head>
<body>
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
  
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
  </head>
  <body class="text-center" margin: '248px' style="background-color:whitesmoke;"></body>
    
<main class="form-signin" >
  <form style="text-align: center;justify-content: center;">
    <h1 class="h3 mb-3 fw-normal" style="color: rgb(0, 0, 0);">Create Account</h1>

    <div class="form-floating text-center mb-2 my-2 " style="margin-left:500px">
      <input type="email" style="width: 500px; " class="form-control" id="floatingInput" placeholder="XYZ">
      <label for="floating input" >Full Name</label>
    </div>
    <div class="form-floating text-center mb-2 my-2" style="margin-left:500px">
      <input type="email" style="width: 500px; " class="form-control" id="floatingInput" placeholder="123456789">
      <label for="floating input" >Phone Number</label>
    </div>
    <div class="form-floating text-center mb-2 my-2 " style="margin-left:500px">
      <input type="email" style="width: 500px; " class="form-control" id="floatingInput" placeholder="name@example.com">
      <label for="floating input" >Email address</label>
    </div>
    <div class="form-floating mb-2 my-2" style="margin-left:500px" >
      <input type="password" style="width: 500px; " class="form-control" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">Password</label>
    </div>
    <a class="w-30 btn btn-lg btn-primary" href="home.asp">Create Account</a>
  </form>
</main>


</body>
</html>