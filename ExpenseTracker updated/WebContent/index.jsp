<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Expense Tracker</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            text-align: center;
            margin-top: 80px;
        }

        h1 {
            color: #333;
        }

        a {
            display: inline-block;
            margin: 15px;
            padding: 10px 20px;
            background-color: #2c7be5;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        a:hover {
            background-color: #1a5fd0;
        }
    </style>
</head>

<body>

    <!-- Project title -->
    <h1>Expense Tracker</h1>

    <!-- Short description -->
    <p>A simple Java Servlet-based Expense Tracker application</p>

    <!-- Navigation links -->
    <a href="addExpense.jsp">Add New Expense</a>
    <a href="viewExpense">View Expenses</a>

</body>
</html>
