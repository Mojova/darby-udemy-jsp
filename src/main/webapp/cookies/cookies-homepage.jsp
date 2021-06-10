<%--
  Created by IntelliJ IDEA.
  User: j.kaisanlahti
  Date: 9.6.2021
  Time: 16.46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Training portal</title>
</head>
<body>
<h1>Training portal</h1>
<%
    String favouriteLanguage = "Java";
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if ("myApp.favouriteLanguage".equals(cookie.getName())) {
                favouriteLanguage = cookie.getValue();
                break;
            }
        }
    }
%>
<h2>New books for <%= favouriteLanguage %></h2>
<ul>
    <li>Foo</li>
    <li>Bar</li>
</ul>
<h2>Latest news for <%= favouriteLanguage %></h2>
<ul>
    <li>Foo</li>
    <li>Bar</li>
</ul>
<h2>Hot jobs for <%= favouriteLanguage %></h2>
<ul>
    <li>Foo</li>
    <li>Bar</li>
</ul>
<p><a href="cookies-personalize-form.html">Personalise this page</a></p>
</body>
</html>
