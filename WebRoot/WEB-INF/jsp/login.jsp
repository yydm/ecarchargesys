<%@ page language="java" import="java.util.*"  pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>
<script type="text/javascript" src="js/login.js" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link href="css/evtcar.css" rel="stylesheet" type="text/css" />
<link href="css/login.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="font-awesome-4.3.0/css/font-awesome.min.css">

<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script src="js/staticinfo.js"></script>
</head>
<body>
<!--顶部导航栏开始 -->
<%@include file="head.jsp" %>
<!--下面是中部导航栏的代码-->
<div class="nav-green nav-head" id="J_m_nav">
	<div class="nav-content">
		<div class="nav-btn active"><a href="index">首页</a></div>
		<div class="nav-btn "><a href="404">我要充电</a></div>
		<div class="nav-btn"><a href="404">个人中心</a></div>
		<div class="nav-btn"><a href="404">关于我们</a></div>
	</div>
</div>
</header>
<!--顶部导航栏结束 -->

<form action="loginSubmit" method="post" class="form" onsubmit="checklogin();return false;">
  <div id="page" class="page">
    <div class="login-content">    
      <div  class="log">
        	<div class="title">登录系统</div>
	        <div class="input-group user">
			  <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
			  <input class="form-control" name="userId" type="text" placeholder="用户id">
			</div>	
			 <p id="div1"><span>请输入对应用户id</span></p>
         	<div class="input-group password">
			  <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
			  <input class="form-control" type="password"  name="userPassword" placeholder="密码">
			</div>
			<p id="div2"><span >请填入长度为6-20个字符的密码</span></p>
	        <div class="input-group check">
	          <div class="checkcode">
	          	<input class="form-control" name="code" type="text" id="checkcode" placeholder="验证码"/>
	          </div>
	          <div class="checkimg"> 
	          		<a><img alt="code..." name="randImage" id="randImage" src="image"/></a>
	          </div>
	          <script>
		          	$("#randImage").click(function(){
	        			$(this).attr("src","image");
	        		})
	          		$(".changepic").click(function(){
	          			$("#randImage").attr("src","image");
	          		})
	          </script>
	        </div>
	        <p id="div3"><span >请填入图片中的字符，不区分大小写</span></p>
	        <div id="error" class="error">
	        </div>
	        <div class="button" id="button">
	        	<input type="submit"  value="登陆"/>
	        </div>
	       <div class="regist"> <span>还没有账号？<a href="register.html" class="btn btn-default btn-xs">点击我注册</a></span>		
	       </div>
      </div>
      <div class="ad"><img src="pic/sssd.png" /></div>
    </div>
    
  </div>
  </div>
  
  <%@include file="footer.jsp" %>
</form>


</body>
<script type="text/javascript"> 
$(function(){ 
	$("[name='username']").on({
		focus:function(){
		  $("#div1").css("margin-top","-20px");
		  $("#div1").show();
		},
	    blur:function(){ 
			 $("#div1").hide();
		} 
	})

	$("[name='password']").on({
		focus:function(){
		  $("#div2").css("margin-top","-20px");
		  $("#div2").show();
		},
	    blur:function(){ 
			 $("#div2").hide();
		} 
	})

	$("[name='checkcode']").on({
		focus:function(){
		  $("#div3").css("margin-top","-20px");
		  $("#div3").show();
		},
	    blur:function(){ 
			 $("#div3").hide();
		} 
	})
}) 
</script> 


</html>
