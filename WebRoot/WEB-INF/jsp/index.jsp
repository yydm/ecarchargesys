<%@  page language="java" import="java.util.*,com.chj.entity.*" pageEncoding="UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta name="keywords" content="">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">


<title>某电动汽车充电网点系统</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/evtcar.css" rel="stylesheet">

<script src="js/jquery-2.1.3.min.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
<script src="js/staticinfo.js" type="text/javascript"></script>
<style>
body{
	font: 14px/1.6 "Helvetica Neue",Arial,"Microsoft Yahei",sans-serif;
	color: #333333;
}
</style>
</head>

<body>
<!-- Modal test-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body"> </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

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
<div class="company-function">
		<h1><b>我们的服务</b></h1>
		<div class="container function">
			<div class="rows">
					<div class="col-xs-4">
						<div class="function-pic">
							<img src="pic/functionpic2.png">
						</div>
						<div class="function-content">
							<div class="tittle">充电站点查询	</div>
							<div class="content">点击充电站信息查询，随时随地掌握一手充电站信息，让你智行天下。
							</div>
						</div>
					</div>
					<div class="col-xs-4">
						<div class="function-pic">
							<img src="pic/functionpic1.png">
						</div>
						<div class="function-content">
							<div class="tittle">充电情况查询</div>
							<div class="content">用户也可在WEB浏览器相应网页上输入地点名称，查找周边最近充电站路线。
							</div>
						</div>
					</div>
					<div class="col-xs-4">
						<div class="function-pic">
						<img src="pic/functionpic3.png">
						</div>
						<div class="function-content">
							<div class="tittle">个人中心管理</div>
							<div class="content">查看对应订单，发现个人管理个人资料信息
							</div>
						</div>
					</div>
			</div>
		</div>
	</div>
	

<!--下面是左侧导航栏的代码-->
<%@include file="footer.jsp" %>
<script src="js/bootstrap.min.js"></script> 
<script>
			var nt = !1;
			$(window).bind("scroll",
				function() {
				var st = $(document).scrollTop();//往下滚的高度
				nt = nt ? nt: $("#J_m_nav").offset().top;
				// document.title=st;
				var sel=$("#J_m_nav");
				if (nt < st) {
					sel.addClass("nav-fixed");
				} else {
					sel.removeClass("nav-fixed");
				}
			});
</script>
</body>
</html>
