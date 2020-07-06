<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Student Form</title>
</head>
<body>


    <form:form action="${pageContext.request.contextPath}/student/processForm" modelAttribute="student">
        First Name: <form:input path="firstName"/>
        <br><br>
        Last Name: <form:input path="lastName"/>
        <br><br>
        Country:
        <form:select path="country" items="${countryOptions}"/>
        <br><br>
        Favorite Programming Languages:
        Java<form:radiobutton path="favoriteLanguage" value="Java"/>
        PHP<form:radiobutton path="favoriteLanguage" value="PHP"/>
        C#<form:radiobutton path="favoriteLanguage" value="C#"/>
        Ruby<form:radiobutton path="favoriteLanguage" value="Ruby"/>

        <br><br>
        Operating Systems:
        <form:checkbox path="operatingSystems" value="Linux"/>Linux
        <form:checkbox path="operatingSystems" value="Mac OS"/>Mac OS
        <form:checkbox path="operatingSystems" value="MS Windows"/>MS Windows

        <br><br>
        <input type="submit">
    </form:form>


</body>
</html>
