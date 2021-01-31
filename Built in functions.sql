use WFA3DotNet
create Table Student(
   rollno int not null primary key identity(1,1),
   name varchar(20),
   city varchar(20),
   fee float
   )
insert into student values('Swaroopa','Hyderabad',500.321)
insert into student values('varsha','Bangalore',2000.612)
insert into student values('Swathi','Mumbai',35000.89)
insert into student values('Sandhya','Chennai',600.412)
insert into student values('Divya','Pune',1000.56)
insert into student values('Sowji','Delhi',3000.12)
insert into Student Values('Swarupa Kavuri','Punjab',2345.67)
insert into Student Values('Aditya','Hyderabad',3276.12)
--String Functions
--LOWER
select LOWER(name) from student
--UPPER
select UPPER(name) from Student
--LEN
select LEN(name)
from Student
where rollno=1
--ASCII
select ASCII(name) from Student
--REVERSE
select REVERSE(City) from Student
--REPLICATE
select REPLICATE(name,2) from Student
--REPLACE
select  REPLACE(city,'h','a') 
from Student
where rollno=1
--LEFT
select LEFT(name,3)
from Student
where rollno=7
--RIGHT
select RIGHT(name,3)
from Student
where rollno=7
--SUBSTRING
select SUBSTRING(name,9,13)
from student
where rollno=7
--Aggregate Functions
--COUNT
select COUNT(city) as countnum
from Student
where city='Hyderabad'
--AVG
select AVG(fee) as avgcount
from Student
--SUM
select SUM(fee)
from Student
--MAX
select MAX(fee) as highestfee
from Student S
--MIN
select MIN(fee) as lowestfee
from Student
--Mathematical Functions
--CEILING
select CEILING(fee) from Student
--FLOOR
select FLOOR(fee) from Student
--ROUND
select ROUND(fee,1) from Student

select * from Student
