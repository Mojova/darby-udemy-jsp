<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Built-in test</title>
</head>
<body>
<h1>JSP Built-In Objects</h1>
<p>Request user agent: <%= request.getHeader("User-Agent") %></p>
<p>Request language: <%= request.getLocale() %></p>
</body>
</html>