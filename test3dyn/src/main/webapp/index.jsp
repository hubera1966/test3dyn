<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project test3dyn auf microk8s</title>
</head>
<body>
    <h1>Hallo für ein Beispiel zu JSP and Servlets auf Amazon AWS Hostname : <%= java.net.InetAddress.getLocalHost().getHostName() %></h1>
   
<form action="HelloServlet" method="post">
    Bitte Namen eingeben : <input type="text" name="yourName" size="20">
    <input type="submit" value="Call Servlet" />
</form>
<br>
<a href="/test3dyn/">Startseite</a>
<br>
<br>
<a href="/test3dyn/RegisterCustomer.jsp">Register Customer</a>
<br>
<br>
<a href="/test3dyn/upload.html">Datei hochladen</a>
</body>
</html>