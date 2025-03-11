CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE IF NOT EXISTS Authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(250) NOT NULL
);

CREATE TABLE IF NOT EXISTS Books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(250) NOT NULL,
    SECONDARY KEY author_id(Authors) REFERENCES Author(author_id)
    price DOUBLE NOT NULL  CHECK (price >= 0),
    publication_date DATE
);

CREATE TABLE IF NOT EXISTS Customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(250) NOT NULL
    email VARCHAR(250) UNIQUE,
    address TEXT
);

CREATE TABLE IF NOT EXISTS Orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    SECONDARY KEY (customer_id) REFERENCES Customers(customer_id)
    Order_date DATE
);

CREATE TABLE IF NOT EXISTS Order_details(
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    SECONDARY KEY (order_id) REFERENCES Orders(order_id),
    SECONDARY KEY (book_id) REFERENCES (book_id)
    quantity DOUBLE NOT NULL  CHECK (price >= 0),
)