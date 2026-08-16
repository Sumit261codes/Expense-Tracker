package dao;

import db.DBConnection;
import model.Expense;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/*
 * DAO class handles all database-related operations.
 * No servlet or JSP directly talks to the database.
 */
public class ExpenseDAO {

    // Insert new expense into database
    public static void addExpense(Expense expense) {
        try {
            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO expenses(title, amount) VALUES (?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, expense.getTitle());
            ps.setDouble(2, expense.getAmount());

            ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Fetch all expenses from database
    public static List<Expense> getAllExpenses() {
        List<Expense> list = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();
            String sql = "SELECT * FROM expenses";
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Expense e = new Expense(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getDouble("amount")
                );
                list.add(e);
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // Delete expense by ID
    public static void deleteExpense(int id) {
        try {
            Connection con = DBConnection.getConnection();
            String sql = "DELETE FROM expenses WHERE id=?";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);
            ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
