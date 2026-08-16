package servlet;

import dao.ExpenseDAO;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

/*
 * This servlet deletes an expense
 * using the ID passed from JSP.
 */
public class DeleteExpenseServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        ExpenseDAO.deleteExpense(id);

        response.sendRedirect("viewExpense");
    }
}
