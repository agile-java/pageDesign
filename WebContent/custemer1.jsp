
<html>
    <head>
        <title>Login System</title>
    </head>
 	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <body>
    <jsp:include page="masterPage.jsp" />
           <%
        String userName=(String)session.getAttribute("userName");
        
        //redirect user to home page if already logged in
        if(userName!=null){
            response.sendRedirect("EmployeeController?action=LIST");
        }
 
        String status=request.getParameter("status");
        
        if(status!=null){
        	if(status.equals("false")){
        		   out.print("Incorrect login details!");	           		
        	}
        	else{
        		out.print("Some error occurred!");
        	}
        }
        %>
        <br><br>
    
        <div class="container col-md-6 ">
        	<form action="cashierServlet" method="post">
  		       <div class="card ">
	        	<div class="card-header text-center font-weight-bold">
	        		Login
	        	</div>
	        	<div class="card-body">
	        		 <div class="form-group">
						
						<div class="row">
						<label>Enter Username</label>
						
						<div><input type="text" class="form-control" name="username" /></div>
						
						</div>
						
						<div class="row">
						<div >Enter Password</div>
						<div><input type="password" class="form-control" name="password" /></div>
						
						</div>
						
						<div class="row mx-auto">
						<input type="submit" class="form-control btn btn-primary" />
						
						</div>
						 
						
						</div>

                
            </div>
	                        		
        	</form>
        	<a href="index.jsp"><< Back To Home</a><br /><br>
         </div>  
    </body>
</html>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2 align="center">cashier LOGIN</h2>

<form action="cashierServlet" method="post">
<table>

<tr>
<td>Enter Username</td>
<td><input type="text" name="username" /></td>
</tr>

<tr>
<td>Enter Password</td>
<td><input type="password" name="password" /></td>
</tr>

<tr>
<td><input type="submit" /></td>
<td><input type="reset" /></td>
</tr>

</table>
</form>
</body>
</html>