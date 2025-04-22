
CREATE DATABASE My_Library;
USE My_Library;
 CREATE TABLE author (
   id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

 CREATE TABLE publisher (
    id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(255) NOT NULL
 );

 CREATE TABLE book_language (
    id INT AUTO_INCREMENT PRIMARY KEY,
    language_name VARCHAR(100) NOT NULL
);

 CREATE TABLE book (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
     author_id INT,
    publisher_id INT,
    language_id INT,
    FOREIGN KEY (author_id) REFERENCES author(id),
     FOREIGN KEY (publisher_id) REFERENCES publisher(id),
     FOREIGN KEY (language_id) REFERENCES book_language(id)
 );

 CREATE TABLE book_author (
    book_id INT,
    author_id INT,
     PRIMARY KEY (book_id, author_id),
   FOREIGN KEY (book_id) REFERENCES book(id),
    FOREIGN KEY (author_id) REFERENCES author(id)
 );

 INSERT INTO author (name) VALUES
 ('Harper Lee'),
 ('George Orwell'),
 ('Jane Austen'),
('J.D. Salinger'),
 ('F. Scott Fitzgerald'),
 ('Gabriel García Márquez'),
 ('Herman Melville'),
 ('Leo Tolstoy'),
 ('Homer'),
 ('Fyodor Dostoevsky'),
 ('J.R.R. Tolkien'),
 ('Ray Bradbury'),
 ('Charlotte Brontë'),
 ('Aldous Huxley'),
 ('Emily Brontë'),
('Miguel de Cervantes'),
 ('Victor Hugo'),
('Dante Alighieri');

 INSERT INTO book_language (language_name) VALUES
 ('English'),
 ('Spanish'),
('Russian'),
('Greek'),
 ('Italian');

 INSERT INTO publisher (name) VALUES
 ('Penguin Random House'),
('HarperCollins'),
 ('Macmillan Publishers'),
 ('Simon & Schuster'),
 ('Oxford University Press');

 INSERT INTO book (title, author_id, publisher_id, language_id) VALUES
 ('To Kill a Mockingbird', 1, 1, 1),
 ('1984', 2, 2, 1),
 ('Pride and Prejudice', 3, 3, 1),
('The Catcher in the Rye', 4, 2, 1),
 ('The Great Gatsby', 5, 1, 1),
 ('One Hundred Years of Solitude', 6, 4, 2),
 ('Moby-Dick', 7, 3, 1),
 ('War and Peace', 8, 5, 3),
 ('The Odyssey', 9, 2, 4),
('The Brothers Karamazov', 10, 5, 3),
('Crime and Punishment', 10, 5, 3),
('The Hobbit', 11, 1, 1),
('Fahrenheit 451', 12, 2, 1),
 ('Jane Eyre', 13, 3, 1),
('Brave New World', 14, 2, 1),
 ('Wuthering Heights', 15, 3, 1),
 ('Don Quixote', 16, 4, 2),
 ('Les Misérables', 17, 4, 3),
 ('The Divine Comedy', 18, 5, 5),
 ('Anna Karenina', 8, 5, 3);

 INSERT INTO book_author (book_id, author_id) VALUES
 (1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
 (11, 10), (12, 11), (13, 12), (14, 13), (15, 14),
 (16, 15), (17, 16), (18, 17), (19, 18), (20, 8);

 CREATE TABLE customer (
   id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
     email VARCHAR(255) UNIQUE NOT NULL
 );

 INSERT INTO customer (name, email) VALUES
 ('Fatima Ali', 'fatima.ali@example.com'),
('James Mwangi', 'james.mwangi@example.com'),
 ('Amina Omondi', 'amina.omondi@example.com'),
 ('Raj Patel', 'raj.patel@example.com'),
 ('Grace Wambui', 'grace.wambui@example.com'),
('Daniel Kimani', 'daniel.kimani@example.com'),
 ('Sophia Atieno', 'sophia.atieno@example.com'),
('Mohamed Hassan', 'mohamed.hassan@example.com'),
 ('Lucy Adhiambo', 'lucy.adhiambo@example.com'),
 ('Brian Otieno', 'brian.otieno@example.com');

 CREATE TABLE address_status (
     id INT AUTO_INCREMENT PRIMARY KEY,
     status_name VARCHAR(100) NOT NULL
 );

 INSERT INTO address_status (status_name) VALUES
('Active'),
 ('Inactive'),
('Temporary'),
 ('Verified'),
 ('Pending Verification');

 CREATE TABLE country (
     id INT AUTO_INCREMENT PRIMARY KEY,
country_name VARCHAR(100) NOT NULL,
   country_code VARCHAR(3)
 );

 INSERT INTO country (country_name, country_code) VALUES
('Kenya', 'KE'),
 ('United States', 'US'),
('United Kingdom', 'GB'),
 ('India', 'IN'),
 ('South Africa', 'ZA');

 CREATE TABLE address (
     id INT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(255),
     city VARCHAR(100),
     state VARCHAR(100),
    postal_code VARCHAR(20),
     country_id INT,
    FOREIGN KEY (country_id) REFERENCES country(id)
 );

INSERT INTO address (street, city, state, postal_code, country_id) VALUES
('123 Mombasa Road', 'Kwale', 'Coast', '80400', 1),
('456 Diani Beach Road', 'Diani', 'Coast', '80401', 1),
('789 Ukunda Center', 'Ukunda', 'Coast', '80402', 1),
 ('321 Shimoni Lane', 'Shimoni', 'Coast', '80403', 1),
('654 Msambweni Street', 'Msambweni', 'Coast', '80404', 1),
 ('100 Main Street', 'Boston', 'MA', '02108', 2),
 ('44 Oxford Street', 'London', NULL, 'W1D 1BS', 3),
 ('25 Gandhi Road', 'Mumbai', 'Maharashtra', '400001', 4),
 ('10 Mandela Square', 'Johannesburg', 'Gauteng', '2000', 5),
('111 Shelly Beach Lane', 'Shelly Beach', 'Coast', '80408', 1);

 CREATE TABLE customer_address (
     customer_id INT,
     address_id INT,
     address_status_id INT,
     PRIMARY KEY (customer_id, address_id),
     FOREIGN KEY (customer_id) REFERENCES customer(id),
    FOREIGN KEY (address_id) REFERENCES address(id),
     FOREIGN KEY (address_status_id) REFERENCES address_status(id)
 );

 INSERT INTO customer_address (customer_id, address_id, address_status_id) VALUES
 (1, 1, 1), (1, 2, 3),
 (2, 3, 1),
 (3, 4, 4), (3, 1, 2),
 (4, 5, 5),
 (5, 6, 1),
 (6, 7, 1), (6, 8, 1),
 (7, 9, 4),
 (8, 2, 3),
 (9, 4, 1),
 (10, 6, 5);
 
 INSERT INTO country (name) VALUES
 ('Kenya'),
 ('United States'),
('United Kingdom'),
  ('India'),
  ('South Africa'),
  ('Spain'),
 ('Russia'),
  ('Greece'),
 ('Italy'),
('Colombia');
--  
CREATE TABLE cust_order (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
      shipping_method_id INT,
      status_id INT,
     order_date DATETIME,
     FOREIGN KEY (customer_id) REFERENCES customer(id),
      FOREIGN KEY (shipping_method_id) REFERENCES shipping_method(id),
      FOREIGN KEY (status_id) REFERENCES order_status(id)
  );
-- -- -- --  
INSERT INTO cust_order (customer_id, shipping_method_id, status_id, order_date) VALUES
 (1, 1, 2, '2025-04-01 10:15:00'),  -- Fatima - Processing - Standard
 (2, 2, 3, '2025-04-02 09:00:00'),  -- James - Shipped - Express
 (3, 3, 4, '2025-04-03 14:30:00'),  -- Amina - Delivered - Same Day
(4, 1, 1, '2025-04-04 11:00:00'),  -- Raj - Pending - Standard
 (5, 2, 5, '2025-04-05 12:45:00'),  -- Grace - Cancelled - Express
 (6, 4, 2, '2025-04-06 08:20:00'),  -- Daniel - Processing - Pickup
 (7, 1, 3, '2025-04-07 16:10:00'),  -- Sophia - Shipped - Standard
(8, 3, 4, '2025-04-08 13:55:00'),  -- Mohamed - Delivered - Same Day
(9, 2, 2, '2025-04-09 10:40:00'),  -- Lucy - Processing - Express
 (10, 1, 1, '2025-04-10 17:30:00'); -- Brian - Pending - Standard


  CREATE TABLE order_line (
     order_id INT,
     book_id INT,
      quantity INT NOT NULL,
      PRIMARY KEY (order_id, book_id),
    FOREIGN KEY (order_id) REFERENCES cust_order(id),
    FOREIGN KEY (book_id) REFERENCES book(id)
  );
 
 INSERT INTO order_line (order_id, book_id, quantity) VALUES
(1, 1, 1),   -- Fatima ordered "To Kill a Mockingbird"
 (1, 2, 2),   -- Fatima also ordered two copies of "1984"
 (2, 3, 1),   -- James ordered "Pride and Prejudice"
 (3, 6, 1),   -- Amina ordered "One Hundred Years of Solitude"
 (4, 4, 1),   -- Raj ordered "The Catcher in the Rye"
 (5, 5, 1),   -- Grace ordered "The Great Gatsby" (cancelled order)
 (6, 12, 1),  -- Daniel ordered "The Hobbit"
(6, 13, 1),  -- Daniel also ordered "Fahrenheit 451"
 (7, 7, 2),   -- Sophia ordered two copies of "Moby-Dick"
 (8, 8, 1),   -- Mohamed ordered "War and Peace"
 (9, 9, 1),   -- Lucy ordered "The Odyssey"
 (10, 10, 1); -- Brian ordered "The Brothers Karamazov"


  CREATE TABLE shipping_method (
      id INT AUTO_INCREMENT PRIMARY KEY,
     method_name VARCHAR(100) NOT NULL
  );

INSERT INTO shipping_method (method_name) VALUES
 ('Standard Delivery'),
('Express Delivery'),
 ('Same Day Delivery'),
 ('Pickup at Store'),
('Overnight Shipping'),
('Drone Delivery'),
 ('International Courier');


  CREATE TABLE order_history (
    id INT AUTO_INCREMENT PRIMARY KEY,
      order_id INT,
      status_id INT,
     changed_at DATETIME,
     FOREIGN KEY (order_id) REFERENCES cust_order(id),
      FOREIGN KEY (status_id) REFERENCES order_status(id)
  );
 
INSERT INTO order_history (order_id, status_id, changed_at) VALUES
(1, 1, '2025-04-01 10:15:00'),  -- Fatima: Pending
 (1, 2, '2025-04-01 14:30:00'),  -- Fatima: Processing

 (2, 1, '2025-04-02 09:00:00'),  -- James: Pending
(2, 2, '2025-04-02 12:00:00'),  -- Processing
 (2, 3, '2025-04-03 08:00:00'),  -- Shipped

 (3, 1, '2025-04-03 14:30:00'),  -- Amina: Pending
(3, 2, '2025-04-03 15:00:00'),  -- Processing
(3, 3, '2025-04-03 16:00:00'),  -- Shipped
(3, 4, '2025-04-03 19:00:00'),  -- Delivered

 (4, 1, '2025-04-04 11:00:00'),  -- Raj: Pending

 (5, 1, '2025-04-05 12:45:00'),  -- Grace: Pending
 (5, 5, '2025-04-05 13:00:00'),  -- Cancelled

 (6, 1, '2025-04-06 08:20:00'),  -- Daniel: Pending
 (6, 2, '2025-04-06 09:30:00'),  -- Processing

(7, 1, '2025-04-07 16:10:00'),  -- Sophia: Pending
(7, 2, '2025-04-07 17:00:00'),  -- Processing
 (7, 3, '2025-04-08 10:00:00'),  -- Shipped

 (8, 1, '2025-04-08 13:55:00'),  -- Mohamed: Pending
 (8, 2, '2025-04-08 15:30:00'),  -- Processing
 (8, 4, '2025-04-09 12:00:00'),  -- Delivered

 (9, 1, '2025-04-09 10:40:00'),  -- Lucy: Pending
 (9, 2, '2025-04-09 11:00:00'),  -- Processing

 (10, 1, '2025-04-10 17:30:00'); -- Brian: Pending

 CREATE TABLE order_status (
    id INT AUTO_INCREMENT PRIMARY KEY,
    status_name VARCHAR(100) NOT NULL
 );


INSERT INTO order_status (status_name) VALUES
 ('Pending'),
 ('Processing'),
('Shipped'),
 ('Delivered'),
('Cancelled'),
 ('Returned'),
('Refunded'),
 ('Failed Payment');

-- example 
--  USE My_Library;
--  SELECT 
--     b.title AS book_title,
--      a.name AS author_name,
--      bl.language_name AS language
--  FROM 
--     book b
--  JOIN book_author ba ON b.id = ba.book_id
-- - JOIN author a ON ba.author_id = a.id
-- JOIN book_language bl ON b.language_id = bl.id
--  WHERE 
--   bl.language_name = 'English';

