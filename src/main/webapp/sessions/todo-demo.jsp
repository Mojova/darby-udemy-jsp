<%--
  Created by IntelliJ IDEA.
  User: j.kaisanlahti
  Date: 9.6.2021
  Time: 14.17
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>To-do demo</title>
</head>
<body>
<form action="todo-demo.jsp">
    <label for="item">Add new item:</label>
    <input id="item" name="theItem" type="text"/>
    <button>Submit</button>
</form>

<%
    List<String> items = (List<String>) session.getAttribute("myToDoList");

    if (items == null) {
        items = new ArrayList<>();
        session.setAttribute("myToDoList", items);
    }

    String theItem = request.getParameter("theItem");
    if (theItem != null && theItem.trim().length() != 0) {
        items.add(theItem);
    }
%>

<p>Items entered:</p>
<ol>
    <%
        for (String item : items) {
            out.println("<li>" + item + "</li>");
        }
    %>
</ol>
</body>
</html>
