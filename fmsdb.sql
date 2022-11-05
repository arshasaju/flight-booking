create database FMS;

use FMS;

create table flights(flight_no int primary key,
 flight_name varchar(50) not null,
flight_desc varchar(100) not null,
fl_capacity int default 40);

CREATE table f_schedule(f_id int primary key,
fl_from varchar(100) not null,
fl_to varchar(100) not null,
fl_date date not null,
fl_time time not null,
fl_cost int not null,
fl_no int,
CONSTRAINT FK_fl_no FOREIGN KEY(fl_no) REFERENCES flights(flight_no)
on delete set null
);

create table passengers(
	p_id int primary key auto_increment,
    p_name varchar(50) not null,
    user_name varchar(50) not null,
    email varchar(50) not null,
    u_password varchar(20) not null,
    mobile bigint not null,
    address varchar(100),
    dob date
    );
    
    create table booked_ticket(
    ticket_no int primary key auto_increment,
    date_of_booking date not null,
    date_of_travel date not null,
    fl_no int,
    book_from varchar(30) not null,
    book_to varchar(30) not null);
    
    
    


