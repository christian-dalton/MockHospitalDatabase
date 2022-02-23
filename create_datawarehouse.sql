--SCRIPT TO CREATE TABLES 
USE Mock_Healthcare; 
GO 

--CREATING DATA WAREHOUSE 
CREATE TABLE dwPatientDim( 
PatientID INT PRIMARY KEY, 
PatFName VARCHAR(25), 
PatLName VARCHAR(25), 
RecTimeStamp DATETIME 
); 
GO 
  
CREATE TABLE dwIncidentDim( 
IncidentID INT PRIMARY KEY, 
Incident VARCHAR(50), 
Response VARCHAR(50), 
RecTimeStamp DATETIME 
); 
GO 
CREATE TABLE dwDepAgg( 
DepartmentID INT PRIMARY KEY, 
NumEmp INT, 
NumRooms INT, 
TotalEvents INT, 
RecTimeStamp DATETIME 
); 
GO 
 
CREATE TABLE dwDateDim( 
DateID INT IDENTITY(1,1) PRIMARY KEY, 
RawDate DATE, 
DayOfTheWeek VARCHAR(9), 
MonthOfYear VARCHAR(9), 
QuarterOfYear VARCHAR(7), 
EventYear INT, 
RecTimeStamp DATETIME 
); 
GO 
 
CREATE TABLE dwEventFacts( 
VisitID INT PRIMARY KEY, 
PatientID INT REFERENCES dwPatientDim(PatientID), 
IncidentID INT REFERENCES dwIncidentDim(IncidentID), 
ROOM INT, 
DateID INT REFERENCES dwDateDim(DateID), 
DepartmentID INT REFERENCES dwDepAgg(DepartmentID), 
RecTimeStamp DATETIME 
); 
GO 
 


 
