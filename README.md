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
