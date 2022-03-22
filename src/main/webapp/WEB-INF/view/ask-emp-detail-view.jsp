<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ru" xml:lang="ru">
<head>
    <meta charset="utf-8">
    <title>Передача данных из формы</title>
</head>
<div align="center">
<body>
<h3>Уважаемый Employee! Введите свои данные в форму</h3>
<br>
<%--<form action="showDetails" method="get">--%>
<%--    <input type="text" name="employeeName"--%>
<%--           placeholder="Введите свое имя">--%>
<%--    <input type="submit" value="Submit">--%>
<%--</form>--%>

<form:form action="showDetails" modelAttribute="employee">
    Имя: <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    Фамилия: <form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>
    Зарплата: <form:input path="salary"/>
    <form:errors path="salary"/>
    <br><br>
    Департамент: <form:select path="department">
    <%--    <form:option value="Information Technology" label="IT"/>--%>
    <%--    <form:option value="Sales" label="Sales"/>--%>
    <%--    <form:option value="Human Research" label="HR"/>--%>
    <form:options items="${employee.departments}"/>
</form:select>
    <br><br>
    Какую машину вы хотите приобрести?
<%--    Lada Granta<form:radiobutton path="carBrand" value="Lada Granta"/>--%>
<%--    Lada Kalina<form:radiobutton path="carBrand" value="Lada Kalina"/>--%>
<%--    Lada Vesta<form:radiobutton path="carBrand" value="Lada Vesta"/>--%>
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br><br>
    Какой язык программирования вы изучаете?
<%--    Java <form:checkbox path="languages" value="Java"/>--%>
<%--    C++ <form:checkbox path="languages" value="C++"/>--%>
<%--    Python <form:checkbox path="languages" value="Python"/>--%>
    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br><br>
    Номер телефона: <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br><br>
    email: <form:input path="email"/>
    <form:errors path="email"/>
    <br><br>
    <input type="submit" value="OK">
</form:form>

</body>
</div>
</html>