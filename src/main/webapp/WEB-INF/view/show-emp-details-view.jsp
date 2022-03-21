<!DOCTYPE html>
<html lang="ru" xml:lang="ru">
<head>
    <meta charset="utf-8">
    <title>Получение данных из формы</title>
</head>
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
</body>
</html>