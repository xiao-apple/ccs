<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/ccs/">
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/forgetPassword.css">
</head>
<body>
	<form action="user/forget" id='forgetForm' method="post">
		<p><input name="username" type="text" required="required" placeholder="请输入用户名"/></p>
		<p><input name="email" type="email" required="required" placeholder="请输入邮箱地址"/></p>
		<p><button>找回密码</button></p>
	</form>
</body>
</html>