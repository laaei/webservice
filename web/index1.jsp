<%--
  Created by IntelliJ IDEA.
  User: Laaei
  Date: 2023/10/25
  Time: 18:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>个人所得税计算器</title>
  <meta charset="utf-8">
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
    }
    .calculator {
      width: 300px;
      margin: 0 auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
  </style>
</head>
<body>
<div class="calculator">
  <h2>个人所得税计算器</h2>
  <label for="income">年收入（人民币）：</label>
  <input type="number" id="income"><br><br>
  <button onclick="calculateTax()">计算</button><br><br>
  <p id="result"></p>
</div>

<script>
  function calculateTax() {
    const income = parseFloat(document.getElementById("income").value);
    let tax = 0;

    if (income <= 36000) {
      tax = income * 0.03;
    } else if (income <= 144000) {
      tax = income * 0.1 - 2520;
    } else if (income <= 300000) {
      tax = income * 0.2 - 16920;
    } else if (income <= 420000) {
      tax = income * 0.25 - 31920;
    } else if (income <= 660000) {
      tax = income * 0.3 - 52920;
    } else if (income <= 960000) {
      tax = income * 0.35 - 85920;
    } else {
      tax = income * 0.45 - 181920;
    }

    document.getElementById("result").innerHTML = `应缴个人所得税：`+tax+` 人民币`;
  }
</script>
</body>
</html>
