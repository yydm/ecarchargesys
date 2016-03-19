<%@  page language="java" import="java.util.*,com.chj.*"  pageEncoding="UTF-8" %>
<header>
<div class="top">
	<div class="wp">
		<div class="logo">
			<a href="/" class="icon_img_logo"></a>
		</div>
		<div class="menu">
			<div class="loader">
			<%
				HttpSession sess = request.getSession();
				User user = (User)sess.getAttribute("loginUser");
			if(user!=null){ 
			%>
			  <form  name="form1" method="post" action="userExit"  >
                <div class="xl" name="logininf">
                  <a>欢迎您:<%=user.getUserName() %></a>
                  <input class="btn btn-sm btn-default" type="submit" value="退出登陆" >
                </div>
              </form>
            <%}else{ %>
			
				<a href="register" class="btn btn-success btn-lg"><span>注册</span></a>
				<a href="login" class="btn btn-success btn-lg"><span>登录</span></a>
			<% } %>
			</div>
		</div>
	</div>
</div>


