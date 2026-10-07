-- Tables creation script
CREATE TABLE departments(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);
CREATE TABLE employees(
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    salary NUMBER(10, 2) NOT NULL,
    hire_date DATE NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments VALUES (1, 'Human Resources');
INSERT INTO departments VALUES (2, 'Finance');
INSERT INTO departments VALUES (3, 'Engineering');
INSERT INTO departments VALUES (4, 'Sales');

INSERT INTO employees VALUES (1, 'John', 'Rugarura', 50000.00,TO_DATE('2020-01-15', 'YYYY-MM-DD'), 1);
INSERT INTO employees VALUES (2, 'Jane', 'Gwiza', 60000.00, TO_DATE('2019-03-20', 'YYYY-MM-DD'), 2);
INSERT INTO employees VALUES (3, 'Bob', 'Rusine', 70000.00, TO_DATE('2021-07-10', 'YYYY-MM-DD'), 3);
INSERT INTO employees VALUES (4, 'Alice', 'Nyiraminani', 55000.00, TO_DATE('2022-11-05', 'YYYY-MM-DD'), 4);

COMMIT;