<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Confirmation</title>
</head>
<body>
    The customer is confirmed: ${customer.firstName} ${customer.lastName}
    <br><br>
    The customer has ${customer.freePasses} free passes.
    <br><br>
    The postal code is ${customer.postalCode}
    <br><br>
    Course Code: ${customer.courseCode}
</body>
</html>
