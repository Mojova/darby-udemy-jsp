<%--
  Created by IntelliJ IDEA.
  User: j.kaisanlahti
  Date: 9.6.2021
  Time: 16.42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Confirmation</title>
    <%
        String favouriteLanguage = request.getParameter("favouriteLanguage");

        Cookie cookie = new Cookie("myApp.favouriteLanguage", favouriteLanguage);
        cookie.setMaxAge(60*60*365);
        response.addCookie(cookie);
    %>
</head>
<body>
<h1>Confirmation</h1>
<p>Thanks! We set your favourite language to ${param.favouriteLanguage}</p>
<p>Return to <a href="cookies-homepage.jsp">homepage</a>.</p>
</body>
</html>
