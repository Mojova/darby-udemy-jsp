<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Scriplet Test</title>
</head>
<body>
<h1>Hello World of Java!</h1>
<ul>
    <%
        for (int i = 1; i <= 5; i++) {
            out.println("<li>I really luv2code: " + i + "</li>");
        }
    %>
</ul>
</body>
</html>