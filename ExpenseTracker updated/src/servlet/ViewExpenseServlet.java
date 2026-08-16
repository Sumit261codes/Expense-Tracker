package servlet;

import dao.ExpenseDAO;
import model.Expense;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

/*
 * This servlet fetches all expenses
 * and forwards them to viewExpenses.jsp.
 */
public class ViewExpenseServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Expense> expenses = ExpenseDAO.getAllExpenses();
        request.setAttribute("expenses", expenses);

        RequestDispatcher rd = request.getRequestDispatcher("viewExpenses.jsp");
        rd.forward(request, response);
    }
}
