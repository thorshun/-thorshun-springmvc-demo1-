<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
    <h2>Spring MVC Demo - Home Page</h2>

    <hr>

    <a href="${pageContext.request.contextPath}/helloWorld/showForm">Hello World Form</a>

    <br><br>
    <a href="${pageContext.request.contextPath}/student/showForm">Student Registration Form</a>

    <br><br>
    <a href="${pageContext.request.contextPath}/customer/showForm">Customer Registration Form</a>


</body>
</html>
