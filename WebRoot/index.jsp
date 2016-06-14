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
    <!-- NAVBAR
    ================================================== -->
    <!-- <jsp:include page="navbar.jsp"></jsp:include> -->
    <%@ include file="navbar.jsp" %>



    <!-- Carousel
    ================================================== -->
    
    <%@ include file="carousel.jsp" %>



    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <%@ include file="messagingAndFeaturettes.jsp" %>

      <!-- /END THE FEATURETTES -->
     

     <!-- footer 
     ===================================================================== -->
     <%@ include file="footer.jsp" %>
     
      
          
    
  </body>
</html>