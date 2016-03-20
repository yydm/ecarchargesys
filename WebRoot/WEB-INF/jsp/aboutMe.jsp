<%@ page language="java" import="java.util.*,com.chj.entity.*"  pageEncoding="utf-8"%>
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
		<div class="nav-btn "><a href="weNeedCharge">我要充电</a></div>
		<div class="nav-btn"><a href="personCenter">个人中心</a></div>
		<div class="nav-btn"><a href="aboutMe">关于我们</a></div>
	</div>
</div>
</header>
<!--顶部导航栏结束 -->

<form action="loginSubmit" method="post" class="form" onsubmit="checklogin();return false;">
  <div id="page" class="page" style="padding-bottom: 70px">
    <div ><img width="960" height="449" src="pic/site_under_main2.jpg" alt="网站正在建设中"></div>
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
