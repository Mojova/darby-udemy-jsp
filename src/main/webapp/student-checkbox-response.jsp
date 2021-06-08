<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Student Checkbox Confirmation</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
<h1>Student Checkbox Confirmation</h1>
<p>The student is confirmed: ${param.firstName} ${param.lastName}.</p>
<p>The student’s favorite programming languages are:</p>
<ul>
    <%
        String[] langs = request.getParameterValues("favoriteLanguage");
        for (String lang : langs) {
            out.println("<li>" + lang + "</li>");
        }
    %>
</ul>
</body>
</html>