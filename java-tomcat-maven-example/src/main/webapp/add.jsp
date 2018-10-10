<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%!
	public String addNumbers(String a , String b) 
	{
		
		String output = "Default";
		try{
		float res = Float.parseFloat(a) + Float.parseFloat(b);
		output = "The sum is : " + Float.toString(res);
		}
		catch(Exception e)
		{
			output = "Invalid data entry!";
		}
		finally{
			return "<h4>"+output+ "</h4>";
		}
		
	}
%>


<html>
    <head>
        <title>Enter two numbers: </title>
    </head>
    
    <body>
    <%-- <%= "<h1> The sum is "+(Integer.parseInt(request.getParameter("t1"))+Integer.parseInt(request.getParameter("t2")))+"</h1>"%> --%>
    <%= addNumbers(request.getParameter("t1"), request.getParameter("t2")) %>
    </body>
</html>