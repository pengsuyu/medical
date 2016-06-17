
var opinionRequest=false;
//登录请求
function enter(){
	
	if(checkInsert()){
		var name=document.getElementById("inputEmail").value;				//用户名
		var pwd = document.getElementById("inputPassword").value;				//密码
		var url="http://localhost:8080/medical/UserLoginServlet";										//服务器地址
		var param ="username="+name+"&password="+pwd;							//请求参数 
		opinionRequest=httpRequest("post",url,true,callbackFunc,param);	//调用请求方法
	}
}

//验证用户名密码是否合法
function checkInsert(){
	var name = document.getElementById("inputEmail").value;
	var pwd = document.getElementById("inputPassword").value;
	if(name==null||name==""){
		alert("请输入您的账号！");
		document.getElementById("inputEmail").focus();
		return false;
	}
	if(pwd==null||pwd==""){
		alert("请输入您的密码！");
		document.getElementById("inputPassword").focus();
		return false;
	}
	if(pwd!=null&&pwd!=""){
		if(pwd.length<6||pwd.length>16){
			alert("输入有误，密码长度为6-16位！");
			document.getElementById("inputPassword").focus();
			return false;
		}
	}
	return true;
}

//Ajax回调函数
function callbackFunc(){
	if( opinionRequest.readyState==4 ){		 //判断响应是否完成
 	 	if( opinionRequest.status == 200 ){  //判断响应是否成功
     		var hasUser=opinionRequest.responseXML.documentElement.getElementsByTagName("hasUser");
     		var noUser=opinionRequest.responseXML.documentElement.getElementsByTagName("noUser");
     		if(typeof(hasUser)!="undefined"&& hasUser.length>0){   
     		}
     		if(typeof(noUser)!="undefined"&& noUser.length>0){
     			document.getElementById("loginNotice").innerHTML="用户名或密码错误";
         		document.getElementById("inputEmail").focus();
         		opinionRequest=false;
         		return false;
     		}
		}
	}
}
