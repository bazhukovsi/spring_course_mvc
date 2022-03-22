<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ru" xml:lang="ru">
<head>
    <meta charset="utf-8">
    <title>Получение данных из формы</title>
</head>
<div align="center">
<body>
<h3>Уважаемый Employee!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Рад приветствовать Вас!!!!</h3>
<br>
<%--Ваше имя: ${param.employeeName}--%>
Ваше имя      : ${employee.name}
<br><br>
Ваша фамилия  : ${employee.surname}
<br><br>
Ваша зарплата : ${employee.salary}
<br><br>
Департамент   : ${employee.department}
<br><br>
Номер телефона: ${employee.phoneNumber}
<br><br>
email: ${employee.email}
<br><br>
Какую машину вы хотите купить?  ${employee.carBrand}
<br><br>
Language (s) :
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li> ${lang}</li>
    </c:forEach>
</ul>
</body>
</div>
</html>