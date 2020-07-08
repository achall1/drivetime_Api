use cardealer;
/*USED TO CONNECT TO NODE.JS USING OLD VERSION OF MYSQL AUTHANTICATION*/
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '11304att';
/*delete table commands*/
/*delete from vehicle;
delete from coupe;
delete from luxury;
delete from suv;
delete from truck;
delete from customer;
delete from person;
delete from department;
delete from auto_manufacturer;
delete from ordervehicle ;
delete from car_loans;
delete from finance_companies;
delete from insurance_companies;
delete from insurance_policies;
delete from customer_payment;
delete from payment_status;
delete from auto2autolist;
delete from autofeature ;
*/

/*ADD vehicle DATA*/

INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('2011', 'Honda','civic',2.4,'auto','black', '3000', 55000,'888665555','1');
INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('2009', 'toyota','lx',2.4,'manual','pink', '31300', 41410,'848665554','2');
INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('2002', 'bmw','dsad',2.4,'auto','blue', '30000', 11210,'88465555','3');
INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('2009', 'infinity','faf',2.4,'gray','black', '13000', 1400,'888765555','4');
INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('2000', 'fiat','ds',2.4,'auto','red', '93100', 15400,'128665555','5');
INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('2012', 'rover','rx',2.4,'manual','black', '2321', 55000,'848165555','6');
INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('2012', 'rari','fs',2.4,'auto','pink', '33212', 10000,'888677755','7');
INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('2011', 'doge','lc',2.4,'manual','black', '2133', 54100,'888633355','8');

INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('2012', 'isuzu','7t',6.1,'auto','black', '30000', 31000,'883665555','9');
INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('2019', 'ford','f1',4.4,'manual','white', '313000', 14120,'12465554','10');
INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('2012', 'nissan','senata',1.9,'auto','black', '120000', 1210,'56184655','11');
INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('2003', 'volvo','gff',3.1,'gray','red', '903000', 1040,'432765555','12');
INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('2001', 'gmc','dls',1.4,'auto','red', '123100', 10400,'12365555','13');
INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('1990', 'jeep','tu',3.4,'manual','yellow', '23321', 15000,'42126555','14');
INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('1992', 'range-rover','er',3.4,'auto','blue', '32212', 13000,'346277755','15');
INSERT INTO vehicle(years,make,model,engin,transmission,Ext_Color,mileage,price,VIN,Vehicle_ID)
VALUES('1991', 'ram','l-r',2.4,'manual','white', '213133', 14100,'93813355','16');


/*ADD TRUCK DATA 9 10 16 8*/  
INSERT INTO truck(car_ID,Size)
VALUES('12','Utility-Truck'); 
INSERT INTO truck(car_ID,Size)
VALUES('10','Mid-size');
INSERT INTO truck(car_ID,Size)
VALUES('16','Full-size');
INSERT INTO truck(car_ID,Size)
VALUES('8','Mule-Truck');

/*ADD SUV DATA*/
INSERT INTO suv(car_ID,seating_cap,off_road)
VALUES('13',8,false);
INSERT INTO suv(car_ID,seating_cap,off_road)
VALUES('14',8,true);
INSERT INTO suv(car_ID,seating_cap,off_road)
VALUES('15',6,true);
INSERT INTO suv(car_ID,seating_cap,off_road)
VALUES('11',6,false);

/*ADD COUP DATA*/
INSERT INTO coupe(car_ID,coupe_style)
VALUES('1','Business coupe');
INSERT INTO coupe(car_ID,coupe_style)
VALUES('2','Opera coupe');
INSERT INTO coupe(car_ID,coupe_style)
VALUES('5','Hatchback coupe');
INSERT INTO coupe(car_ID,coupe_style)
VALUES('8','Sports coupe');

/*ADD LUXURY DATA*/
INSERT INTO luxury(car_ID,interior_type)
VALUES('7','built-in massagers');
INSERT INTO luxury(car_ID,interior_type)
VALUES('3', 'touchscreen');
INSERT INTO luxury(car_ID,interior_type)
VALUES('4','wood and metal trim pieces');
INSERT INTO luxury(car_ID,interior_type)
VALUES('6','crystal shift knob');

/* INSERT INTO Person*/ 
 
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('kiya' , 'jalo' ,'668811410','1999-12-29' ,'87 N. Cedar Rd. Moreno Valley, MD 92553');
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('joe' , 'rogen' ,'692777833','1972-01-02','163 Clinton Drive Folsom, CA 95630');
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('holyfeald' , 'moon' ,'194546488','1990-09-02' ,'70 Crescent St. San Diego, CA 92115');
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('elam' , 'mike' ,'654364701', '1992-11-22' ,'9636 Strawberry St. Plano, TX 75025');
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('nat' , 'diaz' ,'890396518', '1982-10-12' ,'264 Cedar Swamp Road Allen, TX 75002');
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('alfanso' , 'guermo' ,'309139760','2000-03-14' ,'378 White Street McAllen, TX 78504');
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('jimmy' , 'jhone' ,'602202237','1990-10-14','5233 gold st,MD,201901');
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('tom' , 'cruz' ,'478119892','1996-09-14','40 King Dr. Austin, TX 78749');
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('juel' , 'santana' ,'401939767','1996-03-18' ,'7802 Brickell Street Dallas, TX 75224');
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('mars' , 'rover' ,'147157050', '1986-07-14' ,'279 Campfire St. Houston, TX 77093');
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('jack' , 'daniel' ,'330381515', '1996-03-11' ,'8263 Church St. Carlisle, PA 17013');
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('zumba' , 'manba' ,'714097274', '1990-05-18' ,'5 N. Kirkland St. Valparaiso, IN 46383');
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('kodak' , 'brown' ,'811602333','1970-02-12' ,'693 Arch Rd. Romulus, MI 48174');
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('james' , 'brown' ,'238877533','1960-07-22' ,'8204 Jennings Court Saint Augustine, FL 32084');
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('mike' , 'legend' ,'552139281','1966-06-29','520 Windfall Drive Brandon, FL 33510');
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('david' , 'man' ,'370390473','1975-03-11','386 Vermont St.Grovetown, GA 30813'); 
INSERT INTO `cardealer`.`person`(`Fname`,`Lname`,`Ssn`,`Bdate`,`Address`)
VALUES('Eden' , 'K' ,'212311122','1993-09-11','133 Times Square, NY 10813');

/* INSERT INTO customer*/
INSERT INTO `cardealer`.`customer`(`Cust_ID`,`phone_num`)
VALUES('147157050','(806) 659-2786');
INSERT INTO `cardealer`.`customer`(`Cust_ID`,`phone_num`) 
VALUES('401939767','(270) 640-7170');
INSERT INTO `cardealer`.`customer`(`Cust_ID`,`phone_num`)
VALUES('478119892','(214) 618-2413');
INSERT INTO `cardealer`.`customer`(`Cust_ID`,`phone_num`)
VALUES('602202237','(512) 756-6948');
INSERT INTO `cardealer`.`customer`(`Cust_ID`,`phone_num`)
VALUES('330381515','(863) 386-9878');
INSERT INTO `cardealer`.`customer`(`Cust_ID`,`phone_num`)
VALUES('309139760','(256) 410-3636');
INSERT INTO `cardealer`.`customer`(`Cust_ID`,`phone_num`)
VALUES('194546488','(936) 258-7531');
INSERT INTO `cardealer`.`customer`(`Cust_ID`,`phone_num`)
VALUES('692777833','(402) 223-5016');
INSERT INTO `cardealer`.`customer`(`Cust_ID`,`phone_num`)
VALUES('668811410','(406) 752-0189');

/* INSERT INTO employee*/
INSERT INTO `cardealer`.`employee`(`Dept_ID`,`Emp_ID`)
VALUES('851472856','212311122');
INSERT INTO `cardealer`.`employee`(`Dept_ID`,`Emp_ID`)
VALUES('851472856','654364701');
INSERT INTO `cardealer`.`employee`(`Dept_ID`,`Emp_ID`)
VALUES('724068760','890396518');
INSERT INTO `cardealer`.`employee`(`Dept_ID`,`Emp_ID`)
VALUES('724068760','552139281');
INSERT INTO `cardealer`.`employee`(`Dept_ID`,`Emp_ID`)
VALUES('724068760','370390473');
INSERT INTO `cardealer`.`employee`(`Dept_ID`,`Emp_ID`)
VALUES('314517522','811602333');
INSERT INTO `cardealer`.`employee`(`Dept_ID`,`Emp_ID`)
VALUES('314537619','238877533');
INSERT INTO `cardealer`.`employee`(`Dept_ID`,`Emp_ID`)
VALUES('314537619','714097274');

/* INSERT INTO department*/
INSERT INTO `cardealer`.`department`(`Dname`,`DptNum`,`Branch`)
VALUES('ADMINSTRATOR','851472856','12213' );
INSERT INTO `cardealer`.`department`(`Dname`,`DptNum`,`Branch`)
VALUES('AUTO-SERVICE','724068760','12214' );
INSERT INTO `cardealer`.`department`(`Dname`,`DptNum`,`Branch`)
VALUES('SALES','314517522','12215' );
INSERT INTO `cardealer`.`department`(`Dname`,`DptNum`,`Branch`)
VALUES('HUMAN-RESOURCES','314537619','12216' );

/* INSERT INTO department_branch*/

INSERT INTO `cardealer`.`department_branch`(`DptAdress`,`BranchID`)
VALUES('4445 Willard Ave #800 Chevy Chase, Maryland, 20815','12213');
INSERT INTO `cardealer`.`department_branch`(`DptAdress`,`BranchID`)
VALUES('4445 Willard Ave #320 Chevy Chase, Maryland, 20815','12214');
INSERT INTO `cardealer`.`department_branch`(`DptAdress`,`BranchID`)
VALUES('4445 Willard Ave #820 Chevy Chase, Maryland, 20815','12215');
INSERT INTO `cardealer`.`department_branch`(`DptAdress`,`BranchID`)
VALUES('4445 Willard Ave #888 Chevy Chase, Maryland, 20815','12216');


/* INSERT INTO admins*/
INSERT INTO `cardealer`.`admins`(`Admin_ID`,`Dept_ID`)
VALUES('212311122','851472856');
INSERT INTO `cardealer`.`admins`(`Admin_ID`,`Dept_ID`)
VALUES('654364701','851472856');

/* INSERT INTO manager*/
INSERT INTO `cardealer`.`manager`(`Mang_ID`,`Dept_ID`)
VALUES('654364701','314537619');

/* INSERT INTO mechanic*/
INSERT INTO `cardealer`.`mechanic`(`Mech_ID`,`Dept_ID`)
VALUES('890396518','724068760');

/* INSERT INTO autofeature */

INSERT INTO `cardealer`.`autofeature`(`descriptions`,`FeatureID`)
VALUES('LOUD speaker','001');
INSERT INTO `cardealer`.`autofeature`(`descriptions`,`FeatureID`)
VALUES('Color changes','002');
INSERT INTO `cardealer`.`autofeature`(`descriptions`,`FeatureID`)
VALUES('hydraulic presssure','003');
INSERT INTO `cardealer`.`autofeature`(`descriptions`,`FeatureID`)
VALUES('cd player','004');
INSERT INTO `cardealer`.`autofeature`(`descriptions`,`FeatureID`)
VALUES('runs on air','005');
INSERT INTO `cardealer`.`autofeature`(`descriptions`,`FeatureID`)
VALUES('runs on water','006');

/* INSERT INTO auto2autolist */
INSERT INTO `cardealer`.`auto2autolist`(`car_ID`,`autoFeatureID`)
VALUES('1','001');
INSERT INTO `cardealer`.`auto2autolist`(`car_ID`,`autoFeatureID`)
VALUES('2','002');
INSERT INTO `cardealer`.`auto2autolist`(`car_ID`,`autoFeatureID`)
VALUES('3','003');
INSERT INTO `cardealer`.`auto2autolist`(`car_ID`,`autoFeatureID`)
VALUES('4','004');
INSERT INTO `cardealer`.`auto2autolist`(`car_ID`,`autoFeatureID`)
VALUES('5','005');
INSERT INTO `cardealer`.`auto2autolist`(`car_ID`,`autoFeatureID`)
VALUES('6','006');

/* INSERT INTO auto_manufacturer */
INSERT INTO `cardealer`.`auto_manufacturer`(`Manu_name`,`car_ID`,`Country`)
VALUES('Suzuki','10','Japan');
INSERT INTO `cardealer`.`auto_manufacturer`(`Manu_name`,`car_ID`,`Country`)
VALUES('PSA Peugeot-Citroën','12',' Italy, USA');
INSERT INTO `cardealer`.`auto_manufacturer`(`Manu_name`,`car_ID`,`Country`)
VALUES('Fiat-Chrysler','15','germany');
INSERT INTO `cardealer`.`auto_manufacturer`(`Manu_name`,`car_ID`,`Country`)
VALUES('Honda Motor inc','7','Japan');
INSERT INTO `cardealer`.`auto_manufacturer`(`Manu_name`,`car_ID`,`Country`)
VALUES('Ford Motor','1','USA');
INSERT INTO `cardealer`.`auto_manufacturer`(`Manu_name`,`car_ID`,`Country`)
VALUES('General Motors','2','USA');
INSERT INTO `cardealer`.`auto_manufacturer`(`Manu_name`,`car_ID`,`Country`)
VALUES(' Hyundai/Kia','3','South Korea');
INSERT INTO `cardealer`.`auto_manufacturer`(`Manu_name`,`car_ID`,`Country`)
VALUES('Toyota Motor','4','Japan');
INSERT INTO `cardealer`.`auto_manufacturer`(`Manu_name`,`car_ID`,`Country`)
VALUES('Volkswagen Group','5','Germany');
INSERT INTO `cardealer`.`auto_manufacturer`(`Manu_name`,`car_ID`,`Country`)
VALUES('Renault-Nissan Alliance','6','France, Japan');


/* INSERT INTO ordervehicle */
INSERT INTO `cardealer`.`ordervehicle` (`Cust_ID`, `OrderCar_ID`) VALUES ('147157050', '1');   
INSERT INTO `cardealer`.`ordervehicle` (`Cust_ID`, `OrderCar_ID`) VALUES ('401939767', '13');
INSERT INTO `cardealer`.`ordervehicle` (`Cust_ID`, `OrderCar_ID`) VALUES ('478119892', '12');
INSERT INTO `cardealer`.`ordervehicle` (`Cust_ID`, `OrderCar_ID`) VALUES ('602202237', '7');

/* INSERT INTO car_loans */
INSERT INTO `cardealer`.`car_loans`(`Loan_ID`,`LoanCarID`,`LoanCompID`,
`LoanStartDate`,`LoanEndlDate`,`LoanMonthlyPayment`)
VALUES('2223','1','33333','1972-01-02','2022-01-02','500'); 
INSERT INTO `cardealer`.`car_loans`(`Loan_ID`,`LoanCarID`,`LoanCompID`,
`LoanStartDate`,`LoanEndlDate`,`LoanMonthlyPayment`)
VALUES('2224','13','33334', '2019-03-09','2023-04-07','680');

/* INSERT INTO finance_companies */
INSERT INTO `cardealer`.`finance_companies`(`FinanceCompID`,`Discription`)
VALUES('33333','Ally Auto Finance');
INSERT INTO `cardealer`.`finance_companies`(`FinanceCompID`,`Discription`)
VALUES('33334','Auto Credit Express');
INSERT INTO `cardealer`.`finance_companies`(`FinanceCompID`,`Discription`)
VALUES('33335','GM Financial');
INSERT INTO `cardealer`.`finance_companies`(`FinanceCompID`,`Discription`)
VALUES('33336','Chrysler Financial');

/* INSERT INTO insurance_companies */
INSERT INTO `cardealer`.`insurance_companies`(`Discription`,`CompaniesID`)
VALUES('Progressive Insurance','12311');
INSERT INTO `cardealer`.`insurance_companies`(`Discription`,`CompaniesID`)
VALUES('Geico Auto and Home','12312');
INSERT INTO `cardealer`.`insurance_companies`(`Discription`,`CompaniesID`)
VALUES('StateFarm Auto','12313');
INSERT INTO `cardealer`.`insurance_companies`(`Discription`,`CompaniesID`)
VALUES('NationWide Insurance','12314');

/* INSERT INTO insurance_policies */

INSERT INTO `cardealer`.`insurance_policies`(`Policy_ID`,`InsuredCar_ID`,`CompID`,
`PolicyStartDate`,`PolicyRenewalDate`,`MonthlyPayment`)
VALUES('00001','1','12314' ,'2019-04-01','2024-04-01','175' );
INSERT INTO `cardealer`.`insurance_policies`(`Policy_ID`,`InsuredCar_ID`,`CompID`,
`PolicyStartDate`,`PolicyRenewalDate`,`MonthlyPayment`)
VALUES('00002','7','12313','2019-01-19','2019-03-14','144' );
INSERT INTO `cardealer`.`insurance_policies`(`Policy_ID`,`InsuredCar_ID`,`CompID`,
`PolicyStartDate`,`PolicyRenewalDate`,`MonthlyPayment`)
VALUES('00003','12','12312','2019-03-14','2022-04-13','240' );
INSERT INTO `cardealer`.`insurance_policies`(`Policy_ID`,`InsuredCar_ID`,`CompID`,
`PolicyStartDate`,`PolicyRenewalDate`,`MonthlyPayment`)
VALUES('00004','13','12311','2019-07-14','2021-10-09','300');

/* INSERT INTO customer_payment */

INSERT INTO `cardealer`.`customer_payment`(`payID`,`CustID`,`PayStatID`,`orderCarID`)
VALUES('775','478119892','021','12');
INSERT INTO `cardealer`.`customer_payment`(`payID`,`CustID`,`PayStatID`,`orderCarID`)
VALUES('776','602202237','022','7');

/* INSERT INTO payment_status */

INSERT INTO `cardealer`.`payment_status`
(`PayStatusID`,`PayStartDate`,`PayEndDate`,`PayDescription`)
VALUES('021','2019-11-17','2019-03-14',"Cash Payment");
INSERT INTO `cardealer`.`payment_status`
(`PayStatusID`,`PayStartDate`,`PayEndDate`,`PayDescription`)
VALUES('022','2019-12-29','2019-03-14','Credit-Card payment');

