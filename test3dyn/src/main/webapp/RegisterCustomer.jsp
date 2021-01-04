<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Customer</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <form name = "regcustomer" method = "get" action = "CustomerServlet" >
        Customer Name
        <input type="text" name="customerName"> <br>
        Customer Address 
        <input type="text" name="customerAddress"> <br> 
        Telephone Number
        <input type="text" name="telNo"> <br>
        Email
        <input type="text" name="email"> <br>
        Cost per KG shipped
        <input type="text" name="costPKG"> <br>
        <input type="submit" value="Register"> <br> <br>

        <a href="/test3dyn/">Back</a>
        </form>
</body>