    /* Database Created -- "library_management_system" 
         query:
                create database library_management_system;
				use library_management_system;
	*/      
    /* Table creation*/
    
    /* Publisher Table */
create table publisher(
publisher_code int primary key ,
publisher_name varchar(100) not null,
publisher_address varchar(255) not null
); 

	/* Author Table*/
create table author(
author_code int primary key,
author_subject varchar(55) not null,
author_name varchar(20) not null
);

    /*Library Table*/
create table library(
library_name varchar(55) not null,
library_address varchar(100) not null,
contact_no varchar(20) not null
);

    /* Vendor Table*/
create table vendor(
vendor_code int primary key,
vendor_name varchar(20) not null
);

    /*Books Table*/
create table books(
book_id int primary key,
book_price int not null,
publisher_code int not null,
vendor_code int not null,
author_code int not null,
library_name varchar(55) not null ,
foreign key(publisher_code) references publisher(publisher_code) ON UPDATE CASCADE ON DELETE CASCADE,
foreign key(author_code) references author(author_code) ON UPDATE CASCADE ON DELETE CASCADE,
foreign key(vendor_code) references vendor(vendor_code) ON UPDATE CASCADE ON DELETE CASCADE
);

     /*Member Table*/
create table member (
    mem_id int not null primary key,
    name varchar2(200) not null,
    address varchar2(300) not null,
    contact_no int not null,
    mem_type varchar2(100) not null
    );

    /*Employee Table*/
create table employee(emp_id int primary key
    ,emp_name varchar(200) not null,
    mobile_no int not null,
    designation varchar(100) not null
    );

     /*Admin Table*/
create table admin(
    admin_id int primary key,
    admin_name varchar(200) not null,
    contact_no int not null);

     /*Borrower Table*/
create table borrower(
    borrower_id int primary key,
    mem_id int foreign key references member(mem_id),
    book_id int foreign key references books(book_id),
    borroweddate date not null
    );

     /*Loan Table*/
create table loan(
    loan_id int primary key,
    mem_id int foreign key references member(mem_id),
    book_id int foreign key references books(book_id),
    date_out date not null,
    due_date date not null
    );

    /* --------END OF TABLE CREATION-------- */


                 
                 /* Value Insertion */
            
     /* Publisher Table */        
insert into publisher values('100','DAW Books','375 Hudson Street, New York, NY 10014'),
		('101','Viking','375 Hudson Street, New York, NY 10014'),
		('102','Signet Books','375 Hudson Street, New York, NY 10014'),
		('103','Chilton Books','Not Available'),
		('104','George Allen & Unwin','83 Alexander Ln, Crows Nest NSW 2065, Australia'),
		('105','Alfred A. Knopf','The Knopf Doubleday Group Domestic Rights, 1745 Broadway, New York, NY 10019'),		
		('106','Bloomsbury','Bloomsbury Publishing Inc., 1385 Broadway, 5th Floor, New York, NY 10018');
     /* Author Table */
INSERT INTO author VALUES
    (1, 'Literature', 'John Doe'),
    (2, 'Science', 'Jane Smith'),
    (3, 'History', 'Michael Johnson'),
    (4, 'Mathematics', 'Sarah Thompson'),
    (5, 'Art', 'David Wilson'),
    (6, 'Literature', 'Micheal Jordan');
    
    
     /* Library Table */
INSERT INTO library (library_name, library_address, contact_no)
VALUES
    ('Central Library', '123 Main Street, Cityville', '123-456-7890'),
    ('Community Library', '456 Elm Avenue, Townsville', '987-654-3210'),
    ('Public Library', '789 Oak Lane, Villagetown', '555-123-4567'),
    ('University Library', '987 Maple Drive, Campustown', '444-555-6666'),
    ('Digital Library', '555 Pine Street, Cybercity', '777-888-9999');
     
     
     /* Book Table */
INSERT INTO books VALUES
	(1000, 250, 101, 201, 1, 'grave of the fireflies'),
    (2000, 300, 102, 202, 2, 'Wings of fire'),
    (3000, 200, 103, 203, 3, 'Wolf Street'),
    (4000, 350, 104, 204, 4, 'Karmazov'),
    (5000, 400, 105, 205, 5, 'The Crime And The Punsihment');
    
     /* Vendor Table */
INSERT INTO vendor (vendor_code, vendor_name)
VALUES
    (201, 'Vendor A'),
    (202, 'Vendor B'),
    (203, 'Vendor C'),
    (204, 'Vendor D'),
    (205, 'Vendor E');    
