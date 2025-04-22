# 📚 Library Management System (MySQL)

This is a relational database system designed to manage books, authors, publishers, customers, and their related activities in a library.

## 🛠 Technologies Used

- **MySQL** – Open-source relational database
- **MySQL Workbench** – For database modeling and queries
- **SQL** – To structure, populate, and interact with data

---

## 🧱 Database Schema Overview

### 📘 `book`
Stores information about books in the library.

| Field         | Type         | Description                    |
|---------------|--------------|--------------------------------|
| `id`          | INT (PK)     | Unique book ID (auto-increment) |
| `title`       | VARCHAR(255) | Book title                     |
| `publisher_id`| INT (FK)     | Linked to `publisher(id)`      |
| `language_id` | INT (FK)     | Linked to `book_language(id)`  |

---

### ✍️ `author`
Stores details of book authors.

| Field   | Type         | Description           |
|---------|--------------|-----------------------|
| `id`    | INT (PK)     | Author ID (auto-increment) |
| `name`  | VARCHAR(255) | Author's full name     |

---

### 📖 `book_author`
Manages many-to-many relationships between books and authors.

| Field       | Type | Description              |
|-------------|------|--------------------------|
| `book_id`   | INT  | References `book(id)`    |
| `author_id` | INT  | References `author(id)`  |

---

### 🏢 `publisher`
Stores publishing companies.

| Field   | Type         | Description           |
|---------|--------------|-----------------------|
| `id`    | INT (PK)     | Publisher ID (auto-increment) |
| `name`  | VARCHAR(255) | Publisher name         |

---

### 🌐 `book_language`
Lists languages available in the library.

| Field          | Type          | Description           |
|----------------|---------------|-----------------------|
| `id`           | INT (PK)      | Language ID (auto-increment) |
| `language_name`| VARCHAR(100)  | Name of the language  |

---

### 🧑 `customer`
Information about registered library users.

| Field   | Type         | Description           |
|---------|--------------|-----------------------|
| `id`    | INT (PK)     | Customer ID (auto-increment) |
| `name`  | VARCHAR(255) | Full name              |
| `email` | VARCHAR(255) | Unique email address   |

---

### 🏠 `customer_address`
Maps customers to their address records and status.

| Field             | Type | Description                        |
|-------------------|------|------------------------------------|
| `customer_id`     | INT  | References `customer(id)`          |
| `address_id`      | INT  | References `address(id)` (assumed) |
| `address_status_id` | INT | References `address_status(id)` (assumed) |

---

## 📌 Features

- Manage books, authors, and publishers
- Track multiple authors per book
- Organize books by language
- Register customers and assign addresses
- Scalable for future features (borrowing, returns, reviews, etc.)

---

## 🚀 How to Use

1. Clone the project or open it in MySQL Workbench.
2. Run the SQL scripts to create and populate the database.
3. Start writing queries or build an interface on top (e.g., Flask, Django, PHP).

---

## 🔮 Future Additions (Optional)

- Book lending & returns
- Customer borrowing history
- Book availability status
- Fine tracking
- Search functionality

---


