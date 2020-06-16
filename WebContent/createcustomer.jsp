<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customer create</title>
</head>
<body>
<jsp:include page="masterPage.jsp" />
<br><br>
<div class="container">
<div class="row justify-content-center">


<h4 >Create User</h4>

</div>
</div>
<br>

<div class="container">

<div class="row justify-content-center">
<div class="form-group col-md-4 col-md-offset-5 align-center ">

<form action="CustomerCreateServlet" method="post">
<table>

<tr>
<td>Customer SSN Id</td>
<td><input type="text" Class="form-control" name="ssnid" /></td>
</tr>

<tr>
<td>Customer Name</td>
<td><input type="text" Class="form-control" name="name" /></td>
</tr>

<tr>
<td>AGE</td>
<td><input type="text" Class="form-control" name="age" /></td>
</tr>

<tr>
<td>Address</td>
<td><input type="text" Class="form-control"  name="address" /></td>
</tr>

<tr><td>
<label for="state">State:</label></td>
 <td> <select name="state" Class="form-control" id="cars">
    <option value="kerala" Class="form-control" >kerala</option>
    <option value="tamilnad">tamilnad</option>
    <option value="karnatakaa">karnataka</option>
    <option value="up">UP</option>
  </select></td></tr>
  
  
  <tr><td>
<label for="city">State:</label></td>
  <td><select name="city" Class="form-control"  id="cars">
    <option value="kerala">kerala</option>
    <option value="tamilnad">tamilnad</option>
    <option value="karnatakaa">karnataka</option>
    <option value="up">UP</option>
  </select></td></tr>
  
</table>

<br>
<div class="row mx-auto">
<div class="col-md-6">
<input type="submit" class="form-control btn btn-primary" name="submit" value="submit" />
</div>
<div class="col-md-6">
<input type="reset" class="form-control btn btn-primary"/>
</div>
</div>

</table>
</form>
</div>

</div>
</div>

</body>
</html>