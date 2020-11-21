-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "departments" (
    "dept_no" VARCHAR(40)   NOT NULL,
    "dept_name" VARCHAR(40)   NOT NULL,
	PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_emp" (
    "emp_no" VARCHAR(40)   NOT NULL,
    "dept_no" VARCHAR(40)   NOT NULL,
	PRIMARY KEY ("dept_no","emp_no")
);

CREATE TABLE "employees" (
    "emp_no" VARCHAR(30)   NOT NULL,
    "emp_title_id" VARCHAR(40)   NOT NULL,
    "birth_date" VARCHAR(30)   NOT NULL,
    "first_name" VARCHAR(40)   NOT NULL,
    "last_name" VARCHAR(40)   NOT NULL,
    "sex" VARCHAR(10)   NOT NULL,
    "hire_date" VARCHAR(40)   NOT NULL,
	PRIMARY KEY ("emp_no")
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(40)   NOT NULL,
    "title" VARCHAR(40)   NOT NULL,
	PRIMARY KEY ("title_id")
);

CREATE TABLE "salaries" (
    "emp_no" VARCHAR(20)   NOT NULL,
    "salary" INTEGER   NOT NULL,
	PRIMARY KEY ("emp_no")
);

CREATE TABLE "dept_manager" (
	"dept_no" VARCHAR(20)   NOT NULL,
    "emp_no" VARCHAR(20)   NOT NULL,
	PRIMARY KEY ("dept_no","emp_no")
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");