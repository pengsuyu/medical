
var registerRequest=false;
//注册请求
function checkUsernameHassExisted(){
	
	if(checkInsert()){
		var name=document.getElementById("inputEmail").value;				//用户名
		var pwd = document.getElementById("inputPassword").value;				//密码
		var url="http://localhost:8080/medical/UserLoginServlet";										//服务器地址
		var param ="username="+name+"&password="+pwd;							//请求参数 
		registerRequest=httpRequest("post",url,true,callbackFunc,param);	//调用请求方法
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






function getFocus()  //设置用户名文本框获取焦点

{

    document.getElementById("txtuname").focus();

}

 

function checkname()  //检查用户名

{

    var myname=document.getElementById("txtuname").value;

    var myDivname=document.getElementById("uname");

    if(myname=="")

    {

        myDivname.innerHTML="<font color='red'>用户名不能为空!</font>";

        return false;

    }

    for(var i=0;i<myname.length;i++)

    {

        var text=myname.charAt(i);

        if(!(text<=9&&text>=0)&&!(text>='a'&&text<='z')&&!(text>='A'&&text<='Z')&&text!="_")

        {

         myDivname.innerHTML="<font color='red'>用户名只能是数字、字母、下划线组成！</font>";

         break;

        }

    }

    if(i>=myname.length)

    {

        myDivname.innerHTML="<font color='red'>√</font>";

        return true;

    }

}

 

function checkuserpassword()  //检查密码 

{

 var mypassword=document.getElementById("txtuserpassword").value;

 var myDivpassword=document.getElementById("userpassword");

 if(mypassword=="")

 {

  myDivpassword.innerHTML="<font color='red'>密码不能为空!</font>";

  return false;

 }

 else if(mypassword.length<6)

 {

  myDivpassword.innerHTML="<font color='red'>密码至少应为六位!</font>";

  return false;

 }

 else

 {

  myDivpassword.innerHTML="<font color='red'>√</font>";

  return true;

 } 

}

 

function checkpwdagin()  //检查确认密码

{

 var myispassword=document.getElementById("txtpwdagin").value;

 var myDivispassword=document.getElementById("pwdagin");

 if(myispassword=="")

 {

     myDivispassword.innerHTML="<font color='red'>确认密码不能为空!</font>";

     return false;

 }

 else if(document.getElementById("txtuserpassword").value!=document.getElementById("txtpwdagin").value)

 {

  myDivispassword.innerHTML="<font color='red'>确认密码与密码不一致!</font>";

  return false;

 } 

 else

 {

  myDivispassword.innerHTML="<font color='red'>√</font>";

  return true;

 } 

}

 

function checktelephone()  //检查电话号码

{

 var mytelephone=document.getElementById("txttelephone").value;

 var myDivtelephone=document.getElementById("telephone");

 if(mytelephone!="")

 {

     var reg = /^[0-9]{11}$/i;

     if(!reg.test(mytelephone))

        {

            myDivtelephone.innerHTML="<font color='red'>只能输入11位数字！例：13595144582或08514785214</font>";

            return false;

        }

     else

     {

      myDivtelephone.innerHTML="<font color='red'>√</font>";

      return true;

     }

 }

 else

 {

     myDivtelephone.innerHTML="<font color='red'>√</font>";

     return true;

 }

}

 

function checkemail()  //检查E-mail

{

 var myemail=document.getElementById("txtemail").value;

 var myDivemail=document.getElementById("email");

 if(myemail!="")

 {

     if(myemail.indexOf("@")==-1||myemail.indexOf(".")==-1||(myemail.indexOf("@")>myemail.indexOf(".")))

     {

      myDivemail.innerHTML="<font color='red'>E-mail格式不正确！例：jiie@163.com</font>";

      return false;

     } 

     else

     {

      myDivemail.innerHTML="<font color='red'>√</font>";

      return true;

     }

 }

 else

 {

     myDivemail.innerHTML="<font color='red'>√</font>";

     return true;

 }

}

 

function checkqq()  //检查QQ号码

{

 var myqq=document.getElementById("txtqq").value;

 var myDivqq=document.getElementById("divqq");

 if(myqq!="")

 {

     if(myqq.match(/\D/)!=null)

     {

      myDivqq.innerHTML="<font color='red'>QQ号码只能输入数字！</font>";

      return false;

     }

     else

     {

      myDivqq.innerHTML="<font color='red'>√</font>";

      return true;

     }

 }

 else

 {

     myDivqq.innerHTML="<font color='red'>√</font>";

     return true;

 }

}

 

function checkall()  //检查所有

{

    if(checkname()&&checkuserpassword()&&checkpwdagin()&&checktelephone()&&checkemail()&&checkqq())

    {

        return true;

    }

    return false;

}

 

//复选框的选中与否是按钮的状态

function checkcjkx()

{

    var a=document.form1.btnregister;

    if(a==null)

    {

        return

    }

    if(document.form1.ckbxcjkx!=null)

    {

        if(document.form1.ckbxcjkx.checked)

        {

            a.disabled=false;

            return

        }

        else

        {

            a.disabled=true;

            return

        }

    }

    else

    {

        a.disabled=true;

        return

    }

}