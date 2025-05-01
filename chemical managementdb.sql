create database chemicalsystem;
use chemicalsystem;
create table products(
products_id int primary key,
name varchar(45),
price int);

create table chemical(
chemical_id int primary key,
name varchar(45),
formula varchar(45),
quantity varchar(45),
storage_location_id int,
constraint fk_storage_id foreign key(storage_location_id)
references storage_location(storage_location_id));

create table storage_location(
storage_location_id int primary key,
location_name varchar(45),
temperature_requirement varchar(45),
accesslevel varchar(45));

create table user(
user_id int primary key,
name varchar(45),
email varchar(45),
role varchar(45));

create table usagerecord(
usage_id int primary key,
chemical_id int, 
constraint fk_chemi_id foreign key(chemical_id)
references chemical(chemical_id),
user_id int,
constraint fk_use_id foreign key(user_id)
references user(user_id),
data_used varchar(45),
amount_used varchar(45));


 create table supplier(
 supplier_id int primary key,
 name varchar(45),
 contact int);
 
 create table purchaserecord(
 purchase_id int primary key,
 chemical_id int,
 constraint fk_chemic_id foreign key(chemical_id)
 references chemical(chemical_id),
 supplier_id int,
 constraint fk_sup_id foreign key(supplier_id)
 references supplier(supplier_id),
 quantity varchar(45),
 purchase_date int,
 expiry_date int);
  
   
  

