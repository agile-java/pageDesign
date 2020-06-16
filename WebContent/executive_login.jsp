<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<body>
<jsp:include page="masterPage.jsp" />

<br><br><br>
<div class="container col-md-4 mx-auto">
<div class="card">
<div class="card-header text-left font-weight-bold">
<h2 align="center">EXECUTIVE LOGIN</h2>
</div>
<div class="card-body">
<form action="Exe_loginServlet" method="post">
<div class="form-group mx">
<table  class="table mx=auto">
 
<tr class="form-group">
<td>Enter Username</td>
<td><input type="text" name="username" /></td>
</tr>

<tr class="form-group">
<td>Enter Password</td>
<td><input type="password" name="password" /></td>
</tr>

<tr>
<td ><input type="submit" value="login"/></td>
<td ><input type="reset" value="cancel"/></td>
</tr>

</table>
</div>
</form>
</div>
</div>

</div>
</body>
</html>




