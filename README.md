💰 Expense Tracker – Java Servlet Based Web Application

📌 Project Overview

This project is a GUI-based Expense Tracker web application developed using Java Servlets, JSP, JDBC, and MySQL.
It allows users to add, view, and delete expenses through a simple web interface.
The project follows the MVC (Model–View–Controller) architecture and demonstrates core Java concepts, database connectivity, and web development principles.
________________________________________

🛠 Technologies Used
•	Java (JDK 8 or above)
•	Java Servlets & JSP
•	JDBC
•	MySQL Database
•	Apache Tomcat Server (9 or 10)
•	Eclipse IDE
•	HTML & CSS
________________________________________

⭐ Project Features
•	GUI-based web application using JSP and Servlets
•	Add new expenses with title and amount
•	View all expenses in a structured tabular format
•	Delete expenses with confirmation prompt
•	Server-side request handling using Java Servlets
•	Database connectivity using JDBC
•	MVC architecture for clean separation of concerns
•	Input validation on both client and server side
•	Exception handling to prevent application crashes
•	Simple and user-friendly interface
________________________________________

🔄 New Enhancements Added
the project was improved to meet advanced evaluation criteria and to enhance robustness and usability.
Key Improvements:
•	Migrated from basic implementation to Servlet-based architecture
•	Introduced DAO (Data Access Object) pattern for database operations
•	Implemented proper MVC structure (Model, View, Controller)
•	Added server-side validation in Servlets
•	Improved error handling to manage invalid inputs gracefully
•	Integrated JDBC with prepared statements for secure database access
•	Added Delete functionality with confirmation dialog
•	Improved GUI layout using CSS for better user experience
•	Cleaned and modularized code for better readability and maintenance
These changes significantly improved the scalability, reliability, and maintainability of the project.

________________________________________

📁 Project Structure
ExpenseTracker
│
├── src/
│   ├── model/
│   │   └── Expense.java
│   ├── dao/
│   │   └── ExpenseDAO.java
│   ├── db/
│   │   └── DBConnection.java
│   └── servlet/
│       ├── AddExpenseServlet.java
│       ├── ViewExpenseServlet.java
│       └── DeleteExpenseServlet.java
│
├── WebContent/
│   ├── index.jsp
│   ├── addExpense.jsp
│   ├── viewExpenses.jsp
│   └── WEB-INF/
│       └── web.xml
│
└── README.md
________________________________________

🧱 Database Setup (MySQL)
1.	Open MySQL Workbench
2.	Create a new database:
CREATE DATABASE expense_tracker;
USE expense_tracker;
3.	Create the expenses table:
CREATE TABLE expenses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    amount DOUBLE
);
________________________________________

🔗 Database Configuration
Open DBConnection.java and update your database credentials:
private static final String URL = "jdbc:mysql://localhost:3306/expense_tracker";
private static final String USER = "root";
private static final String PASSWORD = "your_mysql_password";
________________________________________

🚀 Steps to Run the Project in Eclipse
1️⃣ Import Project
•	Open Eclipse
•	File → Import → Existing Projects into Workspace
•	Select the project folder
•	Click Finish
________________________________________

2️⃣ Add MySQL Connector JAR
•	Download MySQL Connector/J
•	Right-click project → Build Path → Configure Build Path
•	Add External JARs
•	Select mysql-connector-j.jar
•	Apply & Close
________________________________________

3️⃣ Configure Apache Tomcat
•	Go to Servers tab
•	Add new server → Apache → Tomcat
•	Select Tomcat installation directory
•	Add your project to the server
________________________________________

4️⃣ Run the Project
•	Right-click project → Run As → Run on Server
•	Select Tomcat
•	Click Finish
________________________________________

🌐 How to Use the Application
1.	Open browser and go to:
http://localhost:8080/ExpenseTracker/index.jsp
2.	Click Add New Expense
3.	Enter expense title and amount
4.	Submit the form
5.	Click View Expenses to see all records
6.	Use Delete option to remove an expense
________________________________________

🧠 Key Features Implemented
•	Servlet-based request handling
•	JDBC database connectivity
•	MVC architecture
•	Input validation
•	Exception handling
•	Clean and modular code
•	GUI-based web interface
________________________________________

🧪 Testing & Validation
•	Invalid inputs are handled safely
•	Database errors do not crash the application
•	All CRUD operations are tested
________________________________________

🎓 Learning Outcomes
Through the development of this project, the following learning outcomes were achieved:
•	Gained practical understanding of Java Servlets and JSP
•	Learned how to build web applications using MVC architecture
•	Understood JDBC and database connectivity with MySQL
•	Implemented CRUD operations in a real-world scenario
•	Improved skills in exception handling and validation
•	Learned to organize projects using clean folder structures
•	Enhanced understanding of server-side processing
•	Gained experience in integrating frontend and backend components
•	Improved debugging and problem-solving skills
•	Learned how to document and deploy Java web applications
________________________________________

🏁 Conclusion
This Expense Tracker project demonstrates strong understanding of Java Web Technologies, database integration, and clean coding practices.
It is designed to be simple, efficient, and extendable for future improvements.

