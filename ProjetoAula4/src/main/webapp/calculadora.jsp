<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
body{
background-color: #A0816C;
}
h1{ color: #61380B;
text-shadow: rgb(245, 211, 169) 0.1em 0.1em 0.2em;
font-family:Georgia, 'Times New Roman', Times, serif;
text-decoration: overline;
}
</style>
    <title>Calculadora</title>
</head>
<body>
    <h1>Calculadora</h1>
    
    <form action="calculator.jsp" method="post">
        Valor 1: <input type="text" name="valor1"><br>
        Valor 2: <input type="text" name="valor2"><br>
        Operador (+, -, *, /): <input type="text" name="operador"><br><br>
        <input type="submit" value="Calcular">
    </form>
</body>
</html>
