<%-- 
    Document   : index
    Created on : 1/12/2020, 11:32:41 PM
    Author     : Jama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <title>Calculadora</title>
</head>
<body>
<div class="container py-5">
    <form method="POST" action="calcular.do">
        <div class="form-row">
            <div class="col-6">
                <div class="form-group">
                    <label for="valor1">Valor 1:</label>
                    <input class="form-control" type="number" name="valor1" id="valor1"
                           placeholder="Ejemplo: 3.0"
                           required/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <input type="hidden" name="operacion" id="operacion"/>
                    <label for="valor2">Valor 2:</label>
                    <input class="form-control" type="number" name="valor2" id="valor2"
                           placeholder="Ejemplo: 5.0"
                           required/>
                </div>
            </div>
        </div>
        <div class="form-row">
            <div class="col-2">
                <button data-destino="multiplicacion" class="btn btn-primary btn-block">Multiplicaci&oacute;n</button>
            </div>
            <div class="col-2">
                <button data-destino="division" class="btn btn-primary btn-block">Divisi&oacute;n</button>
            </div>
            <div class="col-2">
                <button data-destino="resta" class="btn btn-primary btn-block">Resta</button>
            </div>
            <div class="col-2">
                <button data-destino="suma" class="btn btn-primary btn-block">Suma</button>
            </div>
            <div class="col-2">
                <button data-destino="residuo" class="btn btn-primary btn-block">Residuo</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>

<script>
    $("button").click(function () {
        var operacion = $(this).data('destino');
        $("#operacion").val(operacion);
    });
</script>