create database employee_mgmt_db;
use employee_mgmt_db;
create table employee_management(employee_id int(10) NOT NULL,
firstName varchar(30),
lastName varchar(30),
mail_id varchar(40),
contact_number varchar(20),
gender varchar(10),
age int(4),
job_location varchar(30),
Business_Unit varchar(20),
project_id int(10),
Job_title varchar(30),
DateOfJoining date,
Salary double(7,2),
primary key(employee_id));
