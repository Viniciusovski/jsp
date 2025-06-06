<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
    <title>Exemplo JSP</title>
</head>
<body>
    <h1>Bem-vindo!</h1>
    
    <%-- Scriptlet --%>
    <% 
        String nome = "Visitante";
        if(request.getParameter("nome") != null) {
            nome = request.getParameter("nome");
        }
    %>
    
    <%-- Expressão --%>
    <p>Olá, <%= nome %>!</p>
    
    <%-- Declaração --%>
    <%! 
        public String getHoraAtual() {
            return new Date().toString();
        }
    %>
    
    <p>Agora são: <%= getHoraAtual() %></p>
</body>
</html>
