<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listar Mensagens</title>
</head>
<body>
    <h1>Listagem de Mensagens</h1>
    <ul>
        <% 
            List<String> mensagens = (List<String>) session.getAttribute("mensagens");
            if (mensagens != null) {
                for (String mensagem : mensagens) {
        %>
        <li><%= mensagem %></li>
        <%
                }
            }
        %>
    </ul>
    <a href="novaMensagem.jsp">Nova Mensagem</a>
</body>
</html>
