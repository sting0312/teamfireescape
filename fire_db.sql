drop table fires_reported;
drop table fires_confirmed;


CREATE TABLE fires_reported (
    id serial Primary Key,
	Incident_Number int NOT NULL,
    Date date,
    Incident_Type varchar(255),
	Street_Number varchar(255),
	Street_Address varchar(255),
	Latitude float,
	Longitude float
   
);

CREATE TABLE fires_confirmed(
    id serial Primary Key,
	Incident_Number int NOT NULL,
    Date date,
    Incident_Type varchar(255),
	Street_Number varchar(255),
	Street_Address varchar(255),
	Latitude float,
	Longitude float
   
);
select * from fires_reported;
select * from fires_confirmed;