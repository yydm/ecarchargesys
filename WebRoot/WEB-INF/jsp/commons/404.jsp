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
    

    <title>页面未找到！</title>

    <link href="css/bootstrap.min.css"   rel="stylesheet">
    <link href="css/font-awesome.min.css"   rel="stylesheet">

    <link href="css/animate.min.css"   rel="stylesheet">
    <link href="css/style.min.css"   rel="stylesheet">

</head>

<body class="gray-bg">


    <div class="middle-box text-center animated fadeInDown">
        <h1>404</h1>
        <h3 class="font-bold">页面未找到！</h3>

        <div class="error-desc">
            抱歉，页面好像去火星了~
            <br/>您可以返回主页看看
            <br/><a href="<%=basePath%>"   class="btn btn-primary m-t">主页</a>
           <!--  <form class="form-inline m-t" role="form">
                <div class="form-group">
                    <input type="email" class="form-control" placeholder="请输入您需要查找的内容 …">
                </div>
                <button type="submit" class="btn btn-primary">搜索</button>
            </form> -->
        </div>
    </div>

    <!-- 全局js -->
    <script src="js/jquery-2.1.1.min.js"  ></script>
    <script src="js/bootstrap.min.js"  ></script>

</body>

</html>