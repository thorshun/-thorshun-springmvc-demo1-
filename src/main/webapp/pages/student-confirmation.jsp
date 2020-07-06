<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Confirmation</title>
</head>
<body>
    The student is confirmed: ${student.firstName} ${student.lastName}
    <br><br>
    Place of Origin: ${student.country}
    <br><br>
    Favorite Language: ${student.favoriteLanguage}
    <br><br>
    Operating Systems:
    <ul>
        <c:forEach items="${student.operatingSystems}" var="os">
            <li>${os}</li>
        </c:forEach>
    </ul>

</body>
</html>
