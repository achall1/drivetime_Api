USE cardealer;
/*USED TO CONNECT TO NODE.JS USING OLD VERSION OF MYSQL AUTHANTICATION*/
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '11304att';
SET FOREIGN_KEY_CHECKS = 0;
/* 
Create table */  
CREATE TABLE IF NOT EXISTS PERSON
(   Fname varchar(15) NOT NULL,
	Lname VARCHAR(15) NOT NULL,
	Ssn CHAR(9) NOT NULL,
	Bdate	DATE,
	Address VARCHAR(30),
	PRIMARY KEY (Ssn)
);
CREATE TABLE IF NOT EXISTS CUSTOMER
(   Cust_ID char(9) not null,
	phone_num CHAR(15) ,
	PRIMARY KEY (Cust_ID),
    FOREIGN KEY(Cust_ID) REFERENCES PERSON(Ssn)  
);
CREATE TABLE IF NOT EXISTS EMPLOYEE
(   Dept_ID char(9) not null,
	Emp_ID  CHAR(9) not null,
	PRIMARY KEY (Dept_ID,Emp_ID),
    FOREIGN KEY(Emp_ID) REFERENCES PERSON(Ssn)  
);
CREATE TABLE IF NOT EXISTS ADMINS
(   Admin_ID char(9) not null,
	Dept_ID  CHAR(9) not null,
	PRIMARY KEY (Admin_ID),
	FOREIGN KEY(Admin_ID) REFERENCES PERSON(Ssn),
    FOREIGN KEY(Dept_ID) REFERENCES DEPARTMENT(DptNum)  
);
CREATE TABLE IF NOT EXISTS MECHANIC
(   Mech_ID char(9) not null,
	Dept_ID  CHAR(9) not null,
	PRIMARY KEY (Mech_ID),
	FOREIGN KEY(Mech_ID) REFERENCES PERSON(Ssn) ,
    FOREIGN KEY(Dept_ID) REFERENCES DEPARTMENT(DptNum)  
);
CREATE TABLE IF NOT EXISTS MANAGER
(   Mang_ID char(9) not null,
	Dept_ID  CHAR(9) not null,
	PRIMARY KEY (Mang_ID),
    FOREIGN KEY(Mang_ID) REFERENCES PERSON(Ssn) ,
    FOREIGN KEY(Dept_ID) REFERENCES DEPARTMENT(DptNum)  
);
create table if not exists DEPARTMENT
(   Dname varchar(15) not null,
    DptNum char(9) not null,
    Branch char(5) ,
    primary key(DptNum),
    foreign key(Branch) REFERENCES DEPARTMENT_BRANCH(BranchID)
);
create table if not exists DEPARTMENT_BRANCH
(   DptAdress varchar(75) not null,
    BranchID char(5) not null,
    primary key(BranchID)
);
create table if not exists WORKS_FOR
(	
	DepNum varchar(15) not null,
	Empl_ID char(9) not null,
    primary key(DepNum,Empl_ID),
	foreign key(DepNum) REFERENCES DEPARTMENT(DptNum),
    foreign key(Empl_ID)  REFERENCES PERSON(Ssn)  
);
create table if not exists MANAGES
(	
	Manger_ID char(9) not null,
	Dept_ID char(9) not null,
    DepName varchar(15) not null,
    primary key(Manger_ID,Dept_ID),
	foreign key(Dept_ID) REFERENCES DEPARTMENT(DptNum),
    foreign key(Manger_ID)  REFERENCES PERSON(Ssn)   
);

CREATE TABLE IF NOT EXISTS VEHICLE
(   years year NOT NULL,
	make VARCHAR(15) NOT NULL,
    model varchar(15) NOT NULL,
	engin VARCHAR(15) NOT NULL,
    transmission varchar(15) NOT NULL,
	Ext_Color VARCHAR(15) NOT NULL,
    mileage int  NOT NULL,
    price int not null,
	VIN CHAR(14) NOT NULL,
	Vehicle_ID	CHAR(10) NOT NULL,
    BuyStatus char(1) not null default 'N',
	PRIMARY KEY (Vehicle_ID)  
);
CREATE TABLE IF NOT EXISTS orderVehicle
(   Cust_ID char(9) not null,
	OrderCar_ID CHAR(10) NOT NULL ,
	PRIMARY KEY (OrderCar_ID,Cust_ID),
    FOREIGN KEY(Cust_ID) REFERENCES PERSON(Ssn),
    FOREIGN KEY(OrderCar_ID) REFERENCES VEHICLE(Vehicle_ID) on delete cascade on update cascade
);
create table if not exists TRUCK
(	car_ID	CHAR(10) NOT NULL,
    Size VARCHAR(15) NOT NULL,
    primary key(car_ID),
    foreign key(car_ID) references VEHICLE(Vehicle_ID) on delete cascade on update cascade
);
create table if not exists LUXURY
(	car_ID	CHAR(10) NOT NULL,
    interior_type VARCHAR(35) NOT NULL,
    primary key(car_ID),
    foreign key(car_ID) references VEHICLE(Vehicle_ID ) on delete cascade on update cascade
);
create table if not exists SUV
(	car_ID	CHAR(10) NOT NULL,
    seating_cap VARCHAR(15) NOT NULL,
    off_road boolean,
    primary key(car_ID),
    foreign key(car_ID) references VEHICLE(Vehicle_ID ) on delete cascade on update cascade
);
create table if not exists COUPE
(	car_ID	CHAR(10) NOT NULL,
    coupe_style VARCHAR(30) NOT NULL,
    primary key(car_ID),
    foreign key(car_ID) references VEHICLE(Vehicle_ID ) on delete cascade on update cascade
);
create table if not exists AUTO_Manufacturer
(	Manu_name varchar(30) NOT NULL,	
	car_ID	CHAR(10) NOT NULL,
	Country varchar(15) NOT NULL,
    primary key(car_ID) ,
    foreign key(car_ID) references VEHICLE(Vehicle_ID ) on delete cascade on update cascade
);
create table if not exists Auto2AutoList
(	car_ID	CHAR(10) NOT NULL,
	autoFeatureID varchar(25) NOT NULL,
    primary key(car_ID,autoFeatureID),
    foreign key(car_ID) references VEHICLE(Vehicle_ID ) on delete cascade on update cascade,
    foreign key(autoFeatureID) references AutoFeature(FeatureID) 
);
create table if not exists AutoFeature
(	descriptions varchar(30) NOT NULL,
	FeatureID char(5) NOT NULL,
    primary key(FeatureID)
);
CREATE TABLE IF NOT EXISTS PURCHASE_RECORD
(   purchase_ID CHAR(7) NOT NULL,
	car_ID CHAR(10) NOT NULL,
	DptId CHAR(9) NOT NULL,
    CustomerID char(9) not null,
	Purchased_date	DATE,
	PRIMARY KEY (purchase_ID),
    FOREIGN KEY(CustomerID) REFERENCES PERSON(Ssn), 
    foreign key(car_ID) references VEHICLE(Vehicle_ID ) on delete cascade on update cascade,
	FOREIGN KEY(DptId) REFERENCES DEPARTMENT(DptNum) 
);

create table if not exists RENTAL_RESERVATION_RECORD
(	Rreservation_ID CHAR(9) NOT NULL,	
	activeRental  boolean NOT NULL,
	car_ID	CHAR(10) NOT NULL,
	Cust_ID char(9) not null,
    deptID CHAR(9) NOT NULL,
	insurancID CHAR(9) NOT NULL,	
    rentalDate date not null,
	description VARCHAR(35) NOT NULL,
    primary key(Rreservation_ID),
    FOREIGN KEY(deptID) REFERENCES DEPARTMENT(DptNum) ,
    foreign key(car_ID) references VEHICLE(Vehicle_ID ) on delete cascade on update cascade,
    FOREIGN KEY(insurancID) REFERENCES INSURANCE(insurance_ID),
    FOREIGN KEY(Cust_ID) REFERENCES PERSON(Ssn)
);
create table if not exists BUY_ORDER
(	order_ID CHAR(9) NOT NULL,	
	dept_ID	CHAR(9) not null,
    car_ID	CHAR(10) NOT NULL,
    AdminID char(9) not null,
    Cust_ID char(9) not null,
	orderDate date NOT NULL,
    primary key(order_ID),
    FOREIGN KEY(Cust_ID) REFERENCES PERSON(Ssn),
	FOREIGN KEY(dept_ID) REFERENCES DEPARTMENT(DptNum) ,
    FOREIGN KEY(AdminID) REFERENCES admins(Admin_ID) ,
    foreign key(car_ID) references VEHICLE(Vehicle_ID ) on delete cascade on update cascade
);
create table if not exists MAINTENANCE_RECORD
(		
	dept_ID	CHAR(9) default '724068760',
    car_ID	CHAR(10) NOT NULL,
    Cust_ID char(9) not null,
	issueDate date NOT NULL,
    issueType varchar(30) not null,
    MaintRecID char(3) unique,
    primary key(car_ID , MaintRecID),
    FOREIGN KEY(Cust_ID) REFERENCES PERSON(Ssn) ,
	FOREIGN KEY(dept_ID) REFERENCES DEPARTMENT(DptNum) ,
    foreign key(car_ID) references VEHICLE(Vehicle_ID ) on delete cascade on update cascade
);
create table if not exists WORK_DONE
(		
    empID	CHAR(10) default '890396518',
    WrkRecordID char(3) not null,
    workDescription varchar(30) not null,
    primary key(WrkRecordID),
	FOREIGN KEY(WrkRecordID) REFERENCES MAINTENANCE_RECORD(MaintRecID),
    FOREIGN KEY(empID) REFERENCES PERSON(Ssn)
);
/*---------- new entites-------------------------*/


create table if not exists CUSTOMER_PAYMENT
(	payID	CHAR(9) not null,
    CustID	CHAR(10) NOT NULL,
    PayStatID	CHAR(9) not null,
    orderCarID	CHAR(10) NOT NULL,
    primary key(payID),
    FOREIGN KEY(CustID) REFERENCES PERSON(Ssn),
    foreign key(PayStatID) REFERENCES PAYMENT_STATUS(PayStatusID),
    foreign key(orderCarID) references orderVehicle(OrderCar_ID ) on delete cascade on update cascade
);
create table if not exists PAYMENT_STATUS
(   PayStatusID	CHAR(9) not null,
    PayStartDate date,
    PayEndDate	date,
    PayDescription	varCHAR(30) ,
    primary key(PayStatusID)
);
create table if not exists CUSTOMER_PAYMENT
(	payID	CHAR(9) not null,
    CustID	CHAR(10) NOT NULL,
    PayStatID	CHAR(9) not null,
    orderCarID	CHAR(10) NOT NULL,
    primary key(payID),
    FOREIGN KEY(Cust_ID) REFERENCES PERSON(Ssn),
    foreign key(PayStatID) REFERENCES PAYMENT_STATUS(PayStatusID),
    foreign key(orderCarID) references orderVehicle(OrderCar_ID ) on delete cascade on update cascade
);

create table if not exists INSURANCE_POLICIES
(	Policy_ID CHAR(5) NOT NULL,	
	InsuredCar_ID	CHAR(10) NOT NULL,
	CompID char(5) NOT NULL,
    PolicyStartDate date,
    PolicyRenewalDate	date,
	MonthlyPayment int NOT NULL,
    primary key(Policy_ID),
    foreign key(InsuredCar_ID) references orderVehicle(OrderCar_ID ) on delete cascade on update cascade,
    foreign key(CompID) references INSURANCE_COMPANIES(CompaniesID )
);
create table if not exists INSURANCE_COMPANIES
( 	
	Discription varchar(30) not null,
	CompaniesID char(5) NOT NULL,
	primary key(CompaniesID)
);

create table if not exists CAR_lOANS
(	Loan_ID    CHAR(5) NOT NULL,	
	LoanCarID	CHAR(10) NOT NULL,
	LoanCompID   char(5) NOT NULL,
    LoanStartDate   date,
    LoanEndlDate	date,
	LoanMonthlyPayment int NOT NULL,
    primary key(Loan_ID),
    foreign key(LoanCarID) references orderVehicle(OrderCar_ID ) on delete cascade on update cascade,
    foreign key(LoanCompID) references FINANCE_COMPANIES(FinanceCompID )
);

create table if not exists FINANCE_COMPANIES
(
	FinanceCompID char(5) not null,
	Discription varchar(30) not null,
	primary key(FinanceCompID)
);









