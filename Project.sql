USE Spa_database
CREATE TABLE Workers
( 
WorkerId VARCHAR (15)PRIMARY KEY,
Worker_name CHAR (50) Not null,
Telephone_number BIGINT Not null,
Working_hours VARCHAR (40)Not null
)

CREATE TABLE Rooms
(
SuiteId VARCHAR (20)PRIMARY KEY,
WorkerId VARCHAR (15) Not null,
FOREIGN KEY ( WorkerId)
REFERENCES Workers(WorkerId),
)

CREATE TABLE ServicesOffered
(
Service_name CHAR (50)Not null,
WorkerId VARCHAR (15)Not null,
Price INT Not null,
SuiteId VARCHAR (20)Not null,
FOREIGN KEY (WorkerId)
REFERENCES Workers(WorkerId)
)

CREATE TABLE Department_heads
(
Department_headId VARCHAR (30) PRIMARY KEY,
Department_headname VARCHAR (40)Not null,
SuiteId VARCHAR (20)Not null,
FOREIGN KEY(SuiteId)
REFERENCES Rooms(SuiteId),
)

CREATE TABLE Booking
(
ClientId VARCHAR (20) PRIMARY KEY,
Client_name CHAR (50) Not null,
SuiteId VARCHAR (20) Not null,
Service_name CHAR (50) Not null, 
WorkerId VARCHAR (15)Not null,
FOREIGN KEY (WorkerId)
REFERENCES Workers(WorkerId),
)

INSERT INTO Workers
VALUES 
('PA0020','James Wanjiku',0732472015,'8:00 AM-12:00 Pm'),
('PA0021','Rita Nyiha',0757642345,'8:00AM-12:00PM'),
('PA0022','Grace Nyawira',0765432456,'12:30PM-5:00PM'),
('PA0023','Paul Ng`ang`a',0789345678,'5:00PM-9:00PM'),
('PA0024','Hellen Wanjiku',0733883099,'5;00PM-9:00PM'),
('PA0025','Larry Mutungi',0753421657,'8:00AM-12:00PM'),
('PA0026','Rachael thuku',0723457698,'8:00AM-12:00PM'),
('PA0027','Timothy Awuor',0798543210,'8:00AM-12:00PM'),
('PA0028','Risper Waithera',0765385320,'8:00AM-12:00PM'),
('PA0029','Susan Anyango',0754379876,'8:00AM-12:00PM'),
('PA0030','Gladwell Muthoni',0749531087,'8:00AM-12:00PM'),
('PA0031','Joseph Muriuki',0776421009,'8:00AM-12:00PM'),
('PA0032','Samuel Omboso',0795432100,'5:00PM-9:00PM'),
('PA0033','Daniel Tim',070065874352,'5:00PM-9:00PM'),
('PA0034','Faith Yolanda',07110234567,'5:00PM-9:00PM'),
('PA0035','Dan Omwenga',0754901234,'5:00PM-9;00PM'),
('PA0036','Ezra Ruguru',0111098765,'5:00PM-9:00PM'),
('PA0037','Faith Nyanduso',0733366688,'5:00PM-9:00PM'),
('PA0038','Yusuf Omar',0187543587,'12:30PM-5:00PM'),
('PA0039','Jimmy Kariuki',0700886644,'12:30PM-5:00PM'),
('PA0040','Salome Mbithe',0731543768,'12:30PM-5:00PM'),
('PA0041','Florence Njeri',0751117623,'12:30PM-5:00PM'),
('PA0042','Ashley Ouma',0799222211,'12:30PM-5:00PM'),
('PA0043','Everlyne Atieno',0865432176,'12:30PM-5:00PM'),
('PA0044','Ivy Nyaboke',0643213468,'12:30PM-5:00PM')

INSERT INTO Rooms
VALUES
('621 A','PA0020'),
('622 B','PA0021'),
('622 A','PA0022'),
('624 B','PA0023'),
('634 A','PA0024'),
('636 A','PA0025'),
('639 A','PA0026'),
('636 B','PA0027'),
('638 A','PA0028'),
('635 A','PA0029'),
('623 B','PA0030'),
('624 A','PA0031'),
('625 A','PA0032'),
('630 A','PA0033'),
('631 B','PA0034'),
('633 A','PA0035'),
('640 A','PA0036'),
('626 A','PA0037'),
('627 A','PA0038'),
('629 B','PA0039'),
('628 A','PA0040'),
('641 A','PA0041'),
('642 B','PA0042'),
('620 A','PA0043'),
('633 B','PA0044')

INSERT INTO ServicesOffered
VALUES
('waxing','PA0020',20000,'621 A'),
('sauna','PA0021',35000,'622 B'),
('waxing','PA0022',20000,'622 A'),
('steam room','PA0023',15000,'624 B'),
('whirlpool','PA0024',45000,'634 A'),
('bodywraps','PA0025',25000,'636 A'),
('claymasks','PA0026',10000,'639 A'),
('reflexology','PA0027',50000,'636 B'),
('manicure and pedicure','PA0028',1000,'638 A'),
('massage','PA0029',2000,'635 A'),
('facials','PA0030',2500,'623 B'),
('hydrafacial','PA0031',5000,'624 A'),
('ultimate ritual','PA0032',7000,'625 A'),
('blow out package','PA0033',1500,'630A'),
('energy works','PA0034',4000,'631 B'),
('hair styling','PA0035',400,'633 A'),
('hair creme bathe','PA0036',1000,'640 A'),
('herbal paultices','PA0037',3500,'626 A'),
('body splashes','PA0038',5900,'627 A'),
('dry brushing','PA0039',7000,'629 B'),
('body painting','PA0040',10000,'628 A'),
('Reiki','PA0041',15000,'641 A'),
('esthetics','PA0042',20000,'642 A'),
('eyebrows and eyelashes','PA0043',500,'620 A'),
('aromatherapy','PA0044',5000,'633 B')

INSERT INTO Department_heads
VALUES
('JR1120','Charles Orengo','624 A'),
('JR1121','Duncan Deriv','625 A'),
('JR1122','Lucy Otieno','630 A'),
('JR1123','Sally Felicia','631 B'),
('JR1124','Christine Nungari','633 A'),
('JR1125','Patience Mwaura','640 A'),
('JR1126','Arnold Nyatichi','626 A'),
('JR1127','Boniface Kanyi','627 A'),
('JR1128','Gloria Hannah','629 B'),
('JR1129','Orengo Hassan','628 A'),
('JR1130','Dennis Gituku','641 A'),
('JR1131','Fiona Njeri','642 B'),
('JR1132','Atiti yusufu','620 A'),
('JR1133','Reyna Godang','633 B'),
('JR1134','Harrison Otis','621 A'),
('JR1135','Veronica Mwende','622 B'),
('JR1136','Kahush Amara','622 A'),
('JR1137','Simon Ochada','624 B'),
('JR1138','Ian Paul','634 A'),
('JR1139','Oren Jack','636 A'),
('JR1140','Fabian Justus','639 A'),
('JR1141','Greta Kiende','636 B'),
('JR1142','Lilian Mwende','638 A'),
('JR1143','Lenny Omondi','635 A'),
('JR1144','Risper Nyambura','623 B')

INSERT INTO Booking
VALUES
('CO1220','Simi Erica','621 A','waxing','PA0020'),
('CO1221','Hillary Baraka','622 B','sauna','PA0021'),
('CO1222','Otundo Otis','622 A','waxing','PA0022'),
('C01123','Baraka Prince','622 A','waxing','PA0022'),
('CO1124','Okoth Brenda','633 B','aromatherapy','PA0044'),
('CO1125','Martin Kamau','622 B','sauna','PA0021'),
('C01126','Sam Henry','629 B','dry brushing','PA0039'),
('CO1127','Lenny Maina','623 B','facials','PA0030'),
('CO1128','Patrick Mwomboka','624 A','hydrafacial','PA0031'),
('CO1129','Vivian Diana','636 A','bodywraps','PA0025'),
('CO1130','Mitchelle Atieno','639 A','claymasks','PA0026'),
('CO1131','Duncan Mwongeli','640 A','hair creme bathe','PA0036'),
('CO1132','Fred Juma','626 A','herbal paultices','PA0037'),
('CO1133','Rashford Onduso','629 B','dry brushing','PA0039'),
('CO1134','Walter Chris','641 A','reiki','PA0041'),
('CO1135','Glow Faith','642 A','esthetics','PA0042'),
('CO1136','Glasseta Njeri','631 B','energy works','PA0034'),
('CO1137','Marion Mureithi','625 A','ultimate ritual','PA0032'),
('CO1138','Agatha Wanjiku','630 A','blow out package','PA0033'),
('CO1139','Christine Kabungo','635 A','massage','PA0029'),
('CO1140','Hellen Atieno','638 A','manicure and pedicure','PA0028'),
('CO1141','Kira Sheryl','622 A','waxing','PA0022'),
('CO1142','Tessa Nungari','623 B','facials','PA0030'),
('CO1143','Jack Mwatsuma','638 A','manicure and pedicure','PA0028'),
('CO1144','Whitney Olivia','630 A','blow out package','PA0033')

/* This query gives all workers who work from 8:00 AM-12:00PM*/
SELECT 
      WorkerId,Working_hours 
FROM 
    Workers
WHERE 
     Working_hours = '8:00AM-12:00PM'

/* This query gives the Department_headId and which suite they respectively supervise*/
SELECT
      Department_headId,SuiteId
FROM
    Department_heads

/*This query gives the service offerred in the spa that are less than 5000*/
SELECT
     Service_name,price
FROM
    ServicesOffered
WHERE
     price<5000

/*This query gives the service offered in the spa that are more than 10000*/
SELECT
      Service_name,price
FROM 
    ServicesOffered
WHERE
     price>10000

/*This query gives the WorkerId and which suite they are under*/
SELECT
     WorkerId,SuiteId
FROM
    Rooms

/*This query gives the suites that are booked and the client that have booked them*/
SELECT 
      SuiteId,ClientId,Client_name
FROM
    Booking

/*This query gives the service offered and the workers who offer those services*/
SELECT 
      Service_name,WorkerId
FROM 
    Servicesoffered

/*This query gives the SuiteId and the service offered*/
SELECT
      SuiteId,Service_name
FROM
    ServicesOffered

/*This query gives workers who are booked and the suite booked*/
SELECT 
      WorkerId,SuiteId
FROM
    Booking

/*This query gives the clients who have booked services less than 3000*/
SELECT 
      ClientId,Client_name,price
FROM
    Booking,Service_offered
WHERE 
     price<3000

/*This query deletes waxing from the services offered*/
DELETE FROM 
           Servicesoffered
WHERE
     Service_name='waxing'










           


