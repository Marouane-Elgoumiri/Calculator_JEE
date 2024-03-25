<%@ page import="com.example.tp1.CalculatorBean" %>
<jsp:useBean id="calculator" class="com.example.tp1.CalculatorBean" scope="request"/>

<html>
<head>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Calculator</title>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</head>
<body>
<form method="post" action="calculator.jsp">
    <div class="mt-3">
        Operand 1: <input type="text" name="operand1" value="${calculator.a}"><br>
        <br/>
        Operand 2: <input type="text" name="operand2" value="${calculator.b}"><br>
        <br/>
        Operation:
        <select class="form-select" name="operation" aria-label="Default select example" value="${calculator.operation}">
            <option value="add">Addition</option>
            <option value="subtract">Subtraction</option>
            <option value="multiply">Multiplication</option>
            <option value="divide">Division</option>
        </select><br>

        <%--
            <div class="form-check" >
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1"  value="add" ${calculator.operation == 'add' ? 'checked' : ''}>
                <label class="form-check-label" for="flexRadioDefault1">
                    Addition
                </label>
            </div>
            <div class="form-check" >
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" value="substract" ${calculator.operation == 'substract' ? 'checked' : ''}>
                <label class="form-check-label" for="flexRadioDefault2">
                    Subtraction
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3"  value="multiply" ${calculator.operation == 'multiply' ? 'checked' : ''}>
                <label class="form-check-label" for="flexRadioDefault2">
                    Multiplication
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault4" value="divide" ${calculator.operation == 'divide' ? 'checked' : ''}>
                <label class="form-check-label" for="flexRadioDefault2">
                    Division
                </label>
            </div>
        --%>
        <br/>
        <button type="submit" value="Calculate" class="ml-4 btn btn-info">Calculate</button>
    </div>
</form>

<%-- Check if the form is submitted --%>
<c:if test="${not empty param.operand1}">
    <%-- Set the values from the form to the bean --%>
    <jsp:setProperty name="calculator" property="a" value="${param.operand1}"/>
    <jsp:setProperty name="calculator" property="b" value="${param.operand2}"/>
    <jsp:setProperty name="calculator" property="operation" value="${param.operation}"/>

    <%-- Perform the calculation --%>
    <%
        calculator.calculate();
    %>

    <%-- Display the result --%>
    Result: ${calculator.result}
</c:if>
    <div class="ml-5">
        <label class="btn btn-outline-danger" for="danger-outlined">Log out</label>
    </div>
</body>
</html>
