# Library Management System – Database Schema

## Overview
This project is a **Library Management System** database designed in **MySQL**.  
It manages information about books, authors, publishers, members, staff, and loan records.  
The database schema is normalized and includes all necessary relationships with primary and foreign keys.

---

## Entities
- **Author** – Stores author details
- **Publisher** – Stores publisher details
- **Book** – Stores book details with publisher link
- **Book_Author** – Mapping table for the many-to-many relationship between books and authors
- **Member** – Stores library member details
- **Staff** – Stores library staff details
- **Loan** – Tracks which member borrowed which book and which staff member issued it

---

## Relationships
- A **Book** can have multiple **Authors** (many-to-many)
- A **Book** belongs to one **Publisher**
- A **Member** can borrow multiple **Books**
- A **Staff** member issues books to members

---

## Files in This Repository
- **`schema.sql`** – SQL script to create the complete database schema  
- **`ERDiagram.png`** – Entity-Relationship diagram showing the database structure  
- **`README.md`** – Project explanation and usage guide

---

## How to Use
1. Open **MySQL Workbench**
2. Create the database by running:
   ```sql
   CREATE DATABASE librarymanagementdb;
   USE librarymanagementdb;
   
## Task 2 – Data Insertion & NULL Handling

In this task, I:
- Inserted sample data into all tables (`Author`, `Publisher`, `Book`, `Book_Author`, `Member`, `Staff`, `Loan`)
- Added records with `NULL` values to test handling of missing data
- Used `SELECT` queries to find records with `NULL`
- Updated records (e.g., fixing emails, marking books as returned)
- Deleted records while respecting foreign key constraints
- Resolved foreign key issues by deleting dependent records first

### File Added
- `data_insertion.sql` → Contains all `INSERT`, `UPDATE`, `DELETE`, and NULL-handling queries

### How to Run
1. Open MySQL Workbench
2. Select `librarymanagementdb` database
3. Open `data_insertion.sql`
4. Execute all queries
5. Use:
   ```sql
   SELECT * FROM table_name;
   
# Library Management System – Task 3

## Overview
This task focuses on writing `SELECT` queries to retrieve and filter data from the library database.

## Covered Topics
- Selecting all columns (`SELECT *`)
- Selecting specific columns
- Filtering with `WHERE`, `AND`, `OR`
- Pattern matching with `LIKE`
- Range filtering with `BETWEEN`
- Sorting results with `ORDER BY`
- Limiting results with `LIMIT`
- Using column aliases (`AS`)
- Showing unique results with `DISTINCT`

## File Added
- `task3_select_queries.sql`

## How to Run
1. Open MySQL Workbench
2. Select `librarymanagementdb` database
3. Run queries from `task3_select_queries.sql`
4. View results in the output grid

## Task 4 – Aggregate Functions & Grouping

In this task, I practiced:
- Using aggregate functions (`SUM`, `COUNT`, `AVG`, `MIN`, `MAX`)
- Grouping results with `GROUP BY`
- Filtering groups with `HAVING`
- Ordering grouped results

### File Added
- `task4_aggregate_grouping.sql`

# Library Management System – Task 5

## Overview
This task focuses on combining data from multiple tables using different SQL join types.

## Covered Topics
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN (via UNION in MySQL)
- Joining more than two tables
- Self joins

## File Added
- `task5_sql_joins.sql`

## How to Run
1. Open MySQL Workbench
2. Select `librarymanagementdb` database
3. Run queries from `task5_sql_joins.sql`
4. View results in the output grid

# Library Management System – Task 6

## Overview
This task focuses on writing SQL subqueries and nested queries to perform advanced filtering and data retrieval.

## Covered Topics
- Scalar subqueries
- Correlated subqueries
- Subqueries in WHERE (IN, EXISTS)
- Subqueries in SELECT
- Derived tables (subquery in FROM)
- Filtering results from subqueries

## File Added
- `task6_subqueries.sql`

## How to Run
1. Open MySQL Workbench
2. Select `librarymanagementdb` database
3. Run queries from `task6_subqueries.sql`
4. View results in the output grid

# Library Management System – Task 7

## Overview
This task focuses on creating and using SQL views to simplify queries, improve readability, and secure data.

## Views Created
1. **BooksWithAuthors** – Shows all books with their authors.
2. **ActiveLoans** – Displays currently borrowed books with member and staff details.
3. **BooksPerPublisher** – Counts how many books each publisher has.
4. **FrequentBorrowers** – Lists members who borrowed more than one book.

## File Added
- `task7_views.sql`

## How to Run
1. Open MySQL Workbench
2. Select `librarymanagementdb` database
3. Run queries from `task7_views.sql`
4. Use `SELECT * FROM view_name;` to view the results.
