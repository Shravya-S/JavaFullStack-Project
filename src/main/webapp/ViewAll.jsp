<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display All Customers</title>
    <!-- Add your styles here -->
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<form action="va" method="post">
    <h2>All Customers</h2>

    <table>
        <tr>
            <th>Account Number</th>
            <th>Name</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Balance</th>
            <th>Pin</th>
        </tr>

        <c:forEach var="row" items="${customerList}">
            <tr>
                <td>${row.AccNo}</td>
                <td>${row.Name}</td>
                <td>${row.Phone}</td>
                <td>${row.Email}</td>
                <td>${row.Balance}</td>
                <td>${row.Pin}</td>
            </tr>
        </c:forEach>
    </table>

   </form>
</body>
</html>
