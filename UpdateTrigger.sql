use WFA3DotNet
create table PastEmpTable(
 empid int,
 ename varchar(20),
 esal float,
 dol datetime default getdate( ),
 )
alter trigger trgAfterUpd on EmployeeTab
after update
as
declare
@empid int,
 @ename varchar(20),
 @esal float,
 @dol datetime 
Begin
select @empid=empid,@ename=empname,@esal=salary,@dol=getdate() from inserted
 insert into PastEmpTable(empid,ename,esal,dol) values(@empid,@ename,@esal,@dol)
 print 'After update trigger fired on EmpTable'
 End

update EmployeeTab set empname='Varshini',salary=22000
where empid=11
select * from EmployeeTab
select * from PastEmpTable
