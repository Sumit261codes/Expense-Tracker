<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Expense</title>

    <style>
        /*
         * Simple styling to make the form clean and readable.
         * No external CSS is used to keep the project lightweight.
         */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: white;
            padding: 25px;
            width: 350px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 8px;
            margin: 8px 0 15px 0;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #2c7be5;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #1a5fd0;
        }

        .error {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>

<body>

<div class="container">

    <!-- Page heading -->
    <h2>Add New Expense</h2>

    <!-- 
        If any validation error is sent from the servlet,
        it will be displayed here to inform the user.
    -->
    <%
        String error = (String) request.getAttribute("error");
        if (error != null) {
    %>
        <div class="error"><%= error %></div>
    <%
        }
    %>

    <!-- 
        This form sends data to AddExpenseServlet.
        Method is POST because we are submitting data.
    -->
    <form action="addExpense" method="post">

        <!-- Expense title input -->
        <label>Expense Title</label>
        <input type="text" name="title" placeholder="e.g. Food, Travel" required>

        <!-- Expense amount input -->
        <label>Amount</label>
        <input type="number" name="amount" placeholder="Enter amount" min="1" required>

        <!-- Submit button -->
        <button type="submit">Add Expense</button>

    </form>

</div>

</body>
</html>
