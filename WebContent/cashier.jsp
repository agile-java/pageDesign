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
    
        <div class="container col-md-4 ">
        	<form action="cashierServlet" method="post">
  		       <div class="card ">
	        	<div class="card-header text-center font-weight-bold">
	        		Login
	        	</div>
	        	<div class="card-body">
	        		 <table class="form-group">
						
						<tr>
						<td>Enter Username</td>
						
						<td><input type="text" class="form-control" name="username" /></td>
						
						</tr>
						
						<tr>
						<td >Enter Password</td>
						<td><input type="password" class="form-control" name="password" /></td>
						</tr>
						</table>
						<div class="row mx-auto">
						<input type="submit" class="form-control btn btn-primary" value="Log In" />
						
						</div>
						 
						
						</div>

                
            </div>
	                        		
        	</form>
        	<a href="index.jsp"><< Back To Home</a><br /><br>
         </div>  
    </body>
</html>

</html>
