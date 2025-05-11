# ZoomerLauncher DBMS Project

A database management system for **ZoomerLauncher**, a fictional digital game distribution platform inspired by services like Steam and Epic Games. This project demonstrates advanced SQL features, including relational schema design, domain and semantic constraints, test plans, views, and triggers.

---

##  Project Overview

ZoomerLauncher is a platform where users (Gamers, Developers, Publishers, ProViewers) can purchase games, write reviews, and manage their library. Developers and publishers can upload and monetize games, while the system tracks transactions, system requirements, and user engagement.

This project was built as part of the CIS 422 (DBMS) course and focuses on:

- Relational database design with normalization
- Entity relationships and integrity constraints
- SQL queries for CRUD operations and analytics
- Semantic and domain-level validation
- Views and automated triggers

---

## 🗂️ Folder Structure

```bash
zoomerlauncher-dbms/
│
├── schema.sql                # All CREATE TABLE statements
├── insert_sample_data.sql    # Populates the database with example data
├── views_and_triggers.sql    # All views and triggers created for automation
├── test_plan.sql             # SQL test cases for constraints and logic
├── example_queries.sql       # Useful queries simulating real-world tasks
│
├── /docs
│   ├── ERD.png               # Entity-Relationship Diagram
│   ├── test_plan.md          # Test case explanations
│   └── use_cases.md          # Example user scenarios and workflows
│
└── README.md

