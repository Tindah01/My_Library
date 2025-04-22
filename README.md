📚 My_Library SQL Database
Description
My_Library is a comprehensive SQL-based database system designed to manage books, authors, publishers, customers, addresses, and order processing in a virtual library environment. It supports multi-author books, multi-address customers, and detailed order tracking with delivery methods and statuses.

🏗️ Schema Overview
Core Entities:

author: Stores author details.

publisher: Information about publishers.

book_language: Stores supported languages.

book: Main book entity linked to author, language, and publisher.

book_author: Handles many-to-many relation between books and authors.

customer: Library customers.

address: Physical addresses linked to customers.

address_status: Status of each customer address (active, temporary, etc.).

country: Country list for address referencing.

Order Management Entities:

cust_order: Customer order table with delivery method and status.

order_line: Links books to specific orders (includes quantity).

shipping_method: Delivery types (e.g., express, pickup, drone).

order_status: Tracks the life cycle of an order.

order_history: Historical log of status changes for orders.

🔗 Relationships
Each book may have multiple authors (book_author).

A book is linked to one publisher, one author, and one language.

A customer can have multiple addresses with different statuses.

Each order contains one customer, shipping method, and status.

Orders can have multiple books (order_line).

order_history logs every status change over time.

🛠️ Features
Normalization: All data is well normalized to reduce redundancy.

Foreign Key Integrity: Ensures valid references between related tables.

Many-to-Many & One-to-Many Support: Author-book, customer-address, etc.

Order Tracking: From placement to delivery or cancellation.

Flexible Shipping & Address Status Management.

📥 Sample Data
The database is seeded with:

18+ authors

20 books

10 customers

Multiple order histories and shipping methods

Diverse international addresses

✅ Requirements
MySQL 8.x

MySQL Workbench (recommended for visualization and running queries)

📌 Notes
The system currently does not include user authentication or front-end integration — it’s database-only.

The cust_order table references the order_status and shipping_method tables to manage logistics.


