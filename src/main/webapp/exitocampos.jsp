<%-- 
    Document   : exitocampos
    Created on : 2/12/2020, 12:38:52 AM
    Author     : Jama
--%>
<%@page import="modelo.Calculadora" %>
<%
float res = 0;
Calculadora cal = (Calculadora)request.getSession().getAttribute("Calculadora1");
String operacion = cal.getOperacion();

if(operacion.equals("suma")){
    res = (cal.getValor1() + cal.getValor2());
}
else if(operacion.equals("resta")){
    res = cal.getValor1() - cal.getValor2();
}
else if(operacion.equals("multiplicacion")){
    res = cal.getValor1() * cal.getValor2();
}
else if(operacion.equals("division")){
    res = cal.getValor1() / cal.getValor2();
}
else if(operacion.equals("residuo")){
    res = cal.getValor1() % cal.getValor2();
}
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <title>Calculo exitoso</title>
    </head>
    <body>
        <div class="container py-5 text-center">
            <h3 class="text-center">El resultado de la <%= operacion %> es: <%= res %></h3>
            <a href="index.jsp">Volver</a>
        </div>
    </body>
</html>
