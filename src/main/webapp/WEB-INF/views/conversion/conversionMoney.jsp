<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Conversion Money</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<h1>Currency Converter</h1>
<form action="convert" method="post">
    <label for="rate">Exchange Rate (USD to VND):</label>
    <input type="text" id="rate" name="rate" required>
    <br><br>
    <label for="amount">Amount in USD:</label>
    <input type="text" id="amount" name="amount" required>
    <br><br>
    <input type="submit" value="Convert">
</form>

<%--   <c:if test="${not empty result}"> là một thẻ của JSTL (JavaServer Pages Standard Tag Library) dùng để kiểm tra điều kiện trong JSP.--%>
<c:if test="${not empty result}">
    <div class="mt-5">
        <h2>Conversion Result</h2>
        <p>Exchange Rate: <span>${rate}</span> VND/USD</p>
        <p>Amount in USD: <span>${amount}</span> USD</p>
        <p>Converted Amount: <span>${result}</span> VND</p>
    </div>
</c:if>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>