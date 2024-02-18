[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/JwSLLxUh)
* POM DB Migration Assignment README

** Overview

This comprehensive guide is for the POM Database Migration Assignment, detailing steps to migrate and normalize the `interests` table in a PostgreSQL database. This assignment involves transforming the `interests` table so that each student's interests are stored as an array of strings, enhancing data organization and retrieval efficiency.

** Prerequisites

- PostgreSQL installed and running on your machine.
- Basic knowledge of SQL and command-line operations.

** Initial Setup

** Clone the Repository**: Start by cloning this repository to your local machine to access the SQL scripts and documentation.
   ```
   https://github.com/ADA-GWU/2024-a1-db-migration-rmadina.git
   ```

** Database Connection**: Ensure you can connect to your PostgreSQL instance. Typically, you can use the `psql` command-line tool:
   ```
   psql -U madinarustamova -d pom_db_migration
   ```

** Migration Process

*** Creating Initial Tables

- Navigate to the cloned repository folder and locate the `POM_DB_Migration.sql` script. This script initializes the `students` and `interests` tables with basic structures.
- Execute this script in your PostgreSQL database.

*** Performing the Migration

- After initializing the tables, run the `POM_DB_Migration.sql` script to modify the `interests` table structure, converting the `interest` column to an array type and populating it with the aggregated interests per student.

** Verification

- Use the `POM_DB_Migration.sql` script to check if the migration aligns with the expected outcomes. This script queries the `interests` table to display the new array structure of interests.

* Rollback Strategy

- Should you need to revert the changes, a `sql/rollback.sql` script is provided. Running this script will drop the modified `interests` table and recreate it with the original structure.

* Documentation

- Detailed comments are included within each SQL script, guiding you through the execution and intended effects.

* Contributions

- Contributions to this project are welcome! Please fork the repository, make your changes, and submit a pull request.

* Licensing

- This project is open-sourced under the MIT License. Please see the `LICENSE` file for more details.
