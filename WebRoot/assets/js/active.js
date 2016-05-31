function activeHome()
{
	window.location.href = "index.jsp";
	var div = document.getElementById("navbar-home");
	div.setAttribute("class", "active"); 
	
}

function activeSignin()
{ 
	window.location.href = "login.jsp";
	var div = document.getElementById("navbar-signin");
	div.setAttribute("class", "active");
}

function activeSignon()
{
	window.location.href = "register.jsp";
	var div = document.getElementById("navbar-signon");
	div.setAttribute("class", "active"); 
	
}

function activeAbout()
{
	window.location.href = "about.jsp";
	var div = document.getElementById("navbar-about");
	div.setAttribute("class", "active"); 
}

function activeProviderhere()
{
	window.location.href = "registerProvider.jsp";
	var div = document.getElementById("navbar-providerhere");
	div.setAttribute("class", "active"); 
}