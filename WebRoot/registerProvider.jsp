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
    <link href="assets/css/carousel.css" rel="stylesheet">  
    <link href="assets/css/Site.css" rel="stylesheet">
    <link href="assets/css/login.css" rel="stylesheet">
    <link href="assets/css/register.css" rel="stylesheet">
    
    <script src="assets/js/ie-emulation-modes-warning.js"></script>    
        
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
	<jsp:include page="navbar.jsp"></jsp:include>
	<hr class="featurette-divider">
	<div class="container">
	  <form class="form-register form-horizontal">
	    <fieldset >
		      <div id="legend" class="">
		        <legend class="form-register-heading">Register</legend>
		      </div>
		    <div class="control-group">
		          <!-- Text input-->
		          <label class="control-label" for="input01">Mailaddress</label>
		          <div class="controls">
		            <input type="text" placeholder="Mailaddress" class="input-xlarge">
		            <p class="help-block"></p>
		          </div>
		        </div><div class="control-group">
		
		          <!-- Text input-->
		          <label class="control-label" for="input01">Username</label>
		          <div class="controls">
		            <input type="text" placeholder="Username" class="input-xlarge">
		            <p class="help-block"></p>
		          </div>
		        </div>
		
		    <div class="control-group">
		
		          <!-- Text input-->
		          <label class="control-label" for="input01">Password</label>
		          <div class="controls">
		            <input type="text" placeholder="Password" class="input-xlarge">
		            <p class="help-block"></p>
		          </div>
		        </div>
		
		    <div class="control-group">
		
		          <!-- Text input-->
		          <label class="control-label" for="input01">Password Again</label>
		          <div class="controls">
		            <input type="text" placeholder="Password Again" class="input-xlarge">
		            <p class="help-block"></p>
		          </div>
		        </div>
		
		    <div class="control-group">
		
		          <!-- Text input-->
		          <label class="control-label" for="input01">Cellphone</label>
		          <div class="controls">
		            <input type="text" placeholder="Cellphone" class="input-xlarge">
		            <p class="help-block"></p>
		          </div>
		        </div>
		
		    <div class="control-group">
		
		          <!-- Text input-->
		          <label class="control-label" for="input01">Country</label>
		          <div class="controls">
		            <input type="text" placeholder="Country" class="input-xlarge">
		            <p class="help-block"></p>
		          </div>
		        </div>
		
		    <div class="control-group">
		
		          <!-- Text input-->
		          <label class="control-label" for="input01">City</label>
		          <div class="controls">
		            <input type="text" placeholder="City" class="input-xlarge">
		            <p class="help-block"></p>
		          </div>
		        </div>
		
		    <div class="control-group">
		
		          <!-- Textarea -->
		          <label class="control-label">Communication Address</label>
		          <div class="controls">
		            <div class="textarea">
		                  <textarea type="" class=""> </textarea>
		            </div>
		          </div>
		        </div>
		
		    <div class="control-group">
		          <label class="control-label">Submit</label>
		
		          <!-- Button -->
		          <div class="controls">
		            <button class="btn btn-success">Submit</button>
		          </div>
		        </div>
	
	    </fieldset>
	  </form>
	</div>
	
	
	

</body>
</html>