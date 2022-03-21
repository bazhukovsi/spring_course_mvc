<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ru" xml:lang="ru">
<head>
    <meta charset="utf-8">
    <title>Передача данных из формы</title>
</head>
<body>
<h3>Уважаемый Employee! Введите свои данные в форму</h3>
<br>
<%--<form action="showDetails" method="get">--%>
<%--    <input type="text" name="employeeName"--%>
<%--           placeholder="Введите свое имя">--%>
<%--    <input type="submit" value="Submit">--%>
<%--</form>--%>

<form:form action="showDetails" modelAttribute="employee">
    Имя&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <form:input path="name"/>
    <br><br>
    Фамилия: <form:input path="surname"/>
    <br><br>
    Зарплата&nbsp;: <form:input path="salary"/>
    <br><br>
    <input type="submit" value="OK">
    <br><br>
</form:form>

</body>
</html>