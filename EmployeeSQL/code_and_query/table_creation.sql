-- creating the base tables for this challenge

-- departments table: drop table if exists, then creats the table. 
drop table if exists departments;
create table departments (
	dept_no varchar(4) primary key,
	dept_name varchar(30) not null
);

-- titles table: drop table if exists, then creats the table. 
drop table if exists titles;
create table titles (
	title_id varchar(5) primary key,
	title varchar(30) not null
);

-- employees table: drop table if exists, then creats the table. 
drop table if exists employees;
create table employees (
	emp_no int primary key,
	emp_title_id varchar(5) not null,
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar(1) not null,
	hire_date date not null,
	foreign key (emp_title_id) references titles(title_id)
);

-- salaries table: drop table if exists, then creats the table. 
drop table if exists salaries;
create table salaries (
	emp_no int primary key,
	salary int not null,
	foreign key (emp_no) references employees(emp_no)
);

-- dept_emp table: drop table if exists, then creats the table. 
drop table if exists dept_emp;
create table dept_emp (
	emp_no int,
	dept_no varchar(4),
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

-- dept_manager table: drop table if exists, then creats the table. 
drop table if exists dept_manager;
create table dept_manager (
	dept_no varchar(4) not null,
	emp_no int primary key,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);
