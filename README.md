# Oracle PL/SQL Development Assignment III

**Prepared by:** Shema Can Daddy Nathan
**Reg No:** 20251SEN067
**Group B**
**Prepared For:** Education Purpose

A practical implementation of procedural database programming, control structures, and stored PL/SQL functions using Oracle Database 21c and Visual Studio Code.

---

## 1. Development Tools & Environment

This project was built and executed using **Visual Studio Code** paired with the **Oracle SQL Developer Extension**.

### Why VS Code?

* **Unified Workflow:** Writing scripts, tracking version control with Git, and executing database queries within a single application eliminates context switching.
* **Developer Experience:** Native code highlighting, quick file navigation, and integrated terminal controls streamline multi-script database development.
* **Feature Parity:** The Oracle SQL Developer extension for VS Code provides the exact same execution, schema navigation, and compiler feedback capabilities as standalone GUI tools like Oracle SQL Developer or TOAD.

> **Recommendation:** Using the Oracle extension in VS Code I can highly recommended it to developers who prefer an all-in-one workspace without sacrificing database connectivity features.

---

## 2. Setup & Connection Guide

Follow these steps to configure your environment and run the project scripts:



### Step 1: Establish Database Connection in VS Code

1. Open the **Oracle Database** extension tab in VS Code.
2. Click **Add Connection (`+`)** and enter the following settings:
* **Connection Name:** `oracle_in_learning`
* **User Type:** `Basic`
* **Username:** `system` (or your assigned schema user)
* **Password:** *(your password)*
* **Hostname:** `localhost`
* **Port:** `1521`
* **Connection Type:** `SID`


3. Click **Test Connection**. Once successful, save the connection.

### Step 2: Script Execution Order

Open an active SQL Worksheet on your connection and execute the files in this sequence:

```text
00_setup/
  └── create_tables.sql      <-- Run first (creates departments & employees)
01_goto/
  ├── A1_number_classifier.sql
  └── A3_illegal_goto.sql
02_functions/
  ├── B1_fn_annual_salary.sql
  ├── B2_fn_years_of_service.sql
  ├── B3_fn_calculate_tax.sql
  ├── B4_fn_dept_name.sql
  └── C1_fn_validate_payroll.sql
03_tests/
  ├── B5_functions_in_select.sql
  └── test_functions.sql    <-- Tests boundary conditions & exceptions

```

---

## 3. Common Technical Challenges & Solutions

| Challenge | Root Cause | Solution |
| --- | --- | --- |
| **`DBMS_OUTPUT` displays nothing** | Script output is disabled by default in database sessions. | Add `SET SERVEROUTPUT ON;` at the top of your script or enable DBMS Output in the extension settings. |
| **Compiler Error `PLS-00375**` | Attempting to `GOTO` a label located inside an `IF` statement or inner block from outside. | Remove the illegal `GOTO` jump and rely on standard conditional blocks (`IF-THEN-ELSE`) to enter code scope naturally. |
| **Object Name Collision (`ORA-00955`)** | Re-running creation scripts on tables or functions that already exist. | Use `CREATE OR REPLACE FUNCTION` for PL/SQL routines, and run table drop commands (`DROP TABLE ... CASCADE CONSTRAINTS`) before recreating tables. |
| **Uncaught Null Data (`NO_DATA_FOUND`)** | Querying a non-existent ID using `SELECT ... INTO`. | Wrap single-row queries with an `EXCEPTION` block handling `WHEN NO_DATA_FOUND`. |

---

## 4. Business & Functional Perspective

In production environments, database integrity and processing efficiency are critical. This project demonstrates key enterprise database concepts:

* **Centralized Business Logic:** Mathematical rules (such as progressive tax brackets and annual salary calculations) are embedded directly inside the database as stored functions. This guarantees consistent results across web, mobile, and desktop client applications.
* **Data Validation Engine:** The payroll validator (`fn_validate_payroll`) acts as a safeguard, catching negative salaries, missing records, and invalid future hire dates before payroll processing occurs.
* **Defensive Error Handling:** Catching execution exceptions gracefully prevents database crashes, returning standard status flags (`INVALID: Employee Not Found`) to front-end systems.

---

## 5. Repository Structure

```text
.
├── 00_setup/          # DDL scripts for base database tables
├── 01_goto/           # Control flow & branch logic scripts
├── 02_functions/      # Standalone PL/SQL business functions
├── 03_tests/          # Verification & SQL integration tests
├── docs/              # Reflection and submission documentation
└── screenshots/       # Execution proof & output visual logs

```