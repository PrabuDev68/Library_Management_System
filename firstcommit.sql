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
