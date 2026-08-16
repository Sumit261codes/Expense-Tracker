package servlet;

import dao.ExpenseDAO;
import model.Expense;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

/*
 * This servlet handles adding new expenses.
 * It receives data from addExpense.jsp.
 */
public class AddExpenseServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String title = request.getParameter("title");
        String amountStr = request.getParameter("amount");

        // Basic server-side validation
        if (title == null || title.isEmpty() || amountStr == null) {
            request.setAttribute("error", "Invalid input!");
            request.getRequestDispatcher("addExpense.jsp").forward(request, response);
            return;
        }

        double amount = Double.parseDouble(amountStr);

        Expense expense = new Expense(title, amount);
        ExpenseDAO.addExpense(expense);

        response.sendRedirect("viewExpense");
    }
}
