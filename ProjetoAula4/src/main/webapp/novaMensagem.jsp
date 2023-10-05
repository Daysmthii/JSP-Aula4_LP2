<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Nova Mensagem</title>
</head>
<body>
    <h1>Nova Mensagem</h1>
    <form action="gravarMensagem.jsp" method="post">
        Email: <input type="text" name="email"><br>
        Mensagem: <textarea name="mensagem"></textarea><br>
        <input type="submit" value="Gravar Mensagem">
    </form>
</body>
</html>
