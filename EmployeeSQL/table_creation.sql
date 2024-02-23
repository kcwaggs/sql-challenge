-- creating the base tables for this challenge

-- departments table: drop table if exists, then creats the table. 
drop table if exists departments;
create table departments (
	dept_no varchar primary key,
	dept_name varchar
);

-- dept_emp table: drop table if exists, then creats the table. 
drop table if exists dept_emp;
create table dept_emp (
	emp_no int primary key,
	dept_no varchar 
);

-- dept_manager table: drop table if exists, then creats the table. 
drop table if exists dept_manager;
create table dept_manager (
	dept_no varchar primary key,
	emp_no int 
);

-- employees table: drop table if exists, then creats the table. 
drop table if exists employees;
create table employees (
	emp_no int primary key,
	emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date
);

-- salaries table: drop table if exists, then creats the table. 
drop table if exists salaries;
create table salaries (
	emp_no int primary key,
	salary int
);

-- titles table: drop table if exists, then creats the table. 
drop table if exists titles;
create table titles (
	title_id varchar primary key,
	title varchar
);
