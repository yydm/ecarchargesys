<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html><!DOCTYPE html>
<html>

<head>
	<base href="<%=basePath%>"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title>服务器内部错误</title>

    <link href="css/bootstrap.min.css"   rel="stylesheet">
    <link href="css/font-awesome.min.css"   rel="stylesheet">

    <link href="css/animate.min.css"   rel="stylesheet">
    <link href="css/style.min.css"   rel="stylesheet">

</head>

<body class="gray-bg">


    <div class="middle-box text-center animated fadeInDown">
        <h1>500</h1>
        <h3 class="font-bold">服务器内部错误</h3>

        <div class="error-desc">
            服务器好像出错了...
            <br/>您可以返回主页看看
            <br/><a href="<%=basePath%>"   class="btn btn-primary m-t">主页</a>
        </div>
    </div>

    <!-- 全局js -->
    <script src="js/jquery-2.1.1.min.js"  ></script>
    <script src="js/bootstrap.min.js"  ></script>

   

</body>

</html>