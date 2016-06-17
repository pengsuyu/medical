<%@ taglib uri="/struts-tags" prefix="s" %> 
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns:wb="http://open.weibo.com/wb">
  <head>
    <base href="<%=basePath%>">
    
    <title>Medical Tour </title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
   <!-- CSS -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    
    
  <!-- Custom styles for this template -->
    <%@ include file="includes.jsp" %> 
    <script type="text/javascript" src="assets/js/request.js"></script>
    <script type="text/javascript" src="assets/js/login.js" ></script>
      
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="assets/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
  </head>

<body>
	<%@ include file="navbar.jsp" %>
	<hr class="featurette-divider">
	
    <div class="container">

      
      <form class="form-signin"  method="post">
        <h2 class="form-signin-heading"><s:text name="login.form.header"/>
        <div id="loginNotice"  class="form-notice"> </div>
        </h2>
        
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" name="username" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
    
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
          
        </div>
        
        <button class="btn btn-lg btn-primary btn-block" onclick="enter()">Sign in</button>			
      </form> 
      
    </div> <!-- /container -->
    
    <div class="container">
	  <form class="form-register form-horizontal" action="register.jsp" method="post">
	    <fieldset >
 			     <label class="sr-only">Go to Register</label>
		          <!-- Button -->
	             <button class="btn btn-lg btn-primary btn-block">Go to Register>></button>
	    </fieldset>
	  </form>  	          
	</div>
    

	
	
	
	 
	<hr class="featurette-divider">
	
    <%@ include file="footer.jsp" %>
  </body>
</html>