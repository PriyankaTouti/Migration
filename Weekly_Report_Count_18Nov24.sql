/*Total Application*/
select count(1) from FinancialApplication where ownerid = 985  --33285

/*Weekly count for application*/
select count(1) from FinancialApplication where ownerid = 985 and convert(date,createdon)>='2024-11-12' and convert(date,createdon)<='2024-11-17'  --1531

/*Salesman Count*/
select count(1) from accounts where ownerid = 985 and layoutid = 10204035     --804

/*Sub-Salesman   Count*/
select count(1) from accounts where ownerid = 985 and layoutid = 10204049     --0

/*Dealer  Count*/
select count(1) from accounts where ownerid = 985 and layoutid = 10204025     --274

/*Statuscode wise application count*/
select s.StatusCode,count(*) from FinancialApplication f
left outer join statuscodemaster s on f.OwnerId = s.OwnerID and f.StatusCodeId = s.StatusCodeID 
where f.ownerid = 985 group by s.StatusCodeID,s.StatusCode  having COUNT(s.StatusCode)>1 order by s.StatusCodeID

/*Sent for Post Approval Finalization*/
select count(1) from FinancialApplication where ownerid = 985 and statuscodeid=100024    --2682

/*Sent for Pre-Booking*/
select count(1) from FinancialApplication where ownerid = 985 and statuscodeid=100026   --63

/*Total MC Printing*/
select count(1)  from MPI_MQ_REQUEST_LOG where REQUESTTYPE = 'MC'  group by  itemid having ITEMID >1  --1224

/*Weekly MC Printing*/
select count(1)  from MPI_MQ_REQUEST_LOG where REQUESTTYPE = 'MC' and convert(date,insertedon)>='2024-11-12' and convert(date,insertedon)<='2024-11-17' group by  itemid having ITEMID >1  --36

/*Monthly MC Printing*/
select count(1)  from MPI_MQ_REQUEST_LOG where REQUESTTYPE = 'MC' and convert(date,insertedon)>='2024-11-01' and convert(date,insertedon)<='2024-11-30' group by  itemid having ITEMID >1  --170

/*TOTAL CIF Created*/
select count(1)  from MPI_MQ_REQUEST_LOG where REQUESTTYPE = 'CIF'  group by  itemid having ITEMID >1  --4143

/*Weekly CIF Created*/
select count(1)  from MPI_MQ_REQUEST_LOG where REQUESTTYPE = 'CIF' and convert(date,insertedon)>='2024-11-12' and convert(date,insertedon)<='2024-11-17' group by  itemid having ITEMID >1  --165

/*Monthly CIF Created*/
select count(1)  from MPI_MQ_REQUEST_LOG where REQUESTTYPE = 'CIF' and convert(date,insertedon)>='2024-11-01' and convert(date,insertedon)<='2024-11-30' group by  itemid having ITEMID >1  --440

/*Total LAN Created*/
select count(1)  from MPI_MQ_REQUEST_LOG where REQUESTTYPE = 'LAN'   group by  itemid having ITEMID >1  --2241

/*Weekly LAN Created*/
select count(1)  from MPI_MQ_REQUEST_LOG where REQUESTTYPE = 'LAN'  and convert(date,insertedon)>='2024-11-12' and convert(date,insertedon)<='2024-11-17' group by  itemid having ITEMID >1  --80

/*Monthly LAN Created*/
select count(1)  from MPI_MQ_REQUEST_LOG where REQUESTTYPE = 'LAN'  and convert(date,insertedon)>='2024-11-01' and convert(date,insertedon)<='2024-11-30' group by  itemid having ITEMID >1  --303

/*User Login*/
select format(dateadd(hour,08,LoginDate),'yyyy-MM-dd'),count(distinct userid)   from LoginHistory  where OwnerID = 985  and convert(date,LoginDate)>='2024-04-12' and convert(date,dateadd(hour,08,LoginDate))<='2024-11-17' 
group by format(dateadd(hour,08,LoginDate),'yyyy-MM-dd')   order by format(dateadd(hour,08,LoginDate),'yyyy-MM-dd')




