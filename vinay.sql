use car_showroom;
describe customer1;
alter table customer1 modify column email varchar(20);
#display email after removing the domain name extension ".com" from emails ofnthe customer 
SELECT 
    TRIM(TRAILING '.com' FROM emai)
FROM
    customer1;


select*from customer1 where emai like "%mail%";
 create database programe;
 use programe;
 create table dance(sno int,name varchar(13),class varchar(12));
 
 insert into dance values
 (1,"astha",'7a'),
(2, "rahul", '7a'),
(3, "priya", '7b'),
(4, "rohan", '7b'),
(5, "neha", '8a'),
(6, "amit", '8a'),
(7, "sneha", '8b'),
(8, "karan", '8b'),
(9, "pooja", '9a'),
(10, "arjun", '9a');
select*from dance;

insert into music values
(1,"rahul",'7a'),
(2, "vijay", '7a'),
(3, "puneet", '7b'),
(4, "rohed", '7b'),
(5, "nihal", '8a'),
(6, "amitabh", '8a'),
(7, "shaurya", '8b'),
(8, "karanveer", '8b'),
(9, "pragyan", '9a'),
(10, "arun", '9a');
select *from music;

#display all possibe combo of tupple of relation dance and music.
select*from dance,music;
#from the all possible combo of tuple of reations dance and music display only those rows such that the attri name in both have the same values.

select*from dance D,music M
where D.name=M.name;


select*from dance D,music M
where D.sno=M.sno;

select*from dance d join music m on 
d.sno=m.sno;

select*from music natural JOIN dance;










CREATE TABLE guardian2(
    guardianid INT,
    guardianname VARCHAR(20),
    contactnumber VARCHAR(15),
    address varchar(20)
);





                    database mysql


INSERT INTO student (Sname, sdateofbirth, rollnumber, guid)
VALUES
('Rahul Sharma', '2005-01-15', 101, 'GID00000001'),
('Priya Singh', '2005-03-22', 102, 'GID00000002'),
('Amit Kumar', '2004-11-10', 103, 'GID00000003'),
('Sneha Verma', '2005-06-18', 104, 'GID00000004'),
('Rohan Gupta', '2004-09-25', 105, 'GID00000005'),
('Neha Kapoor', '2005-02-14', 106, 'GID00000006'),
('Karan Mehta', '2004-12-05', 107, 'GID00000007'),
('Pooja Yadav', '2005-07-30', 108, 'GID00000008'),
('Arjun Malhotra', '2005-04-12', 109, 'GID00000009'),
('Anjali Sharma', '2004-10-20', 110, 'GID00000010');
select*from student;

INSERT INTO guardian2 (guardianname, guardianid, contactnumber, address)
VALUES
('Rajesh Sharma', 1, '9876543210', 'Delhi'),
('Sunita Singh', 2, '9876543211', 'Mumbai'),
('Anil Kumar', 3, '9876543212', 'Jaipur'),
('Meena Verma', 4, '9876543213', 'Noida'),
('Suresh Gupta', 5, '9876543214', 'Gurgaon'),
('Kavita Kapoor', 6, '9876543215', 'Chandigarh'),
('Manoj Mehta', 7, '9876543216', 'Lucknow'),
('Rekha Yadav', 8, '9876543217', 'Agra'),
('Vijay Malhotra', 9, '9876543218', 'Pune'),
('Poonam Sharma', 10, '9876543219', 'Bhopal');
select*from guardian2;
INSERT INTO employee1 (empno, ename, esalary, bonus, depid)
VALUES
(101, 'Rahul', 35000, 5000, 'DEP01'),
(102, 'Priya', 42000, 6000, 'DEP02'),
(103, 'Amit', 38000, 4500, 'DEP01'),
(104, 'Sneha', 45000, 7000, 'DEP03'),
(105, 'Rohan', 32000, 4000, 'DEP02'),
(106, 'Neha', 50000, 8000, 'DEP03'),
(107, 'Karan', 40000, 5500, 'DEP01'),
(108, 'Pooja', 36000, 5000, 'DEP04'),
(109, 'Arjun', 47000, 6500, 'DEP02'),
(110, 'Anjali', 43000, 6000, 'DEP04');
select*from employee1;

CREATE TABLE attendence(
    name VARCHAR(20),
    status VARCHAR(12),
    dob DATE,
    roll INT,guid varchar(15)
);
INSERT INTO attendence (name, status, dob, roll)
VALUES
('Rahul Sharma', 'Present', '2005-01-15', 101),
('Priya Singh', 'Present', '2005-03-22', 102),
('Amit Kumar', 'Absent', '2004-11-10', 103),
('Sneha Verma', 'Present', '2005-06-18', 104),
('Rohan Gupta', 'Absent', '2004-09-25', 105),
('Neha Kapoor', 'Present', '2005-02-14', 106),
('Karan Mehta', 'Present', '2004-12-05', 107),
('Pooja Yadav', 'Absent', '2005-07-30', 108),
('Arjun Malhotra', 'Present', '2005-04-12', 109),
('Anjali Sharma', 'Present', '2004-10-20', 110);
select*from attendence


-- data manipulation...

set sql_safe_updates=0;
update student
set guid=101010101010
where rollnumber=103;
set sql_safe_updates=1;

set sql_safe_updates=0;
update guardian2
set address='wz-68,azad avenue',
contactnumber=9010125455
where guardianid=4;
set sql_safe_updates=1;



use car_showroom;
show tables;
show databases;
select*from inventoory;
describe inventoory;
#insert a new car into inventoory table with
insert into inventoory values('d007','virtus',1100000,'hybrid','2026','petrol');
select *from employeee2;
alter table inventoory drop GST;

insert into inventoory values
('d008','camry',4500000,'rwx','2019','diesel'),('d009','corolla',3000000,'alt','2015','diesel'); 
#dislay all records from the inventoory--
#display only car id or carme and price FRON INVENTOORY--
select carid,carname,price from inventoory;
#display distinct carid from salees table
select distinct carid from salees;
select distinct fueltype from inventoory;
select carname,price as car_price from inventoory;
select empname as employee_name from employeee2;
#display all cars price graeter tahn 600000
select price from inventoory where price>600000;
#display all employe whose saary greater than 30000
select salary from employeee2 where salary>30000;
select salary from employeee2 where salary>=30000;
select carname , fueltype from inventoory;
select*from employeee2;
select *from inventoory where model='vxi';
select*from employeee2 where designation='accountant';
select*from inventoory where price between 500000 and 700000;
select*from inventoory where yearmanu between 2020 and 2026;
#DISPLAY CARPRICE LESSER THAN 500000 AND GREATER THAN 700000
select*from inventoory where price<500000 OR PRICE>700000;
select*from customer1;
select*from employeee2 where salary is  not null; 




# diaplay all cars in ascending order by
select*from inventoory order by price;

select*from inventoory order by price desc;

select*from inventoory order by yearmanu;
select*from employeee2 order by empname;
select*from employeee2 order by salary;

select count(*)from customer1;
select salary, count(*)from employeee2
group by salary;

select count(*)from salees;

# find the sum of all sale price;

select sum(saleprice) from salees;
select max(saleprice)from salees;
select min(saleprice)from salees;
select avg(saleprice)from salees;
select sum(salary)from employeee2;

#group cars by model and count each model 
select yearmanu,model,fueltype ,count(*) from inventoory
group by model,yearmanu,fueltype;

select model,count(*) from inventoory
group by model;
#group employees by designation and count.

select designation,count(*) from employeee2
group by designation;
select*from salees;
#group sales by payment and count

select paymode,count(*) from salees
group by paymode;

#diaplay models more than 1 car in inventoory

select model,count(*) from inventoory
 group by model having count(*)<=1;
 
#display   
  -- group by ( to collect data across multiple rows and group the result by one or more column)
  -- use aggregate function count(),sum,max,min,avg,
  -- having clause used to filter group data and aggregate result. while the where clause filter individual rows before they are grouped and having clause filters the summary 
  -- rows after the group by clause has been applied.alter
  select price,count(*) from inventoory group by price having price>500000;
 

  select model,price,count(*) from inventoory group by price,model having price>500000;
  
    


  # where clause filter individual ,raw roes directly from table
   # group by after row id filterd gather identical data from the remaining rows into summary groups.
   
   
   -- having clause (after datais groupes) filter the summarised groups based on a specified condition.
   -- yes it is desined to ppecified to test aggregate criteria)
  use car_showroom;
  # diaplay carname in upper case
  select upper(carname),(price*.10)as dicount_price from inventoory;
  
  select upper(carname),(price*.10)as dicount_price from inventoory where model='LXI'; 
  
  #display the lenght of each customer name
  select *from customer1;
  select custname,length(custname) from customer1;
  
  #display the first three char of ech carname. 
  
  select carname,left(carname,3) from inventoory;
  
  select carname,right(carname,3) from inventoory;
  
#display the day name of employeee (DOB) 
  
  select empname, dayname(dob) from employeee2;
  #diaplay the month name of employee joining date

 select empname, monthname(doj)from employeee2;
 select*from salees;
 -- display the year of sale:
select invoiceno,year(saledate) from salees;
select invoiceno,monthname(saledate) from salees;
select invoiceno,dayname(saledate) from salees;
select invoiceno,week(saledate) from salees;
select invoiceno,weekday(saledate) from salees;
select invoiceno,weekofyear(saledate) from salees;
select invoiceno,day(saledate) from salees;

select now();

select invoiceno,month(saledate)from salees;

# dialay all deTAILS WHERE EMPLOYEE NAME CONTAINS 'A'

SELECT *FROM employeee2 where empname like'%A%';
SELECT *FROM employeee2 where empname like'_a%';





#              JOIN OPERATION....( used to combine the no. 

#diaplay sale with car details usin join
select s.*,i.carname,i.model,i.fueltype from salees s
join inventoory i on s.carid=i.carid;
select*from salees;
select*from employeee2;


select s.*,e.empname,e.dob,e.doj,e.designation,e.salary from salees s
join employeee2 e on s.empid=e.empid;
select*from salees;
select*from employeee2;


select e.*, s.saleprice,s.invoiceno from employeee2 e join salees s on e.emloyeee2!=s.salees;                                                                   


# display sales with using customer detail using join.

select s.*,e.dob,e.salary from salees  s
join employeee2 e on  s.empid=e.empid;

# display sales with emp with detail using natural join 

select*from salees natural join employeee2;

#display all sales wih customer name nd emp name 
use car_showroom;
select s.invoiceno,c.custname,e.empname,s.saleprice,e.salary from salees s
join customer1 c on s.custid=c.custid
join employeee2 e on s.empid=e.empid;
select *from inventoory;
-- dislay carname and total sales amount of each car
select i.carname,sum(s.saleprice) as total_sales from inventoory i
join salees s on i.carid=s.carid group by carname;


select i.carname,avg(s.saleprice) as total_sales from inventoory i
join salees s on i.carid=s.carid group by carname;

select i.carname,min(s.saleprice) as total_sales from inventoory i
join salees s on i.carid=s.carid group by carname;

select i.carname,max(s.saleprice) as total_sales from inventoory i
join salees s on i.carid=s.carid group by carname;







-- display custname and total purchase amount
select c.custname, sum(s.saleprice) as total_purchase from customer1 c  
join salees s on c.custid=s.custid group by c.custname; ;

#display  sales with car detail where price > 600000
select s.* ,i.carname , i.price from salees s
join inventoory i on s.carid=i.carid where i.price>600000;

select *from customer1;
select s.* ,i.carname , i.price from salees s
join inventoory i on s.carid=i.carid where i.price!=600000;


select s.* ,i.carname , i.price from salees s
join inventoory i on s.carid=i.carid where i.price<600000;

select s.* ,i.carname , i.price from salees s
join inventoory i on s.carid=i.carid where i.price>=600000;

select s.* ,i.carname , i.price from salees s
join inventoory i on s.carid=i.carid where i.price<=600000;

#dispaly custmer who purchase baleno cars
select distinct c.custname,c.phone from customer1 c
join salees s on c.custid=s.custid
join inventoory i on s.carid=i.carid where i.carname='baleno';


select distinct c.custname,c.phone from customer1 c
join salees s on c.custid=s.custid
join inventoory i on s.carid=i.carid where i.carname='baleno';

select*from employeee2;

-- display cars where carname starts with a
select*from inventoory where carname like'A%';

-- select car that were sold in 2025

select distinct i.carname ,i.price,i.model from inventoory i
join salees s on i.carid=s.carid

where  month (s .saledate)=2025;
# diaplay customer  who have purchased more than 1 car
select c.custname,count(s.invoiceno) as carcount from customer1 c
join salees s on c.custid=s.custid
group by custname having count(s.invoiceno)=1;

# display employe who made maximum sale amount

select e.empname,sum(s.saleprice)as totalsales from employeee2 e
join salees s on e.empid=s.empid
group by empname order by
totalsales asc limit 1;

#display most expensive car that was sold
select i.carname ,i.price from inventoory i join salees s
 on i.carid=s.carid order by i.price desc limit 1;

-- display all the cars with their sale count (including car not sold
select i.carname, count(s.carid) as timesold from inventoory i
left join salees s on i.carid=s.carid group by i.carname ;

# display paymode  with maximum sales amount

select paymode ,sum(saleprice) as total_amount
from salees group by paymode order by total_amount desc limit 3

 
  
select*from customer1 where custname like '%a';

#finf employee whose name starts with a or s and salary>30000

select*from employeee2 where empname like 'a%' or empname like's%'
and salary<30000;
select*from salees;
# find the sales where the sprice is > 600000 or paymode is card

select * from salees where saleprice>600000 and paymode='card';

-- FIND THE CAR THAT WERE NOT SOLD IN 2019
SELECT* FROM INVENTOORY I WHERE I.CARID NOT IN(
SELECT DISTINCT CARID FROM SALEES S WHERE YEAR(SALEDATE)=2019);
 
 SELECT *
FROM SALEES
WHERE SALEDATE != 2019;
  

  
  # find customer who have not purchased any car yet
  select*from customer1 where custid not in(select
  distinct custid from salees);
  # find employee who made no sale
  
  select*from employeee2 where empid not in
  (select distinct empid from salees);
  
  -- find cars that have been sold at least twice
  
  select carid,count(*) as salecount from salees group by carid
  having count(*)<=2;


































































