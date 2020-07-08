

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