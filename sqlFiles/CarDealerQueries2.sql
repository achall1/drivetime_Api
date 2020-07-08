/*I should be able to see any cars that I have purchased. (user dashboard)
View all my records by my ID
*/
 select Fname,Lname,years,make,model,VIN,price,BuyStatus,OrderCar_ID from cardealer.vehicle vh 
 inner join cardealer.ordervehicle ov 
 on vh.Vehicle_ID = ov.OrderCar_ID 
 inner join cardealer.customer cu
 on cu.Cust_ID = ov.Cust_ID
 inner join person pe
 on pe.Ssn = ov.Cust_ID
 where cu.Cust_ID='147157050';
 
 /*individual customer using customerID viewing the insurace policy on cars they bought */
 select Fname,Lname,years,make,model,InsuredCar_ID,Discription,Policy_ID,PolicyStartDate,PolicyRenewalDate,MonthlyPayment
 from ordervehicle ov 
 inner join cardealer.vehicle vh 
 on vh.Vehicle_ID = ov.OrderCar_ID 
 inner join insurance_policies ip 
 on ov.OrderCar_ID = ip.InsuredCar_ID
 inner join cardealer.insurance_companies ic
 on ic.CompaniesID = ip.CompID
 inner join customer cust 
 on ov.Cust_ID = cust.Cust_ID 
 inner join person p 
 on cust.Cust_ID = p.Ssn
 where cust.Cust_ID = '602202237';

/* an individual customer  using customerID can view  a car they bought with a loan and loan amount with the finance company*/

 select Fname,Lname,years,make,model, OrderCar_ID,Discription,LoanStartDate, LoanEndlDate, LoanMonthlyPayment 
 from ordervehicle ov 
 inner join car_loans lo 
 on ov.OrderCar_ID = lo.LoanCarID
 inner join cardealer.vehicle vh 
 on vh.Vehicle_ID = ov.OrderCar_ID 
 inner join cardealer.finance_companies fc
 on fc.FinanceCompID = lo.LoanCompID
 inner join customer cust
 on ov.Cust_ID = cust.Cust_ID 
 inner join person p 
 on cust.Cust_ID = p.Ssn
 where cust.Cust_ID = '401939767';
 
 /* an individual customers  using customerID who bought a car with a cash or credit payment */
 
select Fname,Lname,years,make,model, OrderCar_ID, PayDescription,PayStartDate, PayEndDate
from ordervehicle ov 
inner join customer_payment cp 
on ov.OrderCar_ID = cp.orderCarID
inner join payment_status ps
on  ps.PayStatusID = cp.PayStatID
inner join cardealer.vehicle vh 
 on vh.Vehicle_ID = ov.OrderCar_ID 
inner join customer cust 
on ov.Cust_ID = cust.Cust_ID 
inner join person p 
on cust.Cust_ID = p.Ssn
where cust.Cust_ID = '478119892' ;

/*I should be able to see any cars that I have purchased. (user dashboard)
View all my records  using customerID
*/
 select Fname,Lname,years,make,model,VIN,price,BuyStatus,OrderCar_ID from cardealer.vehicle vh 
 inner join cardealer.ordervehicle ov 
 on vh.Vehicle_ID = ov.OrderCar_ID 
 inner join cardealer.customer cu
 on cu.Cust_ID = ov.Cust_ID
 inner join person pe
 on pe.Ssn = ov.Cust_ID
 where cu.Cust_ID='147157050';
 
 /*individual customers using customerID viewing the insurace policy on cars they bought */
 select Fname,Lname,years,make,model,InsuredCar_ID,Discription,Policy_ID,PolicyStartDate,PolicyRenewalDate,MonthlyPayment
 from ordervehicle ov 
 inner join cardealer.vehicle vh 
 on vh.Vehicle_ID = ov.OrderCar_ID 
 inner join insurance_policies ip 
 on ov.OrderCar_ID = ip.InsuredCar_ID
 inner join cardealer.insurance_companies ic
 on ic.CompaniesID = ip.CompID
 inner join customer cust 
 on ov.Cust_ID = cust.Cust_ID 
 inner join person p 
 on cust.Cust_ID = p.Ssn
 where cust.Cust_ID = '602202237';

/*  individual customers  using customerID viewing a  car they bought  with a loan and loan amount with the finance company*/
 select Fname,Lname,years,make,model,price, OrderCar_ID,Discription,LoanStartDate, LoanEndlDate, LoanMonthlyPayment 
 from ordervehicle ov 
 inner join car_loans lo 
 on ov.OrderCar_ID = lo.LoanCarID
 inner join cardealer.vehicle vh 
 on vh.Vehicle_ID = ov.OrderCar_ID 
 inner join cardealer.finance_companies fc
 on fc.FinanceCompID = lo.LoanCompID
 inner join customer cust
 on ov.Cust_ID = cust.Cust_ID 
 inner join person p 
 on cust.Cust_ID = p.Ssn
 where cust.Cust_ID = '401939767';
 
 /* view individual customers who bought a car with a cash or credit payment using customerID */
select Fname,Lname,years,make,model,price, OrderCar_ID, PayDescription,PayStartDate, PayEndDate
from ordervehicle ov 
inner join customer_payment cp 
on ov.OrderCar_ID = cp.orderCarID
inner join payment_status ps
on  ps.PayStatusID = cp.PayStatID
inner join cardealer.vehicle vh 
 on vh.Vehicle_ID = ov.OrderCar_ID 
inner join customer cust 
on ov.Cust_ID = cust.Cust_ID 
inner join person p 
on cust.Cust_ID = p.Ssn
where cust.Cust_ID = '478119892' ;



/*a customer can submit a mantenace request for cars they ordered using(the dept_ID by default Auto-service dept) 
the car-id customer ssn, issue description, and issue date*/ 
INSERT INTO `cardealer`.`maintenance_record`(`dept_ID`,`car_ID`,`Cust_ID`,`issueDate`,`issueType`,`MaintRecID`)
VALUES(default,'7','602202237','2019-11-26','alternator issu','999' );
INSERT INTO `cardealer`.`maintenance_record`(`dept_ID`,`car_ID`,`Cust_ID`,`issueDate`,`issueType`,`MaintRecID`)
VALUES(default,'7','602202237','2019-11-26','paint removal','991' );
INSERT INTO `cardealer`.`maintenance_record`(`dept_ID`,`car_ID`,`Cust_ID`,`issueDate`,`issueType`,`MaintRecID`)
VALUES(default,'7','602202237','2019-11-26','rear view mirror broken','992' );


/*a mechanic(empID is the default mechanic) from the auto service departnment can 
view the maintenance_record and submit a work-done log*/

SELECT Dname, DptNum, Branch dept_ID, car_ID, years, make, model, issueDate, issueType, MaintRecID,BuyStatus
FROM cardealer.maintenance_record mr
inner join vehicle vh
on mr.car_ID = vh.Vehicle_ID
inner join cardealer.mechanic mec
inner join department dpt
on mec.Dept_ID = dpt.DptNum ;

INSERT INTO `cardealer`.`work_done`(`empID`,`WrkRecordID`,`workDescription`)
VALUES(default,'999','worked on alternator');
INSERT INTO `cardealer`.`work_done` (`empID`,`WrkRecordID`,`workDescription`)
VALUES(default,'991','worked on paint');
INSERT INTO `cardealer`.`work_done` (`empID`,`WrkRecordID`,`workDescription`)
VALUES(default,'992','worked on mirror');

/* an admin can view the work done on a vehicle and the departnment/employee who did the maintanance */
SELECT Dname,Fname, Lname,WrkRecordID, workDescription, car_ID,issueDate, issueType,years, make, model, mileage, VIN,BuyStatus
FROM cardealer.work_done wd
inner join cardealer.maintenance_record mr
on wd.WrkRecordID = mr.MaintRecID
inner join vehicle vh
on mr.car_ID = vh.Vehicle_ID
inner join cardealer.mechanic mec
inner join department dpt
on mec.Dept_ID = dpt.DptNum
inner join person pr
on mec.Mech_ID = pr.Ssn;

/*an admin deleteing a car that is bought already(where BuyStatus ='Y') 
from the main vehicle list and all other tables where the car is found */
delete from  cardealer.vehicle vh
where  vh.Vehicle_ID = '0000' and vh.BuyStatus ='Y'; /*example: vehicleID= 9*/
select * from vehicle;