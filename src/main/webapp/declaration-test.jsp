<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Declaration test</title>
</head>
<body>
<%!
    private String makeItLower(String data) {
        return data.toLowerCase();
    }
%>
<p>Lower case “Hello World”: <%= makeItLower("Hello World") %></p>
</body>
</html>