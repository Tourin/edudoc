<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>后台登录</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="framework/css/login.css" />
</head>
<body>
${message}
	<div id="main_body">

		<!-- Form Title Starts Here -->
		<div class="form_title">
			<label style="font-size: x-large; color: black; font-weight: bolder;">后台登录</label>
		</div>
		<!-- Form Title Ends Here -->

		<!-- Form Starts Here -->
		<div class="form_box">

			<form id="loginform" name="loginform" method="post"
				action="login_acc">

				<!-- User Name -->
				<p class="form_text">*用户名</p>

				<p class="form_input_BG">
					<input type="text" name="admin.name" id="name" />
				</p>
				<!-- User Name -->

				<!-- Clear -->
				<p class="clear">&nbsp;</p>
				<!-- Clear -->

				<!-- Password -->
				<p class="form_text">*密&nbsp;&nbsp;&nbsp;&nbsp;码</p>

				<p class="form_input_BG">
					<input type="password" name="admin.pass" id="pwd" />
				</p>
				<!-- Password -->

				<!-- Clear -->
				<p class="clear">&nbsp;</p>
				<!-- Clear -->
				<p class="form_check_box">
				</p>

				<p class="form_login_signup_btn">
					<input title="登  录" type="image" src="framework/images/login_btn.png"
						id="login" />
				</p>

			</form>

		</div>
		<!-- Form Ends Here -->

	</div>
	<!-- Main Body Ends Here -->

	<!-- Copyright 
	<div style="text-align: center; margin: 100px 20px 0px 0px;">
		<a href="#"><img
			src="images/design3edge.png" alt="Design3Edge" title="Design3Edge" /></a>
	</div>
	 Copyright -->

</body>
</html>