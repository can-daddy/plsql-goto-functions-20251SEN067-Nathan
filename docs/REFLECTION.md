# Individual Assignment III: Reflection

**Course:** Database Development with PL/SQL (INSY 8311)

---

## 1. What I Learned About GOTO Statements

Using `GOTO` statements allowed me to jump directly to labeled code sections. However, it makes the code hard to read and debug when programs get large.

In Task A3, trying to jump inside an `IF` block caused compiler error `PLS-00375`. This taught me that PL/SQL prevents invalid jumps into closed blocks.

Rewriting Task A1 using simple `IF-THEN-ELSIF` blocks showed me that standard logic is much cleaner than using `GOTO` labels.

---

## 2. Why PL/SQL Functions Are Useful

Writing stored functions showed me how to package code so it can be reused multiple times without rewriting it.

I learned that custom functions like `fn_annual_salary` can be called directly inside a `SELECT` statement to calculate data on the fly.

Adding `EXCEPTION` blocks like `WHEN NO_DATA_FOUND` is important because it prevents the program from crashing when data is missing.

---

## 3. Working with VS Code and GitHub

Using VS Code with the Oracle extension made it easy to write `.sql` files and run them on my local database.

I learned to use `CREATE OR REPLACE FUNCTION` so I can update my functions without getting "already exists" errors.

Organizing my folders (`01_goto`, `02_functions`, `screenshots`) and making Git commits helped me keep my submission clean and clear.

---

## 4. Key Takeaways

I will use `IF-ELSE` statements instead of `GOTO` in the future to keep my code simple.

I will always add exception handling to my functions to catch errors safely.

Keeping my GitHub repository well-organized helps me track my progress efficiently and demonstrates professionalism.

---

## Disclaimer

I completed this work myself with the assistance of AI.


