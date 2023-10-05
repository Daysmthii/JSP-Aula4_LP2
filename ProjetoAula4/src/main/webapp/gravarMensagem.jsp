<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%
    // Recuperar parâmetros do formulário
    String email = request.getParameter("email");
    String mensagem = request.getParameter("mensagem");

    // Verificar se a sessão já possui uma lista de mensagens
    List<String> mensagens = (List<String>) session.getAttribute("mensagens");

    if (mensagens == null) {
        mensagens = new ArrayList<>();
    }

    // Adicionar a nova mensagem à lista
    mensagens.add("Email: " + email + ", Mensagem: " + mensagem);

    // Atualizar a sessão com a lista de mensagens
    session.setAttribute("mensagens", mensagens);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mensagem Gravada</title>
</head>
<body>
    <h1>Mensagem Gravada com Sucesso!</h1>
    <a href="listarMensagens.jsp">Ver Mensagens</a>
</body>
</html>
