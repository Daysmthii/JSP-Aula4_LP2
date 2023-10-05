<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body{
background-color: #A0816C;
}
</style>
<title>Insert title here</title>
</head>
<body>
 <%
        try {
            double valor1 = Double.parseDouble(request.getParameter("valor1"));
            double valor2 = Double.parseDouble(request.getParameter("valor2"));
            String operador = request.getParameter("operador");
            double resultado = 0.0;
            
            if (operador.equals("+")) {
                resultado = valor1 + valor2;
            } else if (operador.equals("-")) {
                resultado = valor1 - valor2;
            } else if (operador.equals("*")) {
                resultado = valor1 * valor2;
            } else if (operador.equals("/")) {
                if (valor2 == 0) {
                    throw new ArithmeticException("Divis�o por zero n�o � permitida.");
                }
                resultado = valor1 / valor2;
            } else {
                throw new IllegalArgumentException("Operador inv�lido.");
            }
    %>
    
    <p>Resultado: <%= resultado %></p>
    
    <%
        } catch (NumberFormatException e) {
    %>
    
    <p>Erro: Os valores informados n�o s�o v�lidos.</p>
    
    <%
        } catch (ArithmeticException e) {
    %>
    
    <p>Erro: <%= e.getMessage() %></p>
    
    <%
        } catch (IllegalArgumentException e) {
    %>
    
    <p>Erro: <%= e.getMessage() %></p>
    
    <%
        }
    %>
</body>
</html>