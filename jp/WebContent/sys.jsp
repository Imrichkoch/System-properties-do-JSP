<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.Date, java.util.Collection, java.util.Properties, java.util.Enumeration"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sys. properties</title>
</head>
<body>
<h1>System properties</h1>
<% Properties properties = System.getProperties();
   Enumeration<?> props = properties.propertyNames();
 	String s;
   %>
	<table border="1">
		<% 
		while (props.hasMoreElements()) {
		%> 
			<tr>
				<%s = props.nextElement().toString();%>
				<td><%= s%></td>
				<td><%= System.getProperty(s)%></td>
			</tr>
		<%
			}
		%>
	</table>
</body>
</html>