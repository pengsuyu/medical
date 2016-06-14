<%@ taglib uri="/struts-tags" prefix="s" %> 
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Medical Tour </title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
   <!-- CSS -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    
    
  <!-- Custom styles for this template -->
    <%@ include file="includes.jsp" %>
        
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
<!-- navbar -->
	<%@ include file="navbar.jsp" %>
	<hr class="featurette-divider">
	<div class="container">
	  <form class="form-register form-horizontal" action="register" method="post">
	    <fieldset >
		      <h2 class="form-register-heading"><s:text name="register.form.header"/></h2>
		   
		          <label class="sr-only" for="input01">Mailaddress</label>
	              <input type="email" placeholder="Mailaddress" class="form-control" required autofocus>
	              <p class="help-block"></p>
		          

		        
		          <label class="sr-only" for="input01">Username</label>
		            <input type="password" placeholder="Username" class="form-control">
		            <p class="help-block"></p>
		          
		
		    
		          <label class="sr-only" for="input01">Password</label>
		          <input type="text" placeholder="Password" class="form-control">
		          <p class="help-block"></p>
		         
		
		    
		          <label class="sr-only" for="input01">Password Again</label>
		          <input type="text" placeholder="Password Again" class="form-control">
		          <p class="help-block"></p>

		
		          <label class="sr-only">Submit</label>
		          <!-- Button -->
		          <div class="controls">
		            <button class="btn btn-lg btn-primary btn-block">Submit</button>
		          </div>
		          
	    </fieldset>
	  </form>
	  	          
		      		          
	</div>
	<div class="container">
	  <form class="form-register form-horizontal" action="login.jsp" method="post">
	    <fieldset >
 			     <label class="sr-only">Have Registered</label>
		          <!-- Button -->
	             <button class="btn btn-lg btn-primary btn-block">Have Registered>></button>
	    </fieldset>
	  </form>
	  	          
	</div>
	
	<hr class="featurette-divider">
<%@ include file="footer.jsp" %>
</body>
</html>