package model;

/*
 * This class represents an Expense object.
 * It is used to store expense data and pass it
 * between DAO, Servlets, and JSP pages.
 */
public class Expense {

    private int id;
    private String title;
    private double amount;

    // Empty constructor (required for flexibility)
    public Expense() {
    }

    // Constructor without ID (used while inserting data)
    public Expense(String title, double amount) {
        this.title = title;
        this.amount = amount;
    }

    // Constructor with ID (used while fetching data)
    public Expense(int id, String title, double amount) {
        this.id = id;
        this.title = title;
        this.amount = amount;
    }

    // Getter and Setter methods
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }
}
