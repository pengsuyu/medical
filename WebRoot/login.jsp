<!-- header
=============================================== -->
<jsp:include page="header.jsp" ></jsp:include>
  
  <body>
  
  <!-- NAVBAR
    ================================================== -->
    
    <jsp:include page="navbar.jsp"></jsp:include>
  
  <hr class="featurette-divider">
  <!-- LoginForm
    ================================================== -->  
    <div class="container">

      <form class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="email" class="form-control" placeholder="Email address" required autofocus>
        <input type="password" class="form-control" placeholder="Password" required>
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->

      
  </body>
</html>