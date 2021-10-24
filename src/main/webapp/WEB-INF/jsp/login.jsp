<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body class="bg-dark text-primary text-center">
	<div style="position: absolute; width:100%; top:50%; transform :translateY(-50%)">
	<h1>Welcome login page</h1>
	<br>
	<form action="dologin.html" method="post">
			<div class="row d-flex justify-content-center">
				<p class="col-6 col-md-4 col-lg-3 text-center">Username</p>
				<div class="col-6 col-md-4 col-lg-3"><input type="text" name="username" value="${param.username}"></div>
			</div>
			<div class="row d-flex justify-content-center">
				<p class="col-6 col-md-4 col-lg-3 text-center">Password</p>
				<div class="col-6 col-md-4 col-lg-3"><input type="password" name="password" value="${param.password}"></div>
			</div>
			<div class="row d-flex justify-content-center">
				<input class="col-3 col-md-2 col-lg-1" type="submit" value="submit">
				<div class="col-1"></div>
				<input class="col-3 col-md-2 col-lg-1" type="reset" value="reset">
			</div>
	</form>
	<div class="row justify-content-center text-danger" style="color: red"> ${error} </div>
	</div>
</body>
</html>