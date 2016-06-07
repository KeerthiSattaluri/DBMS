create table EMPLOYEE_DETAILS1(emp_id varchar(10),
			emp_name varchar(20),
			Street varchar(30),
			City   varchar(20),
			salary integer,
			primary key(emp_id));

create table SERVICE_MANAGEMNT1(service_id varchar(10) ,
				emp_id varchar(10) ,
				customer_id varchar(10), 
				service_name varchar(20),
				primary key(service_id),
				foreign key (emp_id) references EMPLOYEE_DETAILS1(emp_id));
				
create table EMP_SERVICE(emp_id varchar(20),
                         service_id varchar(20),
			foreign key (emp_id) references EMPLOYEE_DETAILS1(emp_id),
			foreign key (service_id) references SERVICE_MANAGEMENT1(service_id));
                           
                       
create table CUST_DETAILS1 (customer_id varchar(10),
			       customer_street varchar(20),
			       customer_city varchar(30),
			       phone_no varchar(20),
			       room_no varchar(10),
			       primary key (customer_id));

create table SERVICE_CUST(service_id varchar(20),
                          customer_id varchar(10),
      			foreign key (service_id) references SERVICE_MANAGEMENT1(service_id),
      			foreign key (customer_id) references CUST_DETAILS1(customer_id));
 

create table ROOM_DETAIL1( customer_id varchar(10),
		    room_no varchar(10),
		    check_in date,
		    check_out date,
		    no_of_days integer,
		    primary key (room_no), 
		    foreign key (customer_id) references CUST_DETAILS1(customer_id));

create table CUST_ROOM(customer_id varchar(10),
                       room_no varchar(10),
                     foreign key (customer_id) references CUST_DETAILS1(customer_id),
        	     foreign key (room_no) references ROOM_DETAIL1(room_no));

insert into EMPLOYEE_DETAILS1 values('13001','Preethi','Gandhi','Hyderabad',10000);
insert into EMPLOYEE_DETAILS1 values('13002','Madhavi','Abdul Kalaam','Malaysia',20000);
insert into EMPLOYEE_DETAILS1 values('13003','Anusha','MG road','Kerala',40000);
insert into EMPLOYEE_DETAILS1 values('13004','Manoj','A road','Delhi',80000);

insert into SERVICE_MANAGEMENT1 values('S101','13001','1','Sauna','Gryffindor');
insert into SERVICE_MANAGEMENT1 values('S202','13002','2','Yoga','Slytherin');
insert into SERVICE_MANAGEMENT1 values('S303','13003','3','Restaurant','Hufflepuff');
insert into SERVICE_MANAGEMENT1 values('S404','13004','4','Swimming','Ravenclaw');

insert into CUST_DETAILS1 values ('01','A road','Hyderabad',8096240044);
insert into CUST_DETAILS1 values ('02','MG road','Malaysia',9567922684);
insert into CUST_DETAILS1 values ('03','Gandhi','Delhi',9567892498);
insert into CUST_DETAILS1 values ('04','Abdul Kalaam','Bangalore',9848074375);
				
insert into ROOM_DETAIL1 values ('01','201','19-dec-2015','1-dec-2015',2);
insert into ROOM_DETAIL1 values ('02','207','20-feb-2015','20-may-2015',3);
insert into ROOM_DETAIL1 values ('03','408','30-oct-2015','10-dec-2015',4);
insert into ROOM_DETAIL1 values ('04','502','04-jan-2015','19-mar-2015',1);

insert into CUST_ROOM values ('01','201');
insert into SERVICE_CUST values ('S303','02');
insert into EMP_SERVICE values ('13002','S202');

select * from EMPLOYEE_DETAILS1;
select * from SERVICE_MANAGEMENT1;
select * from CUST_DETAILS1;
select * from ROOM_DETAIL1;
select * from CUST_ROOM;
select * from SERVICE_CUST;
select * from EMP_SERVICE;
