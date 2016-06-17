<div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Medical Tour</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li id="navbar-home" class=""><a href="javascript:void(0)" onclick="activeHome()"><s:text name="nav.home"/></a></li>
                <li id="navbar-signin"><a href="javascript:void(0)" onclick="activeSignin()"><s:text name="nav.signin"/></a></li>
                <li id="navbar-signon"><a href="javascript:void(0)" onclick="activeSignon()"><s:text name="nav.signon"/></a></li>
                <li id="navbar-about"><a href="javascript:void(0)" onclick="activeAbout()"><s:text name="nav.about"/></a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><s:text name="nav.services"/> <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Service1</a></li>
                    <li><a href="#">Service2</a></li>
                    <li role="separator" class="divider"></li>
                    <li class="dropdown-header">Product</li>
                    <li><a href="#">Pro1</a></li>
                    <li><a href="#">Pro2</a></li>
                  </ul>
                </li>
                
              <form action="search" class="navbar-form navbar-left" rol="search">
				 <div class="form-group">
				  <input type="text" class="form-control " placeholder="Search Hospital" />
				 </div>
				 <button type="submit" class="btn btn-default "><s:text name="nav.search"/></button>
				 </form>
               
              </ul>
              
              <ul id="navbar-providerhere" class="nav navbar-nav navbar-right">
                    <button type="button" class="btn btn-default btn-navbar">
					  <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
					</button>
                    <li><div class="third-login-tool" id="wb_connect_btn" ></div></li>
		            <li><a href="javascript:void(0)" onclick="activeProviderhere()"><s:text name="nav.providerhere"/></a></li>
		      </ul>
            </div>
          </div>
        </nav>

      </div>
 </div>
