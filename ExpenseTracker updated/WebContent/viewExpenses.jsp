<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="model.Expense" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Expenses</title>

    <style>
        /*
         * Basic styling to display expenses in a readable table format.
         * The focus is on clarity rather than heavy UI design.
         */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            padding: 40px;
        }

        h2 {
            text-align: center;
        }

        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
            background-color: white;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }

        th {
            background-color: #2c7be5;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f1f1f1;
        }

        a {
            color: red;
            text-decoration: none;
            font-weight: bold;
        }

        .back {
            display: block;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>

<body>

    <!-- Page heading -->
    <h2>All Expenses</h2>

    <!-- 
        The expense list is set as a request attribute by ViewExpenseServlet.
        We retrieve it here and display it using a simple loop.
    -->
    <%
        List<Expense> expenses = (List<Expense>) request.getAttribute("expenses");

        /*
         * If no expenses are found, we inform the user instead of
         * showing an empty table.
         */
        if (expenses == null || expenses.isEmpty()) {
    %>
        <p style="text-align:center; color:red;">No expenses found.</p>
    <%
        } else {
    %>

    <!-- Expense table -->
    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Amount</th>
            <th>Action</th>
        </tr>

        <!-- 
            Loop through each expense object and display its values.
            This keeps JSP logic minimal and readable.
        -->
        <%
            for (Expense e : expenses) {
        %>
        <tr>
            <td><%= e.getId() %></td>
            <td><%= e.getTitle() %></td>
            <td><%= e.getAmount() %></td>

            <!-- 
                Delete link calls DeleteExpenseServlet with expense ID.
                This demonstrates servlet-based action handling.
            -->
            <td>
                <a href="deleteExpense?id=<%= e.getId() %>"
                   onclick="return confirm('Are you sure you want to delete this expense?');">
                   Delete
                </a>
            </td>
        </tr>
        <%
            }
        %>
    </table>

    <%
        }
    %>

    <!-- Navigation back to home page -->
    <div class="back">
        <a href="index.jsp">← Back to Home</a>
    </div>

</body>
</html>
