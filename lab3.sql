1)

 create table Passenger
( Passenger_no varchar(6),
  P_Name         varchar(20),
  Age         numeric,
  Address     varchar(30),
  Gender       char(1),
  Pincode      numeric(8),
  State        varchar(15),
  Concession   char(3),
  Mobile_no    varchar(10)
 
  ); 

 create table train_master
( Train_no     varchar(6),
  Train_Name       varchar(15),
  Train_src        varchar(5),
  Train_dest       varchar(5),
  Train_dep        Time,
  Train_arrival    Time

  ); 

  create table Station
  ( Station_code   varchar(5),
    Station_name   varchar(20),
    Metro          char(1)
   
  );    

  Queries:
  1.
   Passenger-->
  
insert into Passenger values ('P100','Megha',20,'Krithika ,Chettupuzha,TCR','F',680012,'Kerala','yes',8547463900); 

insert into Passenger values ('P101','Mohith',12,'Krithika ,Chettupuzha,TCR','M',680012,'Kerala','yes',8547465656); 
insert into Passenger values ('P102','Manoj',45,'Kandedath ,Rappal,TCR','M',680189,'Kerala','no',7047465900); 

insert into Passenger values ('P103','Siji',45,'Mangalappilly ,Cherai,EKM','F',684878,'Kerala','no',8547431200); 
insert into Passenger values ('P104','Maya',30,'Krishnakripa ,Ambalapuzha,ALPY','F',685012,'Kerala','no',8541233900); 
insert into Passenger values ('P105','rekha',28,'Mizhiyil ,Pangode,TVM','F',695012,'Kerala','yes',8547460800); 
insert into Passenger values ('P106','Neha',29,'Manjuvihar ,Harshnagar,Mumbai','F',680012,'Maharashtra','yes',8559463900); 
insert into Passenger values ('P107','Nivin',33,'Rithu,Madivala,Bangaluru','M',894512,'Karnataka','yes',8547466730); 
insert into Passenger values ('P108','Shivam',24,'Shanti,gandhi nagar,delhi','M',432602,'Delhi','no',7040063900); 
insert into Passenger values ('P109','Riya',24,'varsh ,Mohan nagar,Lucknow','F',990012,'UP','no',7077639001); 

select * from Passenger;

 Train master-->

 insert into train_master values('T200','Rajadhani','Delhi','TVM','08:05', '23:30');

  insert into train_master values('T201','Venad','KSD','TVM','08:05', '18:30');
  insert into train_master values('T202','Sabari','KNR','NGL','10:30', '20:00');
   insert into train_master values('T203','Netravathi','BNGLR','ALPY','09:05', '17:30');
  insert into train_master values('T204','Parasuram','CLT','TCR','07:00', '10:00');
  insert into train_master values('T205','Janasatabdi','TVM','CLT','06:00', '12:00');
  insert into train_master values('T206','Maveli','KYJ','TCR','20:05', '06:30');
  insert into train_master values('T207','Malabar','KLM','KNR','00:00', '05:30');
  insert into train_master values('T208','Kochuveli','TVM','ALPY','11:15', '15:00');
  insert into train_master values('T209','Chennaimail','CHN','KLM','08:00', '13:00');
 
SELECT * FROM train_master;

  Station-->

  insert into Station values('Delhi','New Delhi','Y');

  insert into Station values('KLM','Kollam','N');
  insert into Station values('TVM','Trivandrum','N');
  insert into Station values('CLT','Calicut','N');
  insert into Station values('ALPY','Alappey','N');
  insert into Station values('BNGLR','Bangaluru','Y');
  insert into Station values('TCR','Thrissur','N');
  insert into Station values('KNR','Kannur','N');
  insert into Station values('KYJ','Kayamkulam','N');
  insert into Station values('CHN','Chenai','Y');
    insert into Station values('DLI','Delhi','Y');


  select * from Station
  
 2.
  update Station set Station_name='Alappuzha' where Station_name='Alappey';

 3.
  delete from Passenger where Mobile_no like '70%';

 4.
 
  alter table train_master add train_type varchar(15) check (train_type in ('mail exp','passenger','superfast')); 

 5.

  insert into train_master values('5','bsl-pune expr','BSL','PUNE','08:00', '13:00','mail exp');
   insert into train_master values('11026','pune-bsl expr','PUNE','BSL','08:00', '13:00','mail exp');
   
   insert into train_master values('12117','Godavari exp','LTT','MMR','08:00', '13:00','superfast');
   insert into train_master values('12118','ltt-mmr expr','MMR','LTT','08:00', '13:00','superfast');
   
   insert into train_master values('13131','Koaa-anvt expr','KOAA','ANVT','08:00', '13:00','mail exp');
   insert into train_master values('15484','Sikim maha','DLI','APDJ','08:00', '13:00','mail exp');
   insert into train_master values('22101','ltt-mmrrajya','LTT','MMR','08:00', '13:00','superfast');
   insert into train_master values('22102','mmr-lttrajya','MMR','LTT','08:00', '13:00','superfast');
   insert into train_master values('51153','mumbai-bsl','CSTM','BSL','08:00', '13:00','superfast');
   insert into train_master values('51154','bsl-mumbai','BSL','CSTM','12:00','00:00','passenger');

 
    insert into Station values('MMR','Manmad Jn','N');

     insert into Station values('PUNE','Pune Jn','N');
      insert into Station values('LTT','Lokamanyatilak','N');
       insert into Station values('KOAA','Kolkata','N');
        insert into Station values('ANVT','anandvihar','N');
         insert into Station values('APDJ','alipur duar','N');
          insert into Station values('CSTM','Mumbai CST','N');
           insert into Station values('BSL','Bhusaval','N');
            insert into Station values('KSD','Kasargod','N');
               insert into Station values('NGL','Nagercoil','N');

   6.
   select Train_Name from train_master where Train_Name like '%pune%' or Train_name like '%mumbai%';

   7.
    select Train_name, (Train_src || Train_dest) as Sourcetodestination from train_master;  

   8.
    alter table Passenger add constraint myprimarykey primary key (Passenger_no);
    alter table train_master add constraint myprimarykey1 primary key (Train_no);
    alter table Station add constraint myprimarykey2 primary key (Station_code);

   9.
   alter table train_master add constraint myfkey foreign key (Train_src) references Station; 
   alter table train_master add constraint myfkey1 foreign key (Train_dest) references Station; 

   10.
      insert into train_master values('T1234','bsl-alappey','BSL','ALPY','14:00','02:00','passenger');
      select Train_name, Train_src from train_master,Station where Train_src=Station_code and Station_name='Bhusaval';

    11.
    select x.Train_name from train_master x, train_master y where x.Train_src= y.Train_dest and x.Train_dest= y.Train_src;  

    12.
    create table train_fare
    (train_no  varchar(10),
    from_station  varchar(10),
    to_station   varchar(10),
    distance_km  numeric(5),
    fare         numeric(5),
    no_of_days   int
   );

   alter table train_fare add constraint myfkey3 foreign key (train_no) references train_master; 
   alter table train_fare add constraint myfkey4 foreign key (from_station) references Station;
   alter table train_fare add constraint myfkey5 foreign key (to_station) references Station;

   alter table train_fare add primary key (train_no,distance_km);   

   13.
   select count(Train_no) from train_master where train_type='superfast';

   14.
    select train_type , count(train_no) from train_master group by train_type;
    
   15.
     select avg(fare) from train_fare where from_station='ltt' and to_station='mmr';

   16.
     select Train_name from train_master where Train_type='passenger' order by Train_no;

   17.
     select from_station, to_station from train_fare where fare= max(fare) order by train_no;
        
   18.
     select train_no  from train_fare where no_of_days>2;

   19.
     alter table train_master add date_of_commencement date; 

   20.
     select Train_name from train_master where date_of_commencement like '%2005';

   21.
     select t.train_name from train_master as t, train_master as s where t.date_of_commencement>s.date_of_commencement and s.train_no=11026;

   22.
     truncate table Passenger column Age;
     delete table Passenger column Gender;
  Truncate will delete all the entries from the table and space can be reused. Using delete we can delete a table but the space cannot be reused. 
 
      
